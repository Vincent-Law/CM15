-- gamemodes/cm15/gamemode/server/sv_networking.lua
-- Server-side network receivers

-- Team selection
net.Receive(CM15_NET.PickTeam, function(len, ply)
    CM15_Slots.EnsureSlots()
    if CM15_RoundState == ROUND_ENDED then return end
    
    local t = net.ReadInt(8)
    if t ~= TEAM_HUMANS and t ~= TEAM_ALIENS then return end
    if ply:GetNWString("CM15_Role", "") ~= "" then return end

    ply:SetTeam(t)
    ply:SetNWInt("CM15_LastTeam", t)
    ply:ChatPrint("Team selected: " .. team.GetName(t))
    
    net.Start(CM15_NET.OpenRoleMenu) 
    net.WriteInt(t, 8) 
    net.Send(ply)
end)

-- Role selection
net.Receive(CM15_NET.PickRole, function(len, ply)
    CM15_Slots.EnsureSlots()
    if CM15_RoundState == ROUND_ENDED then return end
    if ply:GetNWString("CM15_Role", "") ~= "" then return end

    local teamId = net.ReadInt(8)
    local roleId = net.ReadString()
    local meta = net.ReadTable()

    if teamId ~= ply:Team() then return end

    local limited = false
    local ok = false

    if teamId == TEAM_ALIENS then
        -- Check alien role availability
        local roleData = CM15_ROLES.Aliens[roleId]
        if not roleData then 
            ply:ChatPrint("Invalid alien role.")
            return 
        end
        
        local bucket = CM15_Slots.GetAlienSlot(roleId)
        if not bucket then 
            -- Initialize if missing
            bucket = { taken = 0, limit = roleData.slots }
            CM15_Slots.GetTracker().Aliens[roleId] = bucket
        end
        
        if bucket.limit == CM15_UNLIMITED or bucket.limit == -1 or bucket.taken < bucket.limit then
            -- Check actual NPC count for safety
            local actualCount = 0
            if CM15_Aliens then
                local npcs = CM15_Aliens.GetNPCs()
                for _, alienData in pairs(npcs) do
                    if IsValid(alienData.npc) and alienData.role == roleId then
                        actualCount = actualCount + 1
                    end
                end
            end
            
            if bucket.limit == CM15_UNLIMITED or bucket.limit == -1 or actualCount < bucket.limit then
                bucket.taken = bucket.taken + 1
                ok = true
                limited = (bucket.limit ~= CM15_UNLIMITED and bucket.limit ~= -1)
            else
                ply:ChatPrint("All " .. roleData.name .. " slots are taken!")
            end
        else
            ply:ChatPrint("All " .. roleData.name .. " slots are taken!")
        end
        
    elseif teamId == TEAM_HUMANS then
        -- Human role handling
        if meta and meta.category == "Marines" then
            local squad = meta.squad or ""
            local role = meta.role or ""
            local sv = CM15_Slots.GetOrInitMarine(squad, role)
            if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
                sv.taken = sv.taken + 1
                ok = true
                limited = (sv.limit ~= CM15_UNLIMITED)
                CM15_Player.SetPlayerRole(ply, role, { squad = squad, limited = limited })
            end
            
        elseif meta and meta.category == "Command" then
            local sv = CM15_Slots.GetOrInitCommand(roleId)
            if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
                sv.taken = sv.taken + 1
                ok = true
                limited = (sv.limit ~= CM15_UNLIMITED)
                CM15_Player.SetPlayerRole(ply, roleId, { limited = limited })
            end
            
        elseif meta and meta.category == "Survivors" then
            local sv = CM15_Slots.GetOrInitSurvivor()
            if sv.limit == CM15_UNLIMITED or sv.taken < sv.limit then
                sv.taken = sv.taken + 1
                ok = true
                limited = (sv.limit ~= CM15_UNLIMITED)
                CM15_Player.SetPlayerRole(ply, "Survivor", { limited = limited })
            end
        end
    end

    if not ok then
        ply:ChatPrint("That role is full.")
        CM15_Slots.BroadcastSlots(ply)
        return
    end

    if teamId == TEAM_ALIENS then
        CM15_Player.SetPlayerRole(ply, roleId, { limited = limited })
    end

    CM15_Slots.BroadcastSlots()
    ply:Spawn()
end)