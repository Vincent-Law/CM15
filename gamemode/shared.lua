-- gamemodes/cm15/gamemode/shared.lua
-- Main shared loader

GM.Name    = "CM15"
GM.Author  = "You"
GM.Email   = ""
GM.Website = ""

DeriveGamemode("sandbox")

-- Load shared modules
include("core/sh_config.lua")
include("core/sh_teams.lua")
include("core/sh_roles.lua")