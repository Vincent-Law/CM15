include("player_xeno_base.lua")

PLAYER_CLASS = table.Copy(player_manager.GetPlayerClass("xeno_base"))

PLAYER_CLASS.DisplayName = "Xenomorph Drone"
PLAYER_CLASS.WalkSpeed = 180
PLAYER_CLASS.RunSpeed = 300
PLAYER_CLASS.MaxHealth = 110
PLAYER_CLASS.StartHealth = 110
PLAYER_CLASS.XenoType = "Drone"
PLAYER_CLASS.XenoModel = "models/cpthazama/avp/xeno/drone.mdl"
PLAYER_CLASS.XenoWeapons = {"weapon_xeno_claws", "weapon_xeno_tail"}

function PLAYER_CLASS:OnXenoSpawn(ply)
    ply:SetNWBool("XenoWallCrawl", true) -- Drones can wall crawl
    ply:ChatPrint("You are a Xenomorph Drone!")
    ply:ChatPrint("LMB: Claw Attack | RMB: Tail Strike | Hold SHIFT near walls to crawl")
end

function PLAYER_CLASS:OnXenoThink(ply)
    -- Basic wall crawling logic
    if ply:KeyDown(IN_SPEED) and ply:GetVelocity():Length() < 50 then
        local trace = util.TraceLine({
            start = ply:GetPos(),
            endpos = ply:GetPos() + ply:GetForward() * 50,
            filter = ply
        })
        
        if trace.Hit and trace.HitNormal then
            local angle = trace.HitNormal:Angle()
            angle:RotateAroundAxis(angle:Right(), -90)
            ply:SetAngles(LerpAngle(0.05, ply:GetAngles(), angle))
        end
    end
end

player_manager.RegisterClass("xeno_drone", PLAYER_CLASS, "xeno_base")