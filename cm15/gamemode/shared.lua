GM.Name    = "CM15"
GM.Author  = "You"
GM.Email   = ""
GM.Website = ""

DeriveGamemode("base")

TEAM_SPECTATOR = 0
TEAM_HUMANS    = 1
TEAM_ALIENS    = 2

-- Team colors + names
team.SetUp(TEAM_SPECTATOR, "Spectators", Color(160, 160, 160))
team.SetUp(TEAM_HUMANS,    "Humans",     Color( 60, 160, 255))
team.SetUp(TEAM_ALIENS,    "Aliens",     Color(180, 255,  60))

-- Round states
ROUND_WAITING = 0
ROUND_PREP    = 1
ROUND_LIVE    = 2
ROUND_ENDED   = 3

-- Network strings shared keys
CM15_NET = {
  OpenTeamMenu = "cm15_open_teammenu",
  PickTeam     = "cm15_pick_team",
  OpenRoleMenu = "cm15_open_rolemenu",
  PickRole     = "cm15_pick_role",
  SyncSlots    = "cm15_sync_slots",
  BackToPrev   = "cm15_back"
}

-- Helper: unlimited slot marker
CM15_UNLIMITED = -1

-- Role catalog & slot limits (server enforces; client reads to render)
CM15_ROLES = {
  Humans = {
    -- Categories appear as expandable rows.
    Marines = {
      type = "category",
      squads = { "Alpha", "Bravo", "Charlie", "Delta" }, -- subcategory: squads
      perSquad = {
        SquadLead         = 1,
        FireteamLeader    = 2,
        WeaponSpecialist  = 1,
        SmartGunner       = 1,
        HospitalCorpsman  = 4,
        CombatTechnician  = 3,
        Rifleman          = CM15_UNLIMITED  -- unlimited
      },
      displayOrder = { "SquadLead","FireteamLeader","WeaponSpecialist","SmartGunner","HospitalCorpsman","CombatTechnician","Rifleman" },
      iconModels = {
        SquadLead="models/Humans/Group03/male_06.mdl",
        FireteamLeader="models/Humans/Group03/male_07.mdl",
        WeaponSpecialist="models/Humans/Group03/male_09.mdl",
        SmartGunner="models/Humans/Group03/male_08.mdl",
        HospitalCorpsman="models/Humans/Group03m/male_03.mdl",
        CombatTechnician="models/Humans/Group03m/male_02.mdl",
        Rifleman="models/Humans/Group03/male_04.mdl"
      }
    },
    Survivors = {
      type = "category",
      roles = {
        { id="Survivor", name="Survivor", slots=CM15_UNLIMITED, model="models/Humans/Group01/male_02.mdl" }
      }
    },
    Command = {
      type = "category",
      roles = {
        { id="CommandingOfficer", name="Commanding Officer", slots=1, model="models/Humans/Group03/male_01.mdl" },
        { id="ExecutiveOfficer",  name="Executive Officer",  slots=1, model="models/Humans/Group03/male_02.mdl" },
        { id="StaffOfficer",      name="Staff Officer",      slots=2, model="models/Humans/Group03/male_03.mdl" },
        { id="SeniorEnlisted",    name="Senior Enlisted Advisor", slots=1, model="models/Humans/Group03/male_05.mdl" }
      }
    },
    -- Placeholders for later: Auxiliary Support, MPs, Engineering, Medical Research, Supply, Synthetic
  },
  Aliens = {
    -- No categories: two large buttons
    Larva  = { slots = CM15_UNLIMITED, model="models/antlion.mdl" },
    Queen  = { slots = 1,               model="models/antlion_guard.mdl" }
  }
}

-- Simple convars for round pacing/respawns
CreateConVar("cm15_prep_time",      "30", FCVAR_ARCHIVE, "Seconds of prep before LIVE")
CreateConVar("cm15_round_time",     "900", FCVAR_ARCHIVE, "Seconds of LIVE round duration")
CreateConVar("cm15_reinforce_cd",   "45", FCVAR_ARCHIVE, "Seconds between unlimited-role respawn waves")
