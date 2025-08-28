-- gamemodes/cm15/gamemode/core/sh_roles.lua
-- Role catalog and slot limits
-- gamemodes/cm15/gamemode/core/sh_roles.lua
-- Role catalog and slot limits

CM15_ROLES = {
    Humans = {
        Marines = {
            type = "category",
            squads = { "Alpha", "Bravo", "Charlie", "Delta" },
            perSquad = {
                SquadLead         = 1,
                FireteamLeader    = 2,
                WeaponSpecialist  = 1,
                SmartGunner       = 1,
                HospitalCorpsman  = 4,
                CombatTechnician  = 3,
                Rifleman          = CM15_UNLIMITED
            },
            displayOrder = { 
                "SquadLead", "FireteamLeader", "WeaponSpecialist", 
                "SmartGunner", "HospitalCorpsman", "CombatTechnician", "Rifleman" 
            },
            iconModels = {
                SquadLead = "models/ariter/aliens/colonial_marine_camo_male_06_ply.mdl",
                FireteamLeader = "models/ariter/aliens/colonial_marine_camo_male_07_ply.mdl",
                WeaponSpecialist = "models/ariter/aliens/colonial_marine_camo_male_09_ply.mdl",
                SmartGunner = "models/ariter/aliens/colonial_marine_camo_male_08_ply.mdl",
                HospitalCorpsman = "models/ariter/aliens/colonial_marine_camo_male_03_ply.mdl",
                CombatTechnician = "models/ariter/aliens/colonial_marine_camo_male_02_ply.mdl",
                Rifleman = "models/ariter/aliens/colonial_marine_camo_male_04_ply.mdl"
            }
        },
        Survivors = {
            type = "category",
            roles = {
                { 
                    id = "Survivor", 
                    name = "Survivor", 
                    slots = CM15_UNLIMITED, 
                    model = "models/ariter/aliens/colonial_marine_camo_barney_ply.mdl" 
                }
            }
        },
        Command = {
            type = "category",
            roles = {
                { 
                    id = "CommandingOfficer", 
                    name = "Commanding Officer", 
                    slots = 1, 
                    model = "models/ariter/aliens/colonial_marine_camo_ply.mdl" 
                },
                { 
                    id = "ExecutiveOfficer", 
                    name = "Executive Officer", 
                    slots = 1, 
                    model = "models/ariter/aliens/colonial_marine_camo_npc.mdl" 
                },
                { 
                    id = "StaffOfficer", 
                    name = "Staff Officer", 
                    slots = 2, 
                    model = "models/ariter/aliens/colonial_marine_camo_male_03_ply.mdl" 
                },
                { 
                    id = "SeniorEnlisted", 
                    name = "Senior Enlisted Advisor", 
                    slots = 1, 
                    model = "models/ariter/aliens/colonial_marine_camo_barney_ply.mdl" 
                }
            }
        }
    },
    Aliens = {
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