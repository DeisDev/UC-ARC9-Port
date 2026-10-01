AddCSLuaFile()

ENT.Base = "arc9_uc_40mm_he"
ENT.PrintName = "#arc9_uc_40mm_napalm"

ENT.GrenadeDamage = 50
ENT.GrenadeRadius = 150
ENT.ExplosionEffect = false
ENT.Scorch = false
ENT.DragCoefficient = 0.75
ENT.DetonateOnImpact = false

ENT.NextTraceTime = 0

if SERVER then
    function ENT:Think()
        if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
            return
        end

        if self.SpawnTime + 0.2 < CurTime() and self.NextTraceTime < CurTime() then
            self.NextTraceTime = CurTime() + 0.1
            local dir = self:GetVelocity():GetNormalized()
            local tr = util.TraceHull({
                start = self:GetPos(),
                endpos = self:GetPos() + dir * 512,
                filter = self,
                mins = Vector(-16, -16, -8),
                maxs = Vector(16, 16, 8)
            })
            if tr.Hit then
                self:Detonate()
            end
        end

    end
end

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
        self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200)
        self:EmitSound("ambient/fire/gascan_ignite1.wav", 100, 100, 0.75)
    end

    for i = 1, math.random(5, 7) do
        local cloud = ents.Create("arc9_uc_napalm")
        if !IsValid(cloud) then return end

        cloud.FireTime = math.Rand(20, 40)
        local vel = VectorRand() * 500

        cloud.Order = i
        cloud:SetPos(self:GetPos() - (self:GetVelocity() * FrameTime()) + VectorRand())
        --cloud:SetAbsVelocity(vel + self:GetVelocity())
        cloud:SetOwner(self:GetOwner())
        cloud:Spawn()
        local phys = cloud:GetPhysicsObject()
        if IsValid(phys) then
            phys:SetVelocityInstantaneous(self:GetVelocity() + vel)
        end

    end
end
