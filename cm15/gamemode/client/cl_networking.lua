-- gamemodes/cm15/gamemode/client/cl_networking.lua
-- Client-side network receivers

-- Sync slots
net.Receive(CM15_NET.SyncSlots, function()
    CM15_Menus.LatestSlots = net.ReadTable()
end)

-- Open team menu
net.Receive(CM15_NET.OpenTeamMenu, function()
    CM15_Menus.OpenTeamMenu()
end)

-- Open role menu
net.Receive(CM15_NET.OpenRoleMenu, function()
    local teamId = net.ReadInt(8)
    if teamId == TEAM_HUMANS then
        CM15_Menus.OpenHumanRoleMenu()
    elseif teamId == TEAM_ALIENS then
        CM15_Menus.OpenAlienRoleMenu()
    end
end)