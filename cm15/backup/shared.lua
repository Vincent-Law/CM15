GM.Name    = "CM15"
GM.Author  = "You"
GM.Email   = ""
GM.Website = ""

DeriveGamemode("sandbox")

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
    }
  },
  Aliens = {
    -- All VJ Base alien roles with COMPLETE data including npc, name, description, color
    Queen = { 
      slots = 1, 
      model = "models/cpthazama/avp/xeno/queen.mdl",
      npc = "npc_vj_avp_xeno_queen",
      name = "Queen",
      description = "Massive alien matriarch",
      color = Color(255, 200, 200)
    },
    Praetorian = { 
      slots = 2, 
      model = "models/cpthazama/avp/xeno/praetorian.mdl",
      npc = "npc_vj_avp_xeno_praetorian",
      name = "Praetorian",
      description = "Royal guard, tough fighter",
      color = Color(200, 180, 255)
    },
    Ravager = {
      slots = 2,
      model = "models/cpthazama/avp/xeno/ravager.mdl",
      npc = "npc_vj_avp_xeno_ravager",
      name = "Ravager",
      description = "Berserker assault caste",
      color = Color(255, 150, 150)
    },
    Carrier = {
      slots = 3,
      model = "models/cpthazama/avp/xeno/carrier.mdl",
      npc = "npc_vj_avp_xeno_carrier",
      name = "Carrier",
      description = "Facehugger transport",
      color = Color(180, 200, 255)
    },
    Warrior = { 
      slots = 4, 
      model = "models/cpthazama/avp/xeno/warrior.mdl",
      npc = "npc_vj_avp_xeno_warrior",
      name = "Warrior",
      description = "Strong assault caste",
      color = Color(255, 255, 180)
    },
    Drone = { 
      slots = 6, 
      model = "models/cpthazama/avp/xeno/drone.mdl",
      npc = "npc_vj_avp_xeno_drone",
      name = "Drone",
      description = "Worker and support caste",
      color = Color(180, 255, 180)
    },
    Runner = { 
      slots = CM15_UNLIMITED, 
      model = "models/cpthazama/avp/xeno/runner.mdl",
      npc = "npc_vj_avp_xeno_runner",
      name = "Runner",
      description = "Fast, agile scout",
      color = Color(180, 255, 255)
    },
    Facehugger = {
      slots = CM15_UNLIMITED,
      model = "models/cpthazama/avp/xeno/facehugger.mdl",
      npc = "npc_vj_avp_xeno_facehugger",
      name = "Facehugger",
      description = "Infection vector",
      color = Color(255, 200, 150)
    }
  }
}

-- Simple convars for round pacing/respawns
CreateConVar("cm15_prep_time",      "30", FCVAR_ARCHIVE, "Seconds of prep before LIVE")
CreateConVar("cm15_round_time",     "900", FCVAR_ARCHIVE, "Seconds of LIVE round duration")
CreateConVar("cm15_reinforce_cd",   "45", FCVAR_ARCHIVE, "Seconds between unlimited-role respawn waves")