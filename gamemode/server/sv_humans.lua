-- gamemodes/cm15/gamemode/server/sv_humans.lua  
-- Human loadout system

CM15_Humans = CM15_Humans or {}

function CM15_Humans.GiveLoadout(ply, roleId)
    ply:StripWeapons()
    
    -- Special admin role
    if roleId == "Admin" or roleId == "admin" then
        if CM15_Admin and CM15_Admin.IsAdmin(ply) then
            ply:Give("weapon_physgun")
            ply:Give("gmod_tool")
        end
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_smartgun")
        ply:Give("weapon_vj_avp_scopedrifle")
        ply:Give("weapon_vj_avp_flamethrower")
        ply:Give("weapon_vj_avp_shotgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:GiveAmmo(999, "SMG1")
        ply:GiveAmmo(999, "Pistol")
        ply:GiveAmmo(999, "AR2")
        ply:GiveAmmo(999, "BuckShot")
        ply:GiveAmmo(999, "SniperRound")
        ply:GiveAmmo(999, "Uranium")
        ply:GiveAmmo(99, "SMG1_Grenade")
        ply:ChatPrint("=== ADMIN LOADOUT ===")
        if CM15_Admin and CM15_Admin.IsAdmin(ply) then
            ply:ChatPrint("You have all weapons and building tools!")
        else
            ply:ChatPrint("You have all weapons!")
        end
        return
    end
    
    -- Marine roles
    if roleId == "Rifleman" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "SquadLead" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(300, "SMG1")
        ply:GiveAmmo(10, "SMG1_Grenade")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "FireteamLeader" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(5, "SMG1_Grenade")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "WeaponSpecialist" then
        local specWeapon = math.random(1, 3)
        if specWeapon == 1 then
            ply:Give("weapon_vj_avp_scopedrifle")
            ply:GiveAmmo(30, "SniperRound")
        elseif specWeapon == 2 then
            ply:Give("weapon_vj_avp_flamethrower")
            ply:GiveAmmo(500, "Uranium")
        else
            ply:Give("weapon_vj_avp_shotgun")
            ply:GiveAmmo(40, "BuckShot")
        end
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "SmartGunner" then
        ply:Give("weapon_vj_avp_smartgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(1000, "AR2")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "HospitalCorpsman" or roleId == "Medic" then
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_vj_avp_stimpack")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(60, "Pistol")
        
    elseif roleId == "CombatTechnician" or roleId == "Engineer" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(30, "Pistol")
        
    elseif roleId == "Survivor" then
        local survWeapon = math.random(1, 3)
        if survWeapon == 1 then
            ply:Give("weapon_vj_avp_shotgun")
            ply:GiveAmmo(16, "BuckShot")
        elseif survWeapon == 2 then
            ply:Give("weapon_vj_avp_pistol")
            ply:GiveAmmo(45, "Pistol")
        else
            ply:Give("weapon_crowbar")
        end
        
    elseif roleId == "CommandingOfficer" or roleId == "ExecutiveOfficer" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_scopedrifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(300, "SMG1")
        ply:GiveAmmo(10, "SMG1_Grenade")
        ply:GiveAmmo(18, "SniperRound")
        ply:GiveAmmo(60, "Pistol")
        
    elseif roleId == "StaffOfficer" then
        ply:Give("weapon_vj_avp_pulserifle")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(200, "SMG1")
        ply:GiveAmmo(45, "Pistol")
        
    elseif roleId == "SeniorEnlisted" then
        ply:Give("weapon_vj_avp_shotgun")
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(32, "BuckShot")
        ply:GiveAmmo(45, "Pistol")
        
    else
        -- Default loadout
        ply:Give("weapon_vj_avp_pistol")
        ply:Give("weapon_crowbar")
        ply:GiveAmmo(45, "Pistol")
    end
    
    -- Give everyone a flashlight
    ply:AllowFlashlight(true)
end