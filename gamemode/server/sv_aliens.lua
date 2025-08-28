-- gamemodes/cm15/gamemode/server/sv_aliens.lua
-- Alien NPC spawning and control system

CM15_Aliens = CM15_Aliens or {}

-- Local storage
local AlienNPCs = {}
local AlienControllers = {}

-- Fallback alien role data
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

-- Spawn alien for player
function CM15_Aliens.SpawnForPlayer(ply, roleId)
    local steamId = ply:SteamID()
    
    -- Get role data
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
    
    -- Clear any existing alien
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
    
    -- Find spawn position
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
    
    -- Spawn the alien NPC
    local alien = ents.Create(roleData.npc)
    if not IsValid(alien) then
        ply:ChatPrint("Error: Could not spawn " .. roleData.name .. " NPC. Make sure VJ Base AVP addon is installed.")
        return false
    end
    
    alien:SetPos(spawnPos)
    alien:SetAngles(ply:EyeAngles())
    alien:Spawn()
    alien:Activate()
    alien:SetCreator(ply)
    
    -- Store alien data
    AlienNPCs[steamId] = {
        npc = alien,
        player = ply,
        role = roleId,
        spawnTime = CurTime()
    }
    
    -- Create VJ Base controller
    timer.Simple(0.5, function()
        if IsValid(ply) and IsValid(alien) then
            local controller = ents.Create("obj_vj_controller")
            if IsValid(controller) then
                controller:SetPos(ply:GetPos())
                controller:SetAngles(ply:GetAngles())
                controller:Spawn()
                controller:Activate()
                
                controller.VJCE_Player = ply
                controller:SetControlledNPC(alien)
                controller:StartControlling()
                
                AlienControllers[steamId] = controller
                
                ply:StripWeapons()
                ply:SetTeam(TEAM_ALIENS)
                ply:Spectate(OBS_MODE_CHASE)
                ply:SpectateEntity(controller)
                ply:SetMoveType(MOVETYPE_OBSERVER)
                
                ply.VJ_IsControllingNPC = true
                ply.VJ_TheController = controller
                ply.VJ_TheControlledNPC = alien
                
                CM15_Aliens.SendControlInstructions(ply, roleId)
            else
                ply:ChatPrint("Error: Could not create controller entity.")
            end
        end
    end)
    
    return true
end

-- Send control instructions
function CM15_Aliens.SendControlInstructions(ply, roleId)
    ply:ChatPrint("You are now controlling the " .. roleId .. "!")
    
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
end

-- Cleanup player
function CM15_Aliens.CleanupPlayer(steamId)
    if AlienNPCs[steamId] then
        local alienData = AlienNPCs[steamId]
        if IsValid(alienData.npc) then
            alienData.npc:Remove()
        end
        AlienNPCs[steamId] = nil
    end
    
    if AlienControllers[steamId] then
        if IsValid(AlienControllers[steamId]) then
            AlienControllers[steamId]:Remove()
        end
        AlienControllers[steamId] = nil
    end
end

-- Stop controlling
function CM15_Aliens.StopControlling(ply)
    local steamId = ply:SteamID()
    
    if AlienControllers[steamId] and IsValid(AlienControllers[steamId]) then
        AlienControllers[steamId]:Remove()
        AlienControllers[steamId] = nil
        
        ply.VJ_IsControllingNPC = false
        ply.VJ_TheController = nil
        ply.VJ_TheControlledNPC = nil
        
        ply:SetTeam(TEAM_SPECTATOR)
        ply:Spectate(OBS_MODE_ROAMING)
        ply:ChatPrint("Stopped controlling alien.")
    else
        ply:ChatPrint("You are not controlling an alien.")
    end
end

-- Clear all aliens
function CM15_Aliens.ClearAll()
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
end

-- Get NPCs and controllers
function CM15_Aliens.GetNPCs()
    return AlienNPCs
end

function CM15_Aliens.GetControllers()
    return AlienControllers
end

-- Hooks
hook.Add("EntityRemoved", "CM15_AlienRemoved", function(ent)
    for steamID, alienData in pairs(AlienNPCs) do
        if alienData.npc == ent then
            local ply = alienData.player
            local roleId = alienData.role
            
            if AlienControllers[steamID] and IsValid(AlienControllers[steamID]) then
                AlienControllers[steamID]:Remove()
                AlienControllers[steamID] = nil
            end
            
            if IsValid(ply) then
                ply.VJ_IsControllingNPC = false
                ply.VJ_TheController = nil
                ply.VJ_TheControlledNPC = nil
                
                ply:SetTeam(TEAM_SPECTATOR)
                ply:Spectate(OBS_MODE_ROAMING)
                
                local limited = ply:GetNWBool("CM15_LimitedRole", false)
                local roleName = (CM15_ROLES and CM15_ROLES.Aliens and CM15_ROLES.Aliens[roleId] 
                    and CM15_ROLES.Aliens[roleId].name) or roleId
                
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
    
    for steamID, controller in pairs(AlienControllers) do
        if controller == ent then
            AlienControllers[steamID] = nil
            break
        end
    end
end)

hook.Add("PlayerDisconnected", "CM15_AlienCleanup", function(ply)
    CM15_Aliens.CleanupPlayer(ply:SteamID())
end)