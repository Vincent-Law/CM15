-- Direct xenomorph control system
CM15_XenoDirect = CM15_XenoDirect or {}

-- Mapping of alien roles to player classes
local XENO_PLAYER_CLASSES = {
    Warrior = "xeno_warrior",
    Drone = "xeno_drone", 
    Runner = "xeno_runner",
    Praetorian = "xeno_praetorian",
    Ravager = "xeno_ravager",
    Carrier = "xeno_carrier",
    Facehugger = "xeno_facehugger",
    Queen = "xeno_queen"
}

function CM15_XenoDirect.CanUseDirectControl(roleId)
    return XENO_PLAYER_CLASSES[roleId] ~= nil
end

function CM15_XenoDirect.SpawnAsXeno(ply, roleId)
    local playerClass = XENO_PLAYER_CLASSES[roleId]
    if not playerClass then
        return false, "No direct control available for " .. roleId
    end
    
    local steamId = ply:SteamID()
    
    -- Clean up any existing control
    if CM15_Aliens then
        CM15_Aliens.CleanupPlayer(steamId)
    end
    
    -- Set up direct control
    ply:SetTeam(TEAM_ALIENS)
    ply:SetNWString("CM15_Role", roleId)
    ply:UnSpectate()
    
    -- Set custom player class
    player_manager.SetPlayerClass(ply, playerClass)
    ply:Spawn()
    
    -- Register in alien tracking system
    if CM15_Aliens then
        local AlienNPCs = CM15_Aliens.GetNPCs()
        AlienNPCs[steamId] = {
            npc = ply,
            player = ply,
            role = roleId,
            spawnTime = CurTime(),
            directControl = true
        }
    end
    
    return true, "Spawned as " .. roleId
end

-- Integration with existing alien spawn system
if CM15_Aliens then
    local originalSpawnForPlayer = CM15_Aliens.SpawnForPlayer
    
    function CM15_Aliens.SpawnForPlayer(ply, roleId)
        -- Check if we should use direct control
        if CM15_XenoDirect.CanUseDirectControl(roleId) then
            local success, message = CM15_XenoDirect.SpawnAsXeno(ply, roleId)
            if success then
                ply:ChatPrint(message)
                return true
            else
                ply:ChatPrint("Direct control failed: " .. message)
                ply:ChatPrint("Falling back to VJ Base control...")
            end
        end
        
        -- Fall back to original VJ Base system
        return originalSpawnForPlayer(ply, roleId)
    end
end