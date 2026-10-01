AddCSLuaFile()

ENT.Base = "arc9_uc_40mm_he"
ENT.PrintName = "#arc9_uc_40mm_smoke"

ENT.GrenadeDamage = 50
ENT.GrenadeRadius = 150
ENT.ExplosionEffect = false
ENT.Scorch = false

function ENT:DoDetonation()

    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        effectdata:SetMagnitude(4)
        effectdata:SetScale(1)
        effectdata:SetRadius(4)
        effectdata:SetNormal(self:GetVelocity():GetNormalized())
        util.Effect("Sparks", effectdata)
        self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200, 0.5)
    end

    self:EmitSound("weapons/arccw/smokegrenade/smoke_emit.wav", 90, 100, 1, CHAN_AUTO)

    local cloud = ents.Create( "arc9_smoke_cloud" )

    if !IsValid(cloud) then return end

    cloud:SetPos(self:GetPos())
    cloud:Spawn()

end
