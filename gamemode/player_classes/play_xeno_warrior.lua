-- Must include the base class first
include("player_xeno_base.lua")

-- Get the base class and copy it
local BaseClass = player_manager.GetPlayerClass("xeno_base")
if not BaseClass then
    -- If base class doesn't exist yet, create a simple fallback
    BaseClass = {
        DisplayName = "Xenomorph Base",
        WalkSpeed = 180,
        RunSpeed = 320,
        MaxHealth = 120,
        StartHealth = 120
    }
end

PLAYER_CLASS = table.Copy(BaseClass)

PLAYER_CLASS.DisplayName = "Xenomorph Warrior"
PLAYER_CLASS.WalkSpeed = 200
PLAYER_CLASS.RunSpeed = 350
PLAYER_CLASS.MaxHealth = 150
PLAYER_CLASS.StartHealth = 150
PLAYER_CLASS.XenoType = "Warrior"
PLAYER_CLASS.XenoModel = "models/cpthazama/avp/xeno/warrior.mdl"
PLAYER_CLASS.XenoWeapons = {"weapon_xeno_claws"}

function PLAYER_CLASS:OnXenoSpawn(ply)
    ply:ChatPrint("You are a Xenomorph Warrior!")
    ply:ChatPrint("LMB: Claw Attack | RMB: Heavy Strike")
end

player_manager.RegisterClass("xeno_warrior", PLAYER_CLASS, "player_default")