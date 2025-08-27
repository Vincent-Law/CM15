-- FIXED init.lua with proper weapon handling and no tool/physgun for non-admins

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Network strings
util.AddNetworkString(CM15_NET.OpenTeamMenu)
util.AddNetworkString(CM15_NET.PickTeam)
util.AddNetworkString(CM15_NET.OpenRoleMenu)
util.AddNetworkString(CM15_NET.PickRole)
util.AddNetworkString(CM15_NET.SyncSlots)
util.AddNetworkString(CM15_NET.BackToPrev)

-- Round state
local RoundState = ROUND_WAITING
local RoundEndTime = 0

-- Slot tracker for current round
local SlotTracker = {
  Humans = {
    Marines = {},
    Categories = {}
  },
  Aliens = {}
}

-- Initialize alien slots safely
local function InitializeAlienSlots()
  SlotTracker.Aliens = {}
  
  -- Check if CM15_ROLES exists and has Aliens table
  if CM15_ROLES and CM15_ROLES.Aliens then
    -- Initialize each alien role if it exists
    for roleId, roleData in pairs(CM15_ROLES.Aliens) do
      if roleData and roleData.slots then
        SlotTracker.Aliens[roleId] = { 
          taken = 0, 
          limit = roleData.slots 
        }
        print("[CM15] Initialized alien role: " .. roleId .. " with " .. tostring(roleData.slots) .. " slots")
      end
    end
  else
    -- Fallback if shared.lua didn't load properly
    print("[CM15] Warning: CM15_ROLES.Aliens not found, using fallback alien roles")
    SlotTracker.Aliens = {
      Queen = { taken = 0, limit = 1 },
      Praetorian = { taken = 0, limit = 2 },
      Warrior = { taken = 0, limit = 4 },
      Drone = { taken = 0, limit = 6 },
      Runner = { taken = 0, limit = CM15_UNLIMITED or -1 }
    }
  end
end

-- Store Alien NPCs and Controllers for management
local AlienNPCs = {}
local AlienControllers = {}

-- Admin system
local CM15_ADMINS = {
    ["STEAM_0:0:19948154"] = true,  -- Your Steam ID
}

-- Check if player is admin
local function IsAdmin(ply)
    if not IsValid(ply) then return false end
    return ply:IsAdmin() or ply:IsSuperAdmin() or CM15_ADMINS[ply:SteamID()]
end

-- ===== SLOT MANAGEMENT =====
local function ResetHumanSlots()
  SlotTracker.Humans.Marines = {}
  if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Marines then
    for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
      SlotTracker.Humans.Marines[squad] = {}
      for role, limit in pairs(CM15_ROLES.Humans.Marines.perSquad) do
        SlotTracker.Humans.Marines[squad][role] = { taken = 0, limit = limit }
      end
    end
  end
  
  SlotTracker.Humans.Categories = {
    Survivors = {},
    Command = {}
  }
  
  if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Survivors then
    SlotTracker.Humans.Categories.Survivors.Survivor = { 
      taken = 0, 
      limit = CM15_ROLES.Humans.Survivors.roles[1].slots 
    }
  end
  
  if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Command then
    for _, r in ipairs(CM15_ROLES.Humans.Command.roles) do
      SlotTracker.Humans.Categories.Command[r.id] = { taken = 0, limit = r.slots }
    end
  end
end

local function ResetAlienSlots()
  InitializeAlienSlots()
end

local function EnsureSlots()
  if not SlotTracker or not SlotTracker.Humans or not SlotTracker.Humans.Marines or not SlotTracker.Aliens then
    ResetHumanSlots()
    ResetAlienSlots()
  end
end

local function GetOrInitSurvivor()
  EnsureSlots()
  SlotTracker.Humans.Categories = SlotTracker.Humans.Categories or {}
  local cats = SlotTracker.Humans.Categories
  cats.Survivors = cats.Survivors or {}
  local sv = cats.Survivors.Survivor
  if not sv then
    local limit = (CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Survivors and CM15_ROLES.Humans.Survivors.roles[1].slots) or CM15_UNLIMITED
    sv = { taken = 0, limit = limit }
    cats.Survivors.Survivor = sv
  end
  return sv
end

local function GetOrInitCommand(roleId)
  EnsureSlots()
  SlotTracker.Humans.Categories = SlotTracker.Humans.Categories or {}
  local cats = SlotTracker.Humans.Categories
  cats.Command = cats.Command or {}
  local sv = cats.Command[roleId]
  if not sv then
    local limit = 1
    if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Command then
      for _, r in ipairs(CM15_ROLES.Humans.Command.roles) do
        if r.id == roleId then limit = r.slots or limit break end
      end
    end
    sv = { taken = 0, limit = limit }
    cats.Command[roleId] = sv
  end
  return sv
end

local function GetOrInitMarine(squad, role)
  EnsureSlots()
  SlotTracker.Humans.Marines[squad] = SlotTracker.Humans.Marines[squad] or {}
  local sv = SlotTracker.Humans.Marines[squad][role]
  if not sv then
    local limit = (CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Marines and CM15_ROLES.Humans.Marines.perSquad[role]) or 0
    sv = { taken = 0, limit = limit }
    SlotTracker.Humans.Marines[squad][role] = sv
  end
  return sv
end

local function BroadcastSlots(ply)
  net.Start(CM15_NET.SyncSlots)
    net.WriteTable(SlotTracker)
  if IsValid(ply) then net.Send(ply) else net.Broadcast() end
end

-- Helper function to check if role slot is available
local function IsAlienSlotAvailable(roleId)
  -- Check if any player already has this role as an NPC
  for _, alienData in pairs(AlienNPCs) do
    if IsValid(alienData.npc) and alienData.role == roleId then
      -- For limited slots, check the count
      local roleData = CM15_ROLES and CM15_ROLES.Aliens and CM15_ROLES.Aliens[roleId]
      if roleData and roleData.slots ~= CM15_UNLIMITED then
        local count = 0
        for _, data in pairs(AlienNPCs) do
          if IsValid(data.npc) and data.role == roleId then
            count = count + 1
          end
        end
        if count >= roleData.slots then
          return false
        end
      end
    end
  end
  return true
end

-- ===== PLAYER MANAGEMENT =====
local function ClearPlayerRole(ply)
  ply:SetNWString("CM15_Role", "")
  ply:SetNWString("CM15_Squad", "")
  ply:SetNWBool("CM15_LimitedRole", false)
  
  -- Stop controlling any NPCs using VJ Base controller
  local steamId = ply:SteamID()
  if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
    AlienControllers[steamId]:Remove()
    AlienControllers[steamId] = nil
  end
end

local function SetPlayerRole(ply, roleId, opts)
  opts = opts or {}
  ply:SetNWString("CM15_Role", roleId or "")
  ply:SetNWString("CM15_Squad", opts.squad or "")
  ply:SetNWBool("CM15_LimitedRole", opts.limited or false)
end

-- Fallback alien role data if shared.lua isn't loaded properly
local FALLBACK_ALIEN_ROLES = {
  Queen = { name = "Queen", npc = "npc_vj_avp_xeno_queen", slots = 1 },
  Praetorian = { name = "Praetorian", npc = "npc_vj_avp_xeno_praetorian", slots = 2 },
  Ravager = { name = "Ravager", npc = "npc_vj_avp_xeno_ravager", slots = 2 },
  Carrier = { name = "Carrier", npc = "npc_vj_avp_xeno_carrier", slots = 3 },
  Warrior = { name = "Warrior", npc = "npc_vj_avp_xeno_warrior", slots = 4 },
  Drone = { name = "Drone", npc = "npc_vj_avp_xeno_drone", slots = 6 },
  Runner = { name = "Runner", npc = "npc_vj_avp_xeno_runner", slots = -1 },
  Facehugger = { name = "Facehugger", npc = "npc_vj_avp_xeno_facehugger", slots = -1 }
}

-- ===== PROPER VJ BASE ALIEN SPAWNING SYSTEM =====
local function SpawnAlienForPlayer(ply, roleId)
  local steamId = ply:SteamID()
  
  -- Try to get role data from CM15_ROLES first, fallback if needed
  local roleData = nil
  if CM15_ROLES and CM15_ROLES.Aliens and CM15_ROLES.Aliens[roleId] then
    roleData = CM15_ROLES.Aliens[roleId]
  else
    print("[CM15] Warning: Using fallback data for role " .. roleId)
    roleData = FALLBACK_ALIEN_ROLES[roleId]
  end
  
  if not roleData then
    ply:ChatPrint("Error: Invalid alien role: " .. tostring(roleId))
    return false
  end
  
  -- Clear any existing alien for this player
  if AlienNPCs[steamId] then
    local oldData = AlienNPCs[steamId]
    if IsValid(oldData.npc) then
      oldData.npc:Remove()
    end
  end
  
  -- Clear any existing controller
  if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
    AlienControllers[steamId]:Remove()
    AlienControllers[steamId] = nil
  end
  
  -- Find a good spawn position
  local spawnPos = ply:GetPos()
  local tr = util.TraceLine({
    start = spawnPos + Vector(0, 0, 100),
    endpos = spawnPos + Vector(0, 0, -500),
    filter = ply,
    mask = MASK_SOLID_BRUSHONLY
  })
  
  if tr.Hit then
    spawnPos = tr.HitPos + Vector(0, 0, 10)
  end
  
  -- Spawn the VJ Base Alien NPC
  local alien = ents.Create(roleData.npc)
  if not IsValid(alien) then
    ply:ChatPrint("Error: Could not spawn " .. roleData.name .. " NPC. Make sure VJ Base AVP addon is installed.")
    return false
  end
  
  alien:SetPos(spawnPos)
  alien:SetAngles(ply:EyeAngles())
  alien:Spawn()
  alien:Activate()
  
  -- Set Alien properties
  alien:SetCreator(ply)
  
  -- Store Alien data
  AlienNPCs[steamId] = {
    npc = alien,
    player = ply,
    role = roleId,
    spawnTime = CurTime()
  }
  
  -- Create VJ Base Controller entity
  timer.Simple(0.5, function()
    if IsValid(ply) and IsValid(alien) then
      -- Create the VJ Base controller entity
      local controller = ents.Create("obj_vj_controller")
      if IsValid(controller) then
        controller:SetPos(ply:GetPos())
        controller:SetAngles(ply:GetAngles())
        controller:Spawn()
        controller:Activate()
        
        -- Set the controller properties
        controller.VJCE_Player = ply
        controller:SetControlledNPC(alien)
        controller:StartControlling()
        
        -- Store the controller
        AlienControllers[steamId] = controller
        
        -- Move player to spectator mode
        ply:StripWeapons()
        ply:SetTeam(TEAM_ALIENS)
        ply:Spectate(OBS_MODE_CHASE)
        ply:SpectateEntity(controller)
        ply:SetMoveType(MOVETYPE_OBSERVER)
        
        -- Set player properties for VJ Base
        ply.VJ_IsControllingNPC = true
        ply.VJ_TheController = controller
        ply.VJ_TheControlledNPC = alien
        
        ply:ChatPrint("You are now controlling the " .. roleData.name .. "!")
        
        -- Role-specific instructions
        if roleId == "Queen" then
          ply:ChatPrint("=== QUEEN CONTROLS ===")
          ply:ChatPrint("LMB: Heavy Attack | RMB: Spit Attack")
          ply:ChatPrint("Shift: Charge Attack | Space: Toggle Egg Sack")
          ply:ChatPrint("F: Toggle Vision Mode | H: Toggle third/first person")
        elseif roleId == "Praetorian" then
          ply:ChatPrint("=== PRAETORIAN CONTROLS ===")
          ply:ChatPrint("LMB: Claw Attack | RMB: Tail Attack")
          ply:ChatPrint("Shift: Charge | F: Toggle Vision")
        elseif roleId == "Warrior" then
          ply:ChatPrint("=== WARRIOR CONTROLS ===")
          ply:ChatPrint("LMB: Claw Attack | RMB: Tail Attack")
          ply:ChatPrint("F: Toggle Vision Mode")
        elseif roleId == "Drone" then
          ply:ChatPrint("=== DRONE CONTROLS ===")
          ply:ChatPrint("LMB: Claw Attack | RMB: Tail Attack")
          ply:ChatPrint("F: Toggle Vision Mode")
        elseif roleId == "Facehugger" then
          ply:ChatPrint("=== FACEHUGGER CONTROLS ===")
          ply:ChatPrint("LMB: Leap Attack | RMB: Attach to Face")
          ply:ChatPrint("F: Toggle Vision Mode")
        elseif roleId == "Carrier" then
          ply:ChatPrint("=== CARRIER CONTROLS ===")
          ply:ChatPrint("LMB: Claw Attack | RMB: Spawn Facehugger")
          ply:ChatPrint("Shift: Charge | F: Toggle Vision")
        else -- Runner
          ply:ChatPrint("=== RUNNER CONTROLS ===")
          ply:ChatPrint("LMB: Bite Attack | RMB: Pounce")
          ply:ChatPrint("F: Toggle Vision Mode")
        end
        ply:ChatPrint("Use WASD to move, mouse to look around")
      else
        ply:ChatPrint("Error: Could not create controller entity.")
      end
    end
  end)
  
  return true
end

local function GiveHumanLoadout(ply, roleId)
    ply:StripWeapons()
    
    -- Special admin role with all tools
    if roleId == "Admin" or roleId == "admin" then
        -- Only give tools if player is actually an admin
        if IsAdmin(ply) then
            ply:Give("weapon_physgun")
            ply:Give("gmod_tool")  -- Correct weapon name
        end
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_smartgun")
        ply:Give("weapon_vj_avp_scopedrifle")
        ply:Give("weapon_vj_avp_flamethrower")
        ply:Give("weapon_vj_avp_shotgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:GiveAmmo(999, "SMG1")
        ply:GiveAmmo(999, "Pistol")
        ply:GiveAmmo(999, "AR2")
        ply:GiveAmmo(999, "BuckShot")
        ply:GiveAmmo(999, "SniperRound")
        ply:GiveAmmo(999, "Uranium")
        ply:GiveAmmo(99, "SMG1_Grenade")
        ply:ChatPrint("=== ADMIN LOADOUT ===")
        if IsAdmin(ply) then
            ply:ChatPrint("You have all weapons and building tools!")
        else
            ply:ChatPrint("You have all weapons!")
        end
        return
    end
    
    -- Give role-specific weapons based on CM-SS13 wiki
    if roleId == "Rifleman" then
        -- Standard Marine
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "SquadLead" then
        -- Squad Leader - gets pulse rifle with underslung grenade launcher
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(300, "SMG1")
        ply:GiveAmmo(10, "SMG1_Grenade")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "FireteamLeader" then
        -- Fireteam Leader - similar to squad lead but less grenades
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(5, "SMG1_Grenade")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "WeaponSpecialist" then
        -- Specialist - gets choice of special weapons
        local specWeapon = math.random(1, 3)
        if specWeapon == 1 then
            ply:Give("weapon_vj_avp_scopedrifle") -- Sniper
            ply:GiveAmmo(30, "SniperRound")
        elseif specWeapon == 2 then
            ply:Give("weapon_vj_avp_flamethrower") -- Flamethrower
            ply:GiveAmmo(500, "Uranium")
        else
            ply:Give("weapon_vj_avp_shotgun") -- Shotgun
            ply:GiveAmmo(40, "BuckShot")
        end
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "SmartGunner" then
        -- Smart Gunner - gets the M56 Smartgun
        ply:Give("weapon_vj_avp_smartgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(1000, "AR2")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "HospitalCorpsman" or roleId == "Medic" then
        -- Medic - light weapons and medical supplies
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(60, "Pistol")
        
    elseif roleId == "CombatTechnician" or roleId == "Engineer" then
        -- Engineer - NO TOOLS FOR REGULAR ENGINEERS
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "Survivor" then
        -- Survivor - random civilian weapons
        local survWeapon = math.random(1, 3)
        if survWeapon == 1 then
            ply:Give("weapon_vj_avp_shotgun")
            ply:GiveAmmo(16, "BuckShot")
        elseif survWeapon == 2 then
            ply:Give("weapon_vj_avp_pistol")
            ply:GiveAmmo(45, "Pistol")
        else
            ply:Give("weapon_crowbar")
        end
        
    elseif roleId == "CommandingOfficer" or roleId == "ExecutiveOfficer" then
        -- Officers - get good equipment
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_scopedrifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(300, "SMG1")
        ply:GiveAmmo(10, "SMG1_Grenade")
        ply:GiveAmmo(18, "SniperRound")
        ply:GiveAmmo(60, "Pistol")
        
    elseif roleId == "StaffOfficer" then
        -- Staff Officer - moderate equipment
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "SeniorEnlisted" then
        -- Senior Enlisted - experienced marine gear
        ply:Give("weapon_vj_avp_shotgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(32, "BuckShot")
        ply:GiveAmmo(45, "Pistol")
        
    else
        -- Default loadout for any undefined roles
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(45, "Pistol")
    end
    
    -- Give everyone a flashlight
    ply:AllowFlashlight(true)
end

local function GiveAlienLoadout(ply, roleId)
  -- All alien roles now spawn as VJ Base NPCs
  return SpawnAlienForPlayer(ply, roleId)
end

-- ===== GAMEMODE FUNCTIONS =====
function GM:PlayerInitialSpawn(ply)
  EnsureSlots()
  ply:SetTeam(TEAM_SPECTATOR)
  ClearPlayerRole(ply)
  ply:Spectate(OBS_MODE_ROAMING)
  timer.Simple(0.2, function() 
    if IsValid(ply) then
      net.Start(CM15_NET.OpenTeamMenu) 
      net.Send(ply)
      BroadcastSlots(ply)
    end 
  end)
end

function GM:PlayerSpawn(ply)
  -- Don't spawn players who are controlling NPCs
  if ply.VJ_IsControllingNPC then
    return
  end
  
  player_manager.SetPlayerClass(ply, "player_default")
  ply:SetupHands()
  ply:AllowFlashlight(true)

  if ply:Team() == TEAM_SPECTATOR then
    ply:StripWeapons()
    ply:Spectate(OBS_MODE_ROAMING)
    return
  end

  ply:UnSpectate()

  local roleId = ply:GetNWString("CM15_Role","")
  
  if ply:Team() == TEAM_HUMANS then
    GiveHumanLoadout(ply, roleId)
  elseif ply:Team() == TEAM_ALIENS then
    local success = GiveAlienLoadout(ply, roleId)
    if not success then
      -- Alien spawn failed, revert to spectator
      ply:SetTeam(TEAM_SPECTATOR)
      ply:Spectate(OBS_MODE_ROAMING)
      ply:ChatPrint("Failed to spawn " .. roleId .. ". Please try again.")
    end
  end
end

function GM:PlayerShouldTakeDamage(victim, attacker)
  -- Players controlling NPCs shouldn't take damage
  if victim.VJ_IsControllingNPC then
    return false
  end
  return true
end

function GM:ScoreboardShow(ply) return true end -- Enable F1 menu
function GM:ScoreboardHide(ply) return true end

-- ===== DEATH & RESPAWN =====
hook.Add("EntityRemoved", "CM15_AlienRemoved", function(ent)
  -- Check if an Alien NPC was removed
  for steamID, alienData in pairs(AlienNPCs) do
    if alienData.npc == ent then
      local ply = alienData.player
      local roleId = alienData.role
      
      -- Clean up controller
      if AlienControllers[steamID] and IsValid(AlienControllers[steamID]) then
        AlienControllers[steamID]:Remove()
        AlienControllers[steamID] = nil
      end
      
      if IsValid(ply) then
        -- Reset player properties
        ply.VJ_IsControllingNPC = false
        ply.VJ_TheController = nil
        ply.VJ_TheControlledNPC = nil
        
        -- Player's alien died, handle respawn
        ply:SetTeam(TEAM_SPECTATOR)
        ply:Spectate(OBS_MODE_ROAMING)
        
        local limited = ply:GetNWBool("CM15_LimitedRole", false)
        local roleName = (CM15_ROLES and CM15_ROLES.Aliens and CM15_ROLES.Aliens[roleId] and CM15_ROLES.Aliens[roleId].name) or roleId
        
        if limited then
          ply:SetNWBool("CM15_LockedOut", true)
          ply:ChatPrint("Your " .. roleName .. " has been destroyed. You cannot respawn as this caste this round.")
        else
          ply:SetNWBool("CM15_PendingReinforce", true)
          ply:ChatPrint("Your " .. roleName .. " has been destroyed. You will respawn in 30 seconds.")
        end
      end
      
      AlienNPCs[steamID] = nil
      break
    end
  end
  
  -- Also check if a controller was removed
  for steamID, controller in pairs(AlienControllers) do
    if controller == ent then
      AlienControllers[steamID] = nil
      break
    end
  end
end)

hook.Add("PlayerDeath", "CM15_DeathHandling", function(ply, weapon, killer)
  -- Regular player death handling
  if not ply.VJ_IsControllingNPC then
    local limited = ply:GetNWBool("CM15_LimitedRole", false)
    ply:SetTeam(TEAM_SPECTATOR)
    ply:StripWeapons()
    ply:Spectate(OBS_MODE_ROAMING)
    
    if limited then
      ply:SetNWBool("CM15_LockedOut", true)
    else
      ply:SetNWBool("CM15_PendingReinforce", true)
    end
  end
end)

-- Network receivers
net.Receive(CM15_NET.PickTeam, function(len, ply)
  EnsureSlots()
  if RoundState == ROUND_ENDED then return end
  local t = net.ReadInt(8)
  if t ~= TEAM_HUMANS and t ~= TEAM_ALIENS then return end
  if ply:GetNWString("CM15_Role","") ~= "" then return end

  ply:SetTeam(t)
  ply:SetNWInt("CM15_LastTeam", t)
  ply:ChatPrint("Team selected: " .. team.GetName(t))
  net.Start(CM15_NET.OpenRoleMenu) 
  net.WriteInt(t, 8) 
  net.Send(ply)
end)

net.Receive(CM15_NET.PickRole, function(len, ply)
  EnsureSlots()
  if RoundState == ROUND_ENDED then return end
  if ply:GetNWString("CM15_Role","") ~= "" then return end

  local teamId = net.ReadInt(8)
  local roleId = net.ReadString()
  local meta = net.ReadTable()

  if teamId ~= ply:Team() then return end

  local limited = false
  local ok = false

  if teamId == TEAM_ALIENS then
    -- Check if this alien role is available
    local roleData = (CM15_ROLES and CM15_ROLES.Aliens and CM15_ROLES.Aliens[roleId]) or FALLBACK_ALIEN_ROLES[roleId]
    if not roleData then 
      ply:ChatPrint("Invalid alien role.")
      return 
    end
    
    local bucket = SlotTracker.Aliens[roleId]
    if not bucket then 
      -- Initialize if missing
      bucket = { taken = 0, limit = roleData.slots }
      SlotTracker.Aliens[roleId] = bucket
    end
    
    if bucket.limit == CM15_UNLIMITED or bucket.limit == -1 or bucket.taken < bucket.limit then
      -- Check actual NPC count for safety
      local actualCount = 0
      for _, alienData in pairs(AlienNPCs) do
        if IsValid(alienData.npc) and alienData.role == roleId then
          actualCount = actualCount + 1
        end
      end
      
      if bucket.limit == CM15_UNLIMITED or bucket.limit == -1 or actualCount < bucket.limit then
        bucket.taken = bucket.taken + 1
        ok = true
        limited = (bucket.limit ~= CM15_UNLIMITED and bucket.limit ~= -1)
      else
        ply:ChatPrint("All " .. roleData.name .. " slots are taken!")
      end
    else
      ply:ChatPrint("All " .. roleData.name .. " slots are taken!")
    end
  elseif teamId == TEAM_HUMANS then
    -- Human role handling (unchanged)
    if meta and meta.category == "Marines" then
      local squad = meta.squad or ""
      local role = meta.role or ""
      local sv = GetOrInitMarine(squad, role)
      if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
        SetPlayerRole(ply, role, { squad = squad, limited = limited })
      end
    elseif meta and meta.category == "Command" then
      local sv = GetOrInitCommand(roleId)
      if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
        SetPlayerRole(ply, roleId, { limited = limited })
      end
    elseif meta and meta.category == "Survivors" then
      local sv = GetOrInitSurvivor()
      if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
        SetPlayerRole(ply, "Survivor", { limited = limited })
      end
    end
  end

  if not ok then
    ply:ChatPrint("That role is full.")
    BroadcastSlots(ply)
    return
  end

  if teamId == TEAM_ALIENS then
    SetPlayerRole(ply, roleId, { limited = limited })
  end

  BroadcastSlots()
  ply:Spawn()
end)

-- Console commands for testing
concommand.Add("cm15_spawn_testdummy", function(ply, cmd, args)
  if not IsValid(ply) then return end
  
  local tr = ply:GetEyeTrace()
  local dummy = ents.Create("npc_citizen")
  dummy:SetPos(tr.HitPos + Vector(0, 0, 10))
  dummy:SetAngles(Angle(0, 0, 0))
  dummy:Spawn()
  dummy:SetMaxHealth(500)
  dummy:SetHealth(500)
  dummy:SetNPCState(NPC_STATE_IDLE)
  
  ply:ChatPrint("Test dummy spawned with 500 HP! Attack it to test damage.")
end)

concommand.Add("cm15_stop_controlling", function(ply, cmd, args)
  if not IsValid(ply) then return end
  
  local steamId = ply:SteamID()
  
  -- Clean up VJ Base controller
  if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
    AlienControllers[steamId]:Remove()
    AlienControllers[steamId] = nil
    
    -- Reset player properties
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil
    ply.VJ_TheControlledNPC = nil
    
    ply:SetTeam(TEAM_SPECTATOR)
    ply:Spectate(OBS_MODE_ROAMING)
    ply:ChatPrint("Stopped controlling alien.")
  else
    ply:ChatPrint("You are not controlling an alien.")
  end
end)

concommand.Add("cm15_debug_alien", function(ply, cmd, args)
  if not IsValid(ply) then return end
  
  local steamId = ply:SteamID()
  
  print("=== ALIEN DEBUG INFO ===")
  print("Player:", ply:Nick(), steamId)
  print("VJ_IsControllingNPC:", ply.VJ_IsControllingNPC)
  print("VJ_TheController:", ply.VJ_TheController)
  print("VJ_TheControlledNPC:", ply.VJ_TheControlledNPC)
  
  if AlienNPCs[steamId] then
    local data = AlienNPCs[steamId]
    print("Alien Role:", data.role)
    print("Alien NPC:", data.npc)
    print("Alien Valid:", IsValid(data.npc))
  else
    print("No Alien NPC data")
  end
  
  if AlienControllers[steamId] then
    print("Controller:", AlienControllers[steamId])
    print("Controller Valid:", IsValid(AlienControllers[steamId]))
  else
    print("No Controller data")
  end
  
  -- Print available roles
  print("=== AVAILABLE ALIEN ROLES ===")
  if CM15_ROLES and CM15_ROLES.Aliens then
    for roleId, roleData in pairs(CM15_ROLES.Aliens) do
      print("- " .. roleId .. ": " .. tostring(roleData.slots) .. " slots")
    end
  else
    print("CM15_ROLES.Aliens not found, using fallback")
    for roleId, roleData in pairs(FALLBACK_ALIEN_ROLES) do
      print("- " .. roleId .. ": " .. tostring(roleData.slots) .. " slots")
    end
  end
  
  ply:ChatPrint("Debug info printed to console")
end)

-- Clean up disconnected players
hook.Add("PlayerDisconnected", "CM15_CleanupAliens", function(ply)
  local steamId = ply:SteamID()
  
  -- Clean up Alien NPC
  if AlienNPCs[steamId] then
    local alienData = AlienNPCs[steamId]
    if IsValid(alienData.npc) then
      alienData.npc:Remove()
    end
    AlienNPCs[steamId] = nil
  end
  
  -- Clean up Controller
  if AlienControllers[steamId] then
    if IsValid(AlienControllers[steamId]) then
      AlienControllers[steamId]:Remove()
    end
    AlienControllers[steamId] = nil
  end
end)

-- Initialize alien slots on startup
hook.Add("Initialize", "CM15_Init", function()
  -- Initialize alien slots after a brief delay to ensure shared.lua is loaded
  timer.Simple(0.1, function()
    InitializeAlienSlots()
    print("[CM15] Gamemode initialized")
    print("[CM15] VJ Base Alien control system loaded")
    
    if CM15_ROLES and CM15_ROLES.Aliens then
      local roles = {}
      for k, v in pairs(CM15_ROLES.Aliens) do
        table.insert(roles, k)
      end
      print("[CM15] Available alien roles: " .. table.concat(roles, ", "))
    else
      print("[CM15] Using fallback alien roles: Queen, Praetorian, Warrior, Drone, Runner")
    end
    
    print("[CM15] Use F1 menu to select alien role")
    print("[CM15] Debug commands: cm15_debug_alien, cm15_stop_controlling")
  end)
end)

hook.Add("PlayerSay", "CM15_ChatCommands", function(ply, text)
    local lower = string.lower(text)
    
    if lower == "!menu" or lower == "/menu" then
        net.Start(CM15_NET.OpenTeamMenu)
        net.Send(ply)
        return ""
    elseif lower == "!help" or lower == "/help" then
        ply:ChatPrint("=== CM15 Commands ===")
        ply:ChatPrint("F1: Team/Role Menu")
        ply:ChatPrint("F4: Sandbox Spawn Menu")
        ply:ChatPrint("Tab: Scoreboard")
        ply:ChatPrint("!menu - Open team selection")
        if IsAdmin(ply) then
            ply:ChatPrint("cm15_admin - Show admin commands")
        end
        return ""
    end
end)

-- Admin commands
concommand.Add("cm15_admin", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("You don't have permission to use this command.")
        return 
    end
    
    ply:ChatPrint("=== CM15 ADMIN COMMANDS ===")
    ply:ChatPrint("cm15_force_alien [role] - Instantly spawn as any alien")
    ply:ChatPrint("cm15_force_human [role] - Instantly spawn as any human")
    ply:ChatPrint("cm15_kill_all_aliens - Remove all alien NPCs")
    ply:ChatPrint("cm15_reset_round - Reset the round")
    ply:ChatPrint("cm15_god - Toggle god mode")
    ply:ChatPrint("cm15_noclip - Toggle noclip")
    ply:ChatPrint("cm15_give_weapon [weapon] - Give specific weapon")
    ply:ChatPrint("cm15_refill_ammo - Refill all ammo")
    ply:ChatPrint("cm15_admin_spawn - Spawn as admin with tools")
end)

concommand.Add("cm15_admin_spawn", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    -- Clean up any alien control
    local steamId = ply:SteamID()
    if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
        AlienControllers[steamId]:Remove()
        AlienControllers[steamId] = nil
    end
    if AlienNPCs[steamId] and IsValid(AlienNPCs[steamId].npc) then
        AlienNPCs[steamId].npc:Remove()
        AlienNPCs[steamId] = nil
    end
    
    -- Reset VJ Base properties
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil  
    ply.VJ_TheControlledNPC = nil
    
    -- Spawn as admin
    ply:SetTeam(TEAM_HUMANS)
    ply:SetNWString("CM15_Role", "Admin")
    ply:UnSpectate()
    ply:Spawn()
    
    ply:ChatPrint("[ADMIN] Spawned with admin loadout and building tools")
end)

-- Force alien spawn (bypasses all checks)
concommand.Add("cm15_force_alien", function(ply, cmd, args)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local role = args[1] or "Warrior"
    
    -- Clean up any existing alien
    local steamId = ply:SteamID()
    if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
        AlienControllers[steamId]:Remove()
    end
    if AlienNPCs[steamId] and IsValid(AlienNPCs[steamId].npc) then
        AlienNPCs[steamId].npc:Remove()
    end
    
    -- Reset player state
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil
    ply.VJ_TheControlledNPC = nil
    
    -- Set team and spawn
    ply:SetTeam(TEAM_ALIENS)
    ply:SetNWString("CM15_Role", role)
    ply:UnSpectate()
    
    local success = SpawnAlienForPlayer(ply, role)
    if success then
        ply:ChatPrint("[ADMIN] Spawned as " .. role)
    else
        ply:ChatPrint("[ADMIN] Failed to spawn " .. role .. " - check spelling!")
        ply:ChatPrint("Valid roles: Queen, Praetorian, Ravager, Carrier, Warrior, Drone, Runner, Facehugger")
    end
end)

-- Force human spawn
concommand.Add("cm15_force_human", function(ply, cmd, args)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local role = args[1] or "Rifleman"
    
    -- Clean up any alien control
    local steamId = ply:SteamID()
    if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
        AlienControllers[steamId]:Remove()
        AlienControllers[steamId] = nil
    end
    if AlienNPCs[steamId] and IsValid(AlienNPCs[steamId].npc) then
        AlienNPCs[steamId].npc:Remove()
        AlienNPCs[steamId] = nil
    end
    
    -- Reset VJ Base properties
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil  
    ply.VJ_TheControlledNPC = nil
    
    ply:SetTeam(TEAM_HUMANS)
    ply:SetNWString("CM15_Role", role)
    ply:UnSpectate()
    ply:Spawn()
    
    ply:ChatPrint("[ADMIN] Spawned as Human " .. role)
end)

-- Reset to spectator
concommand.Add("cm15_reset", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local steamId = ply:SteamID()
    
    -- Clean up any alien control
    if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
        AlienControllers[steamId]:Remove()
        AlienControllers[steamId] = nil
    end
    
    if AlienNPCs[steamId] and IsValid(AlienNPCs[steamId].npc) then
        AlienNPCs[steamId].npc:Remove()
        AlienNPCs[steamId] = nil
    end
    
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil
    ply.VJ_TheControlledNPC = nil
    
    ply:SetTeam(TEAM_SPECTATOR)
    ClearPlayerRole(ply)
    ply:Spectate(OBS_MODE_ROAMING)
    ply:ChatPrint("[ADMIN] Reset to spectator")
end)

-- Kill all aliens
concommand.Add("cm15_kill_all_aliens", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local count = 0
    for steamID, alienData in pairs(AlienNPCs) do
        if IsValid(alienData.npc) then
            alienData.npc:Remove()
            count = count + 1
        end
    end
    
    for steamID, controller in pairs(AlienControllers) do
        if IsValid(controller) then
            controller:Remove()
        end
    end
    
    AlienNPCs = {}
    AlienControllers = {}
    
    ply:ChatPrint("[ADMIN] Removed " .. count .. " alien NPCs")
end)

-- Reset round
concommand.Add("cm15_reset_round", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    -- Reset all players to spectator
    for _, p in ipairs(player.GetAll()) do
        p:SetTeam(TEAM_SPECTATOR)
        ClearPlayerRole(p)
        p:StripWeapons()
        p:Spectate(OBS_MODE_ROAMING)
        
        -- Open team menu for them
        net.Start(CM15_NET.OpenTeamMenu)
        net.Send(p)
    end
    
    -- Clean up all aliens
    for steamID, alienData in pairs(AlienNPCs) do
        if IsValid(alienData.npc) then
            alienData.npc:Remove()
        end
    end
    
    for steamID, controller in pairs(AlienControllers) do
        if IsValid(controller) then
            controller:Remove()
        end
    end
    
    AlienNPCs = {}
    AlienControllers = {}
    
    -- Reset slots
    ResetHumanSlots()
    ResetAlienSlots()
    BroadcastSlots()
    
    ply:ChatPrint("[ADMIN] Round reset")
end)

-- God mode toggle
concommand.Add("cm15_god", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    if ply:HasGodMode() then
        ply:GodDisable()
        ply:ChatPrint("[ADMIN] God mode disabled")
    else
        ply:GodEnable()
        ply:ChatPrint("[ADMIN] God mode enabled")
    end
end)

-- Noclip toggle
concommand.Add("cm15_noclip", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    if ply:GetMoveType() == MOVETYPE_NOCLIP then
        ply:SetMoveType(MOVETYPE_WALK)
        ply:ChatPrint("[ADMIN] Noclip disabled")
    else
        ply:SetMoveType(MOVETYPE_NOCLIP)
        ply:ChatPrint("[ADMIN] Noclip enabled")
    end
end)

-- Give specific weapon
concommand.Add("cm15_give_weapon", function(ply, cmd, args)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local weapon = args[1]
    if not weapon then
        ply:ChatPrint("Usage: cm15_give_weapon <weapon_name>")
        ply:ChatPrint("Available weapons:")
        ply:ChatPrint("- weapon_vj_avp_pulserifle")
        ply:ChatPrint("- weapon_vj_avp_pistol")
        ply:ChatPrint("- weapon_vj_avp_smartgun")
        ply:ChatPrint("- weapon_vj_avp_shotgun")
        ply:ChatPrint("- weapon_vj_avp_scopedrifle")
        ply:ChatPrint("- weapon_vj_avp_flamethrower")
        ply:ChatPrint("- weapon_vj_avp_stimpack")
        return
    end
    
    ply:Give(weapon)
    ply:ChatPrint("[ADMIN] Gave weapon: " .. weapon)
end)

-- Refill ammo
concommand.Add("cm15_refill_ammo", function(ply)
    if not IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    ply:GiveAmmo(999, "SMG1")
    ply:GiveAmmo(999, "Pistol")
    ply:GiveAmmo(999, "AR2")
    ply:GiveAmmo(999, "BuckShot")
    ply:GiveAmmo(999, "SniperRound")
    ply:GiveAmmo(999, "Uranium")
    ply:GiveAmmo(99, "SMG1_Grenade")
    
    ply:ChatPrint("[ADMIN] Ammo refilled")
end)