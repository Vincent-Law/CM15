-- Base xenomorph player class - shared properties and methods
PLAYER_CLASS = {}

-- Base stats (can be overridden by specific types)
PLAYER_CLASS.DisplayName = "Xenomorph Base"
PLAYER_CLASS.WalkSpeed = 180
PLAYER_CLASS.RunSpeed = 320
PLAYER_CLASS.CrouchedWalkSpeed = 0.3
PLAYER_CLASS.DuckSpeed = 0.3
PLAYER_CLASS.UnDuckSpeed = 0.3
PLAYER_CLASS.JumpPower = 300
PLAYER_CLASS.TeammateNoCollide = true
PLAYER_CLASS.CanUseFlashlight = false
PLAYER_CLASS.MaxHealth = 120
PLAYER_CLASS.StartArmor = 0
PLAYER_CLASS.StartHealth = 120
PLAYER_CLASS.DropWeaponOnDie = false
PLAYER_CLASS.UseVMHands = false

-- Xenomorph-specific properties
PLAYER_CLASS.XenoType = "Base"
PLAYER_CLASS.XenoModel = "models/cpthazama/avp/xeno/drone.mdl"
PLAYER_CLASS.XenoWeapons = {"weapon_xeno_claws"}
PLAYER_CLASS.XenoSounds = {
    spawn = "vj_avp/aliens/alien_hiss.wav",
    death = "vj_avp/aliens/alien_death.wav",
    hurt = "vj_avp/aliens/alien_hurt.wav",
    idle = "vj_avp/aliens/alien_idle.wav"
}

function PLAYER_CLASS:Spawn(ply)
    -- Set model
    ply:SetModel(self.XenoModel)
    
    -- Base hull size (can be overridden)
    local hullMins = Vector(-16, -16, 0)
    local hullMaxs = Vector(16, 16, 72) 
    if self.CustomHull then
        hullMins, hullMaxs = self:CustomHull()
    end
    ply:SetHull(hullMins, hullMaxs)
    ply:SetHullDuck(hullMins, Vector(hullMaxs.x, hullMaxs.y, hullMaxs.z * 0.5))
    
    -- View offset
    ply:SetViewOffset(Vector(0, 0, hullMaxs.z * 0.9))
    ply:SetViewOffsetDucked(Vector(0, 0, hullMaxs.z * 0.45))
    
    -- Appearance
    ply:SetColor(Color(15, 15, 15, 255))
    if self.CustomAppearance then
        self:CustomAppearance(ply)
    end
    
    -- Xenomorph properties
    ply:SetNWBool("IsXenomorph", true)
    ply:SetNWString("XenoType", self.XenoType)
    ply:SetNWFloat("XenoAcidBlood", 100)
    
    -- Give weapons
    ply:StripWeapons()
    for _, weapon in ipairs(self.XenoWeapons) do
        ply:Give(weapon)
    end
    if #self.XenoWeapons > 0 then
        ply:SelectWeapon(self.XenoWeapons[1])
    end
    
    -- Setup animations
    self:SetupAnimations(ply)
    
    -- Spawn sound
    if self.XenoSounds.spawn then
        ply:EmitSound(self.XenoSounds.spawn)
    end
    
    -- Custom spawn logic
    if self.OnXenoSpawn then
        self:OnXenoSpawn(ply)
    end
end

function PLAYER_CLASS:SetupAnimations(ply)
    ply.CalcIdeal = function(self, vel)
        local len2d = vel:Length2D()
        
        if self:OnGround() then
            if len2d > 0.5 then
                if self:KeyDown(IN_SPEED) then
                    return ACT_RUN, -1
                else
                    return ACT_WALK, -1
                end
            else
                if self:Crouching() then
                    return ACT_CROUCH_IDLE, -1
                else
                    return ACT_IDLE, -1
                end
            end
        else
            return ACT_JUMP, -1
        end
    end
end

function PLAYER_CLASS:Think(ply)
    if SERVER then
        -- Acid blood on death
        if not ply:Alive() and ply:GetNWBool("XenoAcidSplash", false) then
            self:CreateAcidSplash(ply:GetPos())
            ply:SetNWBool("XenoAcidSplash", false)
        end
        
        -- Custom think logic
        if self.OnXenoThink then
            self:OnXenoThink(ply)
        end
    end
end

function PLAYER_CLASS:CreateAcidSplash(pos)
    -- Base acid splash
    local effect = EffectData()
    effect:SetOrigin(pos)
    effect:SetScale(2)
    util.Effect("Explosion", effect)
    
    -- Damage nearby humans
    for _, ent in pairs(ents.FindInSphere(pos, 80)) do
        if IsValid(ent) and ent:IsPlayer() and ent:Team() == TEAM_HUMANS then
            local dmg = DamageInfo()
            dmg:SetDamage(12)
            dmg:SetDamageType(DMG_ACID)
            dmg:SetAttacker(ply or game.GetWorld())
            dmg:SetInflictor(ply or game.GetWorld())
            ent:TakeDamageInfo(dmg)
        end
    end
end

function PLAYER_CLASS:OnDeath(ply)
    ply:SetNWBool("XenoAcidSplash", true)
    if self.XenoSounds.death then
        ply:EmitSound(self.XenoSounds.death)
    end
    
    if self.OnXenoDeath then
        self:OnXenoDeath(ply)
    end
end

player_manager.RegisterClass("xeno_base", PLAYER_CLASS, "player_default")