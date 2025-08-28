-- gamemodes/cm15/gamemode/server/sv_admin.lua
-- Admin system and commands

CM15_Admin = CM15_Admin or {}

-- Admin list (add Steam IDs here)
local CM15_ADMINS = {
    ["STEAM_0:0:19948154"] = true,  -- Your Steam ID
}

-- Check if player is admin
function CM15_Admin.IsAdmin(ply)
    if not IsValid(ply) then return false end
    return ply:IsAdmin() or ply:IsSuperAdmin() or CM15_ADMINS[ply:SteamID()]
end

-- Export for other modules
IsAdmin = CM15_Admin.IsAdmin

-- ======================
-- ADMIN COMMANDS
-- ======================

concommand.Add("cm15_admin", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("You don't have permission to use this command.")
        return 
    end
    
    ply:ChatPrint("=== CM15 ADMIN COMMANDS ===")
    ply:ChatPrint("cm15_admin_spawn - Spawn as admin with tools")
    ply:ChatPrint("cm15_force_alien [role] - Instantly spawn as any alien")
    ply:ChatPrint("cm15_force_human [role] - Instantly spawn as any human")
    ply:ChatPrint("cm15_kill_all_aliens - Remove all alien NPCs")
    ply:ChatPrint("cm15_reset_round - Reset the round")
    ply:ChatPrint("cm15_reset - Reset to spectator")
    ply:ChatPrint("cm15_god - Toggle god mode")
    ply:ChatPrint("cm15_noclip - Toggle noclip")
    ply:ChatPrint("cm15_give_weapon [weapon] - Give specific weapon")
    ply:ChatPrint("cm15_refill_ammo - Refill all ammo")
end)

concommand.Add("cm15_admin_spawn", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    -- Clean up any alien control
    if CM15_Aliens then
        CM15_Aliens.CleanupPlayer(ply:SteamID())
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

concommand.Add("cm15_force_alien", function(ply, cmd, args)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local role = args[1] or "Warrior"
    
    -- Clean up any existing alien
    if CM15_Aliens then
        CM15_Aliens.CleanupPlayer(ply:SteamID())
    end
    
    -- Reset player state
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil
    ply.VJ_TheControlledNPC = nil
    
    -- Set team and spawn
    ply:SetTeam(TEAM_ALIENS)
    ply:SetNWString("CM15_Role", role)
    ply:UnSpectate()
    
    if CM15_Aliens then
        local success = CM15_Aliens.SpawnForPlayer(ply, role)
        if success then
            ply:ChatPrint("[ADMIN] Spawned as " .. role)
        else
            ply:ChatPrint("[ADMIN] Failed to spawn " .. role .. " - check spelling!")
            ply:ChatPrint("Valid roles: Queen, Praetorian, Ravager, Carrier, Warrior, Drone, Runner, Facehugger")
        end
    end
end)

concommand.Add("cm15_force_human", function(ply, cmd, args)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local role = args[1] or "Rifleman"
    
    -- Clean up any alien control
    if CM15_Aliens then
        CM15_Aliens.CleanupPlayer(ply:SteamID())
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

concommand.Add("cm15_reset", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    -- Clean up any alien control
    if CM15_Aliens then
        CM15_Aliens.CleanupPlayer(ply:SteamID())
    end
    
    ply.VJ_IsControllingNPC = false
    ply.VJ_TheController = nil
    ply.VJ_TheControlledNPC = nil
    
    ply:SetTeam(TEAM_SPECTATOR)
    ply:SetNWString("CM15_Role", "")
    ply:SetNWString("CM15_Squad", "")
    ply:SetNWBool("CM15_LimitedRole", false)
    ply:Spectate(OBS_MODE_ROAMING)
    ply:ChatPrint("[ADMIN] Reset to spectator")
end)

concommand.Add("cm15_kill_all_aliens", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    local count = 0
    
    if CM15_Aliens then
        local npcs = CM15_Aliens.GetNPCs()
        for steamID, alienData in pairs(npcs) do
            if IsValid(alienData.npc) then
                alienData.npc:Remove()
                count = count + 1
            end
        end
        
        CM15_Aliens.ClearAll()
    end
    
    ply:ChatPrint("[ADMIN] Removed " .. count .. " alien NPCs")
end)

concommand.Add("cm15_reset_round", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
        ply:ChatPrint("Admin only command.")
        return 
    end
    
    -- Reset all players to spectator
    for _, p in ipairs(player.GetAll()) do
        p:SetTeam(TEAM_SPECTATOR)
        p:SetNWString("CM15_Role", "")
        p:SetNWString("CM15_Squad", "")
        p:SetNWBool("CM15_LimitedRole", false)
        p:StripWeapons()
        p:Spectate(OBS_MODE_ROAMING)
        
        -- Open team menu for them
        net.Start(CM15_NET.OpenTeamMenu)
        net.Send(p)
    end
    
    -- Clean up all aliens
    if CM15_Aliens then
        CM15_Aliens.ClearAll()
    end
    
    -- Reset slots
    if CM15_Slots then
        CM15_Slots.ResetAll()
        CM15_Slots.BroadcastSlots()
    end
    
    ply:ChatPrint("[ADMIN] Round reset")
end)

concommand.Add("cm15_god", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
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

concommand.Add("cm15_noclip", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
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

concommand.Add("cm15_give_weapon", function(ply, cmd, args)
    if not CM15_Admin.IsAdmin(ply) then 
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

concommand.Add("cm15_refill_ammo", function(ply)
    if not CM15_Admin.IsAdmin(ply) then 
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

-- Debug commands
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

concommand.Add("cm15_debug_alien", function(ply, cmd, args)
    if not IsValid(ply) then return end
    
    local steamId = ply:SteamID()
    
    print("=== ALIEN DEBUG INFO ===")
    print("Player:", ply:Nick(), steamId)
    print("VJ_IsControllingNPC:", ply.VJ_IsControllingNPC)
    print("VJ_TheController:", ply.VJ_TheController)
    print("VJ_TheControlledNPC:", ply.VJ_TheControlledNPC)
    
    if CM15_Aliens then
        local npcs = CM15_Aliens.GetNPCs()
        if npcs[steamId] then
            local data = npcs[steamId]
            print("Alien Role:", data.role)
            print("Alien NPC:", data.npc)
            print("Alien Valid:", IsValid(data.npc))
        else
            print("No Alien NPC data")
        end
        
        local controllers = CM15_Aliens.GetControllers()
        if controllers[steamId] then
            print("Controller:", controllers[steamId])
            print("Controller Valid:", IsValid(controllers[steamId]))
        else
            print("No Controller data")
        end
    end
    
    -- Print available roles
    print("=== AVAILABLE ALIEN ROLES ===")
    if CM15_ROLES and CM15_ROLES.Aliens then
        for roleId, roleData in pairs(CM15_ROLES.Aliens) do
            print("- " .. roleId .. ": " .. tostring(roleData.slots) .. " slots")
        end
    end
    
    ply:ChatPrint("Debug info printed to console")
end)

concommand.Add("cm15_stop_controlling", function(ply, cmd, args)
    if not IsValid(ply) then return end
    
    if CM15_Aliens then
        CM15_Aliens.StopControlling(ply)
    else
        ply:ChatPrint("Alien system not loaded.")
    end
end)