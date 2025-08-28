-- gamemodes/cm15/gamemode/server/sv_player.lua
-- Player spawn and death handling

CM15_Player = CM15_Player or {}

-- Clear player role
function CM15_Player.ClearPlayerRole(ply)
    ply:SetNWString("CM15_Role", "")
    ply:SetNWString("CM15_Squad", "")
    ply:SetNWBool("CM15_LimitedRole", false)
    
    -- Stop controlling any NPCs
    local steamId = ply:SteamID()
    if CM15_Aliens then
        local controllers = CM15_Aliens.GetControllers()
        if controllers[steamId] and IsValid(controllers[steamId]) then
            controllers[steamId]:Remove()
            controllers[steamId] = nil
        end
    end
end

-- Set player role
function CM15_Player.SetPlayerRole(ply, roleId, opts)
    opts = opts or {}
    ply:SetNWString("CM15_Role", roleId or "")
    ply:SetNWString("CM15_Squad", opts.squad or "")
    ply:SetNWBool("CM15_LimitedRole", opts.limited or false)
end

-- Death handling
hook.Add("PlayerDeath", "CM15_DeathHandling", function(ply, weapon, killer)
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