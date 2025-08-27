hook.Add("UpdateAnimation", "XenoPlayerAnims", function(ply)
    if ply:GetModel() == "models/player/xeno_drone/xeno_drone.mdl" then
        local vel = ply:GetVelocity()
        local speed = vel:Length2D()
        
        if ply:IsOnGround() then
            if ply:Crouching() then
                if speed > 10 then
                    ply:SetSequence(3) -- crouch walk
                else
                    ply:SetSequence(3) -- crouchidle
                end
            else
                if speed > 250 then
                    ply:SetSequence(2) -- run
                elseif speed > 10 then
                    ply:SetSequence(1) -- walk
                else
                    ply:SetSequence(0) -- idle
                end
            end
        elseif not ply:IsOnGround() then
            ply:SetSequence(4) -- jump
        end
    end
end)

-- This helps with playback rate
hook.Add("CalcMainActivity", "XenoPlayerAnimSpeed", function(ply)
    if ply:GetModel() == "models/player/xeno_drone/xeno_drone.mdl" then
        local vel = ply:GetVelocity():Length2D()
        ply:SetPlaybackRate(math.Clamp(vel / 200, 0.5, 2))
    end
end)