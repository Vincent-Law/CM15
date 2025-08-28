-- Base xenomorph weapon class
AddCSLuaFile()

SWEP.PrintName = "Xenomorph Base Weapon"
SWEP.Category = "CM15 Xenomorph"
SWEP.Spawnable = false

-- Base properties
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Primary.Delay = 1.0

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1  
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 1.5

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.ViewModel = ""
SWEP.WorldModel = ""
SWEP.UseHands = false

-- Xenomorph weapon properties
SWEP.XenoWeapon = true
SWEP.XenoType = "Base"
SWEP.AttackRange = 80
SWEP.AttackDamage = 30
SWEP.AttackSound = "vj_avp/aliens/alien_claw.wav"

function SWEP:Initialize()
    self:SetHoldType("fist")
end

function SWEP:Deploy()
    local owner = self:GetOwner()
    if IsValid(owner) and owner:GetNWBool("IsXenomorph") then
        if self.DeploySound then
            self:EmitSound(self.DeploySound)
        end
        return true
    end
    return false
end

function SWEP:PrimaryAttack()
    if not IsValid(self:GetOwner()) then return end
    
    local owner = self:GetOwner()
    self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
    
    -- Attack animation
    owner:SetAnimation(PLAYER_ATTACK1)
    
    -- Attack sound
    if self.AttackSound then
        self:EmitSound(self.AttackSound)
    end
    
    -- Damage trace
    local trace = self:GetAttackTrace()
    
    if SERVER and trace.Hit then
        self:DealDamage(trace, self.AttackDamage, DMG_SLASH)
    end
    
    -- Custom primary attack logic
    if self.OnPrimaryAttack then
        self:OnPrimaryAttack(owner, trace)
    end
end

function SWEP:GetAttackTrace()
    local owner = self:GetOwner()
    return util.TraceLine({
        start = owner:GetShootPos(),
        endpos = owner:GetShootPos() + owner:GetAimVector() * self.AttackRange,
        filter = owner,
        mask = MASK_SHOT_HULL
    })
end

function SWEP:DealDamage(trace, damage, damageType)
    if not trace.Hit or not IsValid(trace.Entity) then return end
    
    local dmg = DamageInfo()
    dmg:SetDamage(damage)
    dmg:SetAttacker(self:GetOwner())
    dmg:SetInflictor(self)
    dmg:SetDamageType(damageType or DMG_SLASH)
    dmg:SetDamagePosition(trace.HitPos)
    
    trace.Entity:TakeDamageInfo(dmg)
    
    -- Blood effect
    local effect = EffectData()
    effect:SetOrigin(trace.HitPos)
    effect:SetNormal(trace.HitNormal)
    util.Effect("BloodImpact", effect)
    
    return true
end

if CLIENT then
    function SWEP:DrawHUD()
        local owner = LocalPlayer()
        if not owner:GetNWBool("IsXenomorph") then return end
        
        local scrW, scrH = ScrW(), ScrH()
        
        -- Base HUD
        surface.SetDrawColor(120, 0, 0, 100)
        surface.DrawRect(10, scrH - 60, 200, 50)
        
        draw.SimpleText(self.PrintName:upper(), "DermaDefault", 20, scrH - 50, Color(255, 255, 255))
        
        -- Health display
        local hp = owner:Health()
        local maxHp = owner:GetMaxHealth()
        local hpColor = Color(255 - hp * 2, hp * 2, 0)
        draw.SimpleText("Health: " .. hp .. "/" .. maxHp, "DermaDefault", 20, scrH - 35, hpColor)
    end
end