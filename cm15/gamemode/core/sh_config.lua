-- gamemodes/cm15/gamemode/core/sh_config.lua
-- Shared configuration and constants

-- Network string keys
CM15_NET = {
    OpenTeamMenu = "cm15_open_teammenu",
    PickTeam     = "cm15_pick_team",
    OpenRoleMenu = "cm15_open_rolemenu",
    PickRole     = "cm15_pick_role",
    SyncSlots    = "cm15_sync_slots",
    BackToPrev   = "cm15_back"
}

-- Constants
CM15_UNLIMITED = -1

-- Round states
ROUND_WAITING = 0
ROUND_PREP    = 1
ROUND_LIVE    = 2
ROUND_ENDED   = 3

-- ConVars
CreateConVar("cm15_prep_time", "30", FCVAR_ARCHIVE, "Seconds of prep before LIVE")
CreateConVar("cm15_round_time", "900", FCVAR_ARCHIVE, "Seconds of LIVE round duration")
CreateConVar("cm15_reinforce_cd", "45", FCVAR_ARCHIVE, "Seconds between unlimited-role respawn waves")