include("player_xeno_base.lua")

PLAYER_CLASS = table.Copy(player_manager.GetPlayerClass("xeno_base"))

PLAYER_CLASS.DisplayName = "Xenomorph Runner"
PLAYER_CLASS.WalkSpeed = 250
PLAYER_CLASS.RunSpeed = 450
PLAYER_CLASS.JumpPower = 400
PLAYER_CLASS.MaxHealth = 100
PLAYER_CLASS.StartHealth = 100
PLAYER_CLASS.XenoType = "Runner"
PLAYER_CLASS.XenoModel = "models/cpthazama/avp/xeno/runner.mdl"
PLAYER_CLASS.XenoWeapons = {"weapon_xeno_claws", "weapon_xeno_pounce"}

function PLAYER_CLASS:CustomHull()
    -- Smaller, more agile hull
    return Vector(-12, -12, 0), Vector(12, 12, 60)
end

function PLAYER_CLASS:OnXenoSpawn(ply)
    ply:ChatPrint("You are a Xenomorph Runner!")
    ply:ChatPrint("LMB: Bite Attack | RMB: Pounce | Fast and agile!")
end

function PLAYER_CLASS:OnXenoThink(ply)
    -- Speed boost when low health (desperation)
    if ply:Health() < 30 then
        ply:SetWalkSpeed(300)
        ply:SetRunSpeed(500)
    end
end

player_manager.RegisterClass("xeno_runner", PLAYER_CLASS, "xeno_base")