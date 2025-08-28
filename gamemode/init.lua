-- gamemodes/cm15/gamemode/init.lua
-- Main server-side loader

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Add client files
AddCSLuaFile("core/sh_config.lua")
AddCSLuaFile("core/sh_teams.lua") 
AddCSLuaFile("core/sh_roles.lua")
AddCSLuaFile("client/cl_fonts.lua")
AddCSLuaFile("client/cl_menus.lua")
AddCSLuaFile("client/cl_team_menu.lua")
AddCSLuaFile("client/cl_alien_menu.lua")
AddCSLuaFile("client/cl_human_menu.lua")
AddCSLuaFile("client/cl_networking.lua")


--xeno
-- Add after existing includes
AddCSLuaFile("player_classes/player_xeno_base.lua")
AddCSLuaFile("player_classes/player_xeno_warrior.lua")
AddCSLuaFile("player_classes/player_xeno_drone.lua")
AddCSLuaFile("player_classes/player_xeno_runner.lua")
-- Add others as you create them

AddCSLuaFile("entities/weapons/weapon_xeno_base/shared.lua")
AddCSLuaFile("entities/weapons/weapon_xeno_claws/shared.lua")
--

-- Load server modules
include("server/sv_main.lua")
include("server/sv_slots.lua")
include("server/sv_aliens.lua")
include("server/sv_humans.lua")
include("server/sv_admin.lua")
include("server/sv_player.lua")
include("server/sv_networking.lua")
include("server/sv_xeno_direct.lua")


-- Register network strings
util.AddNetworkString(CM15_NET.OpenTeamMenu)
util.AddNetworkString(CM15_NET.PickTeam)
util.AddNetworkString(CM15_NET.OpenRoleMenu)
util.AddNetworkString(CM15_NET.PickRole)
util.AddNetworkString(CM15_NET.SyncSlots)
util.AddNetworkString(CM15_NET.BackToPrev)

hook.Add("Initialize", "CM15_ServerInit", function()
    timer.Simple(0.1, function()
        CM15_Slots.InitializeAlienSlots()
        print("[CM15] Server initialized successfully")
        print("[CM15] VJ Base Alien control system loaded")
    end)
end)