include("weapon_xeno_base/shared.lua")

AddCSLuaFile()

SWEP.PrintName = "Xenomorph Claws"
SWEP.XenoType = "Claws"
SWEP.AttackRange = 80
SWEP.AttackDamage = 40
SWEP.AttackSound = "vj_avp/aliens/alien_claw.wav"
SWEP.DeploySound = "vj_avp/aliens/alien_hiss.wav"

SWEP.Primary.Delay = 0.8
SWEP.Secondary.Delay = 1.2

function SWEP:SecondaryAttack()
    if not IsValid(self:GetOwner()) then return end
    
    local owner = self:GetOwner()
    self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
    
    owner:SetAnimation(PLAYER_ATTACK1)
    self:EmitSound("vj_avp/aliens/alien_roar.wav")
    
    -- Heavy attack - more damage, longer range
    local trace = util.TraceLine({
        start = owner:GetShootPos(),
        endpos = owner:GetShootPos() + owner:GetAimVector() * (self.AttackRange * 1.5),
        filter = owner,
        mask = MASK_SHOT_HULL
    })
    
    if SERVER and trace.Hit then
        self:DealDamage(trace, self.AttackDamage * 1.6, DMG_SLASH)
        
        -- Knockback
        if IsValid(trace.Entity) and (trace.Entity:IsPlayer() or trace.Entity:IsNPC()) then
            trace.Entity:SetVelocity(owner:GetAimVector() * 300 + Vector(0, 0, 100))
        end
    end
end