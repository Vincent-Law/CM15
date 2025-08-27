hook.Add("PlayerSpawn", "TestXenoAnims", function(ply)
    if ply:GetModel() == "models/player/xeno_drone/xeno_drone.mdl" then
        print("Xeno model detected")
        print("Available sequences:")
        for i = 0, ply:GetSequenceCount() - 1 do
            print(i .. ": " .. ply:GetSequenceName(i))
        end
    end
end)