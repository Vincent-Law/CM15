-- gamemodes/cm15/gamemode/cl_init.lua
-- Main client-side loader

include("shared.lua")

-- Load client modules
include("client/cl_fonts.lua")
include("client/cl_menus.lua")
include("client/cl_team_menu.lua")
include("client/cl_alien_menu.lua")
include("client/cl_human_menu.lua")
include("client/cl_networking.lua")

-- Precache models
hook.Add("InitPostEntity", "CM15_PrecacheModels", function()
    local alienModels = {
        "models/cpthazama/avp/xeno/queen.mdl",
        "models/cpthazama/avp/xeno/praetorian.mdl",
        "models/cpthazama/avp/xeno/ravager.mdl",
        "models/cpthazama/avp/xeno/carrier.mdl",
        "models/cpthazama/avp/xeno/warrior.mdl",
        "models/cpthazama/avp/xeno/drone.mdl",
        "models/cpthazama/avp/xeno/runner.mdl",
        "models/cpthazama/avp/xeno/facehugger.mdl"
    }
    
    for _, mdl in ipairs(alienModels) do
        util.PrecacheModel(mdl)
    end
end)

hook.Add("Initialize", "CM15_ClientInit", function()
    print("[CM15] Client initialized successfully")
end)

-- Override F1 for spectators
hook.Add("OnSpawnMenuOpen", "CM15_OverrideF1", function()
    if LocalPlayer():Team() == TEAM_SPECTATOR then
        CM15_Menus.OpenTeamMenu()
        return false
    end
end)

-- Console command
concommand.Add("cm15_menu", function()
    CM15_Menus.OpenTeamMenu()
end)