-- gamemodes/cm15/gamemode/server/sv_main.lua
-- Core server functions

-- Round state management
CM15_RoundState = ROUND_WAITING
CM15_RoundEndTime = 0

-- Core gamemode functions
function GM:PlayerInitialSpawn(ply)
    CM15_Slots.EnsureSlots()
    ply:SetTeam(TEAM_SPECTATOR)
    CM15_Player.ClearPlayerRole(ply)
    ply:Spectate(OBS_MODE_ROAMING)
    
    timer.Simple(0.2, function() 
        if IsValid(ply) then
            net.Start(CM15_NET.OpenTeamMenu) 
            net.Send(ply)
            CM15_Slots.BroadcastSlots(ply)
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

    local roleId = ply:GetNWString("CM15_Role", "")
    
    if ply:Team() == TEAM_HUMANS then
        CM15_Humans.GiveLoadout(ply, roleId)
    elseif ply:Team() == TEAM_ALIENS then
        local success = CM15_Aliens.SpawnForPlayer(ply, roleId)
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

function GM:ScoreboardShow(ply) 
    return true 
end

function GM:ScoreboardHide(ply) 
    return true 
end

-- Chat commands
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
        if CM15_Admin and CM15_Admin.IsAdmin(ply) then
            ply:ChatPrint("cm15_admin - Show admin commands")
        end
        return ""
    end
end)