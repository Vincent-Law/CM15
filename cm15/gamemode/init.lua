AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")


util.AddNetworkString(CM15_NET.OpenTeamMenu)
util.AddNetworkString(CM15_NET.PickTeam)
util.AddNetworkString(CM15_NET.OpenRoleMenu)
util.AddNetworkString(CM15_NET.PickRole)
util.AddNetworkString(CM15_NET.SyncSlots)
util.AddNetworkString(CM15_NET.BackToPrev)

-- Round state
local RoundState = ROUND_WAITING
local RoundEndTime = 0

-- Slot tracker for current round (never refills for limited roles)
local SlotTracker = {
  Humans = {
    -- Marines per-squad counts; filled in on round start
    Marines = {},
    -- Command, Survivors, etc.
    Categories = {}
  },
  Aliens = {
    Larva = { taken = 0, limit = CM15_ROLES.Aliens.Larva.slots },
    Queen = { taken = 0, limit = CM15_ROLES.Aliens.Queen.slots }
  }
}

local function ResetHumanSlots()
  SlotTracker.Humans.Marines = {}
  for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
    SlotTracker.Humans.Marines[squad] = {}
    for role, limit in pairs(CM15_ROLES.Humans.Marines.perSquad) do
      SlotTracker.Humans.Marines[squad][role] = { taken = 0, limit = limit }
    end
  end
  SlotTracker.Humans.Categories = {
    Survivors = {
      Survivor = { taken = 0, limit = CM15_ROLES.Humans.Survivors.roles[1].slots }
    },
    Command = {}
  }
  for _, r in ipairs(CM15_ROLES.Humans.Command.roles) do
    SlotTracker.Humans.Categories.Command[r.id] = { taken = 0, limit = r.slots }
  end
end

local function ResetAlienSlots()
  for k,v in pairs(SlotTracker.Aliens) do
    v.taken = 0
  end
end

local function BroadcastSlots(ply)
  -- Send a compact snapshot down to 1 player or everyone
  net.Start(CM15_NET.SyncSlots)
    net.WriteTable(SlotTracker)
  if IsValid(ply) then net.Send(ply) else net.Broadcast() end
end

-- Team & role helpers
local function ClearPlayerRole(ply)
  ply:SetNWString("CM15_Role", "")
  ply:SetNWString("CM15_Squad", "")
  ply:SetNWBool("CM15_LimitedRole", false)
end

local function SetPlayerRole(ply, roleId, opts)
  opts = opts or {}
  ply:SetNWString("CM15_Role", roleId or "")
  ply:SetNWString("CM15_Squad", opts.squad or "")
  ply:SetNWBool("CM15_LimitedRole", opts.limited or false)
end

-- Loadouts (HL2 placeholders)
local function GiveHumanLoadout(ply, roleId)
  ply:StripWeapons()
  ply:Give("weapon_crowbar")
  if roleId == "Rifleman" or roleId == "Survivor" then
    ply:Give("weapon_pistol")
    ply:Give("weapon_smg1")
  elseif roleId == "SmartGunner" then
    ply:Give("weapon_ar2")
  elseif roleId == "HospitalCorpsman" then
    ply:Give("weapon_pistol")
    -- (Placeholder “medkit”: give HL2 items; proper systems later)
    ply:Give("weapon_stunstick")
  elseif roleId == "CombatTechnician" then
    ply:Give("weapon_pistol")
    ply:Give("weapon_physgun")
    ply:Give("gmod_tool")
  else
    -- Command & specialist defaults
    ply:Give("weapon_pistol")
    ply:Give("weapon_smg1")
  end
end

local function GiveAlienLoadout(ply, roleId)
  ply:StripWeapons()
  if roleId == "Queen" then
    ply:Give("weapon_physcannon") -- placeholder “power”
  else
    ply:Give("weapon_crowbar")    -- placeholder “claws”
  end
end

-- Spawn logic
function GM:PlayerInitialSpawn(ply)
  ply:SetTeam(TEAM_SPECTATOR)
  ClearPlayerRole(ply)
  ply:Spectate(OBS_MODE_ROAMING)
  -- Send menus
  timer.Simple(0.2, function() if IsValid(ply) then
    net.Start(CM15_NET.OpenTeamMenu) net.Send(ply)
    BroadcastSlots(ply)
  end end)
end

function GM:PlayerSpawn(ply)
  player_manager.SetPlayerClass(ply, "player_default")
  ply:SetupHands()
  ply:AllowFlashlight(true)

  if ply:Team() == TEAM_SPECTATOR then
    ply:StripWeapons()
    ply:Spectate(OBS_MODE_ROAMING)
    return
  end

  ply:UnSpectate()
  ply:SetupHands()

  -- Apply loadouts
  local roleId = ply:GetNWString("CM15_Role","")
  if ply:Team() == TEAM_HUMANS then
    GiveHumanLoadout(ply, roleId)
  elseif ply:Team() == TEAM_ALIENS then
    GiveAlienLoadout(ply, roleId)
  end
end

-- Friendly fire ON
function GM:PlayerShouldTakeDamage(victim, attacker)
  return true
end

-- No scoreboard
function GM:ScoreboardShow(ply) return false end
function GM:ScoreboardHide(ply) return false end

-- Death: limited roles cannot respawn this round; unlimited wait for wave
hook.Add("PlayerDeath", "CM15_DeathHandling", function(ply)
  local limited = ply:GetNWBool("CM15_LimitedRole", false)
  ply:SetTeam(TEAM_SPECTATOR)
  ply:StripWeapons()
  ply:Spectate(OBS_MODE_ROAMING)
  if limited then
    -- lock them out until round ends
    ply:SetNWBool("CM15_LockedOut", true)
  else
    -- they can come back on the next reinforcement wave
    ply:SetNWBool("CM15_PendingReinforce", true)
  end
end)

-- Simple reinforce waves for unlimited roles
local function DoReinforceWave(teamId)
  for _, ply in ipairs(player.GetAll()) do
    if IsValid(ply) and ply:Team() == TEAM_SPECTATOR and ply:GetNWBool("CM15_PendingReinforce", false) then
      local roleId = ply:GetNWString("CM15_Role","")
      -- Only allow if their role is unlimited (server truth)
      local ok = false
      if ply:GetNWInt("CM15_LastTeam", 0) == TEAM_HUMANS then
        if roleId == "Rifleman" or roleId == "Survivor" then ok = true end
      elseif ply:GetNWInt("CM15_LastTeam", 0) == TEAM_ALIENS then
        if roleId == "Larva" then ok = true end
      end
      if ok then
        ply:SetTeam(ply:GetNWInt("CM15_LastTeam", TEAM_SPECTATOR))
        ply:SetNWBool("CM15_PendingReinforce", false)
        ply:Spawn()
      end
    end
  end
end

timer.Create("CM15_ReinforceTimer", GetConVar("cm15_reinforce_cd"):GetFloat(), 0, function()
  if RoundState == ROUND_LIVE then
    DoReinforceWave(TEAM_HUMANS)
    DoReinforceWave(TEAM_ALIENS)
  end
end)

cvars.AddChangeCallback("cm15_reinforce_cd", function(_,_,new)
  timer.Adjust("CM15_ReinforceTimer", tonumber(new), 0, nil)
end, "cm15_rcb")

-- Team pick (server authoritative)
net.Receive(CM15_NET.PickTeam, function(len, ply)
  if RoundState == ROUND_ENDED then return end
  local t = net.ReadInt(8)
  if t ~= TEAM_HUMANS and t ~= TEAM_ALIENS then return end
  if ply:GetNWString("CM15_Role","") ~= "" then return end -- already picked role

  ply:SetTeam(t)
  ply:SetNWInt("CM15_LastTeam", t)
  ply:ChatPrint("Team selected: " .. team.GetName(t))
  net.Start(CM15_NET.OpenRoleMenu) net.WriteInt(t, 8) net.Send(ply)
end)

-- Role pick (server authoritative, enforces slots)
net.Receive(CM15_NET.PickRole, function(len, ply)
  if RoundState ~= ROUND_PREP and RoundState ~= ROUND_LIVE then return end
  if ply:GetNWString("CM15_Role","") ~= "" then return end -- cannot switch

  local teamId = net.ReadInt(8)
  local roleId = net.ReadString()
  local meta    = net.ReadTable() -- may include squad for Marines

  if teamId ~= ply:Team() then return end

  local limited = false
  local ok      = false

  if teamId == TEAM_ALIENS then
    local bucket = SlotTracker.Aliens[roleId]
    if not bucket then return end
    if bucket.limit == CM15_UNLIMITED or bucket.taken < bucket.limit then
      bucket.taken = bucket.taken + 1
      ok = true
      limited = (bucket.limit ~= CM15_UNLIMITED)
    end
  elseif teamId == TEAM_HUMANS then
    if meta and meta.category == "Marines" then
      local squad = meta.squad or ""
      local role  = meta.role  or ""
      local sv = SlotTracker.Humans.Marines[squad] and SlotTracker.Humans.Marines[squad][role]
      if sv and (sv.limit == CM15_UNLIMITED or sv.taken < sv.limit) then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
        SetPlayerRole(ply, role, { squad = squad, limited = limited })
      end
    elseif meta and meta.category == "Command" then
      local sv = SlotTracker.Humans.Categories.Command[roleId]
      if sv and (sv.limit == CM15_UNLIMITED or sv.taken < sv.limit) then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
      end
    elseif meta and meta.category == "Survivors" then
      local sv = SlotTracker.Humans.Categories.Survivors.Survivor
      if sv and (sv.limit == CM15_UNLIMITED or sv.taken < sv.limit) then
        sv.taken = sv.taken + 1
        ok = true
        limited = (sv.limit ~= CM15_UNLIMITED)
      end
    end
  end

  if not ok then
    ply:ChatPrint("That role is full.")
    BroadcastSlots(ply)
    return
  end

  if teamId == TEAM_HUMANS and ply:GetNWString("CM15_Role","") == "" then
    -- If Marines handled above SetPlayerRole already; otherwise set here
    if meta and meta.category == "Command" then
      SetPlayerRole(ply, roleId, { limited = limited })
    elseif meta and meta.category == "Survivors" then
      SetPlayerRole(ply, "Survivor", { limited = limited })
    end
  elseif teamId == TEAM_ALIENS then
    SetPlayerRole(ply, roleId, { limited = limited })
  end

  BroadcastSlots() -- update everyone

  -- Spawn into the world now
  ply:Spawn()
end)

-- Round flow (console commands for now)
local function StartPrep()
  if RoundState ~= ROUND_WAITING and RoundState ~= ROUND_ENDED then return end
  RoundState = ROUND_PREP
  ResetHumanSlots()
  ResetAlienSlots()
  BroadcastSlots()

  for _, ply in ipairs(player.GetAll()) do
    if IsValid(ply) then
      ply:KillSilent()
      ply:SetTeam(TEAM_SPECTATOR)
      ClearPlayerRole(ply)
      timer.Simple(0.1, function()
        if IsValid(ply) then
          net.Start(CM15_NET.OpenTeamMenu) net.Send(ply)
        end
      end)
    end
  end

  local prep = GetConVar("cm15_prep_time"):GetInt()
  timer.Create("CM15_Prep", prep, 1, function()
    RoundState = ROUND_LIVE
    RoundEndTime = CurTime() + GetConVar("cm15_round_time"):GetInt()
  end)
end

local function EndRound()
  RoundState = ROUND_ENDED
  timer.Remove("CM15_Prep")
  for _, ply in ipairs(player.GetAll()) do
    if IsValid(ply) then
      ply:ChatPrint("Round ended.")
      ply:SetNWBool("CM15_LockedOut", false)
      ply:SetNWBool("CM15_PendingReinforce", false)
    end
  end
end

concommand.Add("cm15_start_round", function(ply)
  if IsValid(ply) and not ply:IsAdmin() then return end
  StartPrep()
end)

concommand.Add("cm15_end_round", function(ply)
  if IsValid(ply) and not ply:IsAdmin() then return end
  EndRound()
end)

hook.Add("Think", "CM15_RoundTimer", function()
  if RoundState == ROUND_LIVE and CurTime() >= RoundEndTime then
    EndRound()
  end
end)


--hooks
-- Debug: prove the server file loaded
hook.Add("Initialize", "CM15_DebugInit", function()
    print("[CM15] init.lua loaded on SERVER")
end)

-- Always show the team menu when you spawn as Spectator with no role
hook.Add("PlayerSpawn", "CM15_EnsureTeamMenu", function(ply)
    if ply:Team() == TEAM_SPECTATOR and ply:GetNWString("CM15_Role","") == "" then
        timer.Simple(0, function()
            if IsValid(ply) then
                net.Start(CM15_NET.OpenTeamMenu) net.Send(ply)
            end
        end)
    end
end)

-- Fallback: force-open the team menu for everyone (handy for testing)
concommand.Add("cm15_open_team", function(ply)
    if IsValid(ply) and not ply:IsAdmin() then return end
    print("[CM15] Forcing team menu for all players")
    for _, p in ipairs(player.GetAll()) do
        if IsValid(p) then net.Start(CM15_NET.OpenTeamMenu) net.Send(p) end
    end
end)

-- Round start command (re-register if you removed it)
concommand.Add("cm15_start_round", function(ply)
    if IsValid(ply) and not ply:IsAdmin() then return end
    print("[CM15] Starting PREP phase")
    if StartPrep then StartPrep() else print("[CM15] StartPrep() missing!") end
end)
--hook end debugs end