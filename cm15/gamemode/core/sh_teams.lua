-- gamemodes/cm15/gamemode/core/sh_teams.lua
-- Team definitions

TEAM_SPECTATOR = 0
TEAM_HUMANS    = 1
TEAM_ALIENS    = 2

-- Team colors and names
team.SetUp(TEAM_SPECTATOR, "Spectators", Color(160, 160, 160))
team.SetUp(TEAM_HUMANS,    "Humans",     Color( 60, 160, 255))
team.SetUp(TEAM_ALIENS,    "Aliens",     Color(180, 255,  60))