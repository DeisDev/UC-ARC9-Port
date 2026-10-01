EFFECT.Sounds = {}
EFFECT.Pitch = 90
EFFECT.Scale = 1.5
EFFECT.PhysScale = 1
EFFECT.Material = nil
EFFECT.JustOnce = true
EFFECT.AlreadyPlayedSound = false
EFFECT.ShellTime = 1

EFFECT.SpawnTime = 0

EFFECT.VMContext = true

EFFECT.UC_ShellColor = color_white

local arc9_eject_time = GetConVar("arc9_eject_time")

-- ArcCW passed a fixed ejection magnitude to its shell effects.
local ejectmag = 100

function EFFECT:Init(data)
    local att = data:GetAttachment()
    local ent = data:GetEntity()

    if !IsValid(ent) or !ent.ARC9 then self:Remove() return end

    local owner, lp = ent:GetOwner(), LocalPlayer()
    if !IsValid(owner) then self:Remove() return end

    local mdl

    -- TPIK can run in first person too; use the model visible to the shooter.
    if owner != lp or lp:ShouldDrawLocalPlayer() then
        mdl = (ent.WModel or {})[1] or ent
        self.VMContext = false
    else
        mdl = lp:GetViewModel()
        table.insert(ent.ActiveEffects, self)
    end

    if !IsValid(mdl) then self:Remove() return end

    local attdata = mdl:GetAttachment(att)
    if !attdata then self:Remove() return end

    local origin, ang = attdata.Pos, attdata.Ang

    local rotate = ent:GetProcessedValue("ShellRotate", true) or 0
    local rotateang = ent:GetProcessedValue("ShellRotateAngle", true) or angle_zero

    ang:RotateAroundAxis(ang:Right(), -90 + rotate)

    ang:RotateAroundAxis(ang:Right(), rotateang[1])
    ang:RotateAroundAxis(ang:Up(), rotateang[2])
    ang:RotateAroundAxis(ang:Forward(), rotateang[3])

    local dir = ang:Up()

    self.Model = ent:GetProcessedValue("ShellModel", true)
    self.Material = ent:GetProcessedValue("ShellMaterial", true)
    self.Scale = ent:GetProcessedValue("ShellScale", true) or 1
    self.PhysScale = ent:GetProcessedValue("ShellPhysScale", true) or 1
    self.Pitch = ent:GetProcessedValue("ShellPitch", true) or 100
    self.Sounds = ent:GetProcessedValue("ShellSounds", true)
    self.ShellTime = (ent:GetProcessedValue("ShellTime", true) or 0) + arc9_eject_time:GetFloat()

    if self.Sounds == "autocheck" then
        local t = ent:GetPrimaryAmmoType()
        local calibre = ""

        for title, value in pairs(ent:GetValue("Trivia") or {}) do
            if isstring(title) and string.StartsWith(title, "Calibre") and isstring(value) then
                calibre = ARC9:GetPhrase(value) or value
                break
            end
        end

        if t == game.GetAmmoID("buckshot") then
            self.Sounds = ARC9.ShotgunShellSoundsTable
        elseif string.find(calibre, ".22", 1, true) then
            self.Sounds = ARC9.TinyShellSoundsTable
        elseif t == game.GetAmmoID("pistol") or t == game.GetAmmoID("357") or t == game.GetAmmoID("AlyxGun") then
            self.Sounds = ARC9.PistolShellSoundsTable
        elseif t == game.GetAmmoID("ar2") then
            self.Sounds = ARC9.Shell308SoundsTable
        else
            self.Sounds = ARC9.ShellSoundsTable
        end
    end

    self.Sounds = self.Sounds or ARC9.ShellSoundsTable

    self.UC_ShellColor = ent:GetProcessedValue("UC_ShellColor", true) or self.UC_ShellColor

    if self.VMContext then origin = ARC9.FormatViewModelAttachment(origin, false) end

    self:SetPos(origin)
    self:SetModel(self.Model or "")
    self:SetModelScale(self.Scale)
    self:DrawShadow(true)
    self:SetAngles(ang)

    if self.Material then
        self:SetMaterial(self.Material)
    end

    if self.VMContext then self:SetNoDraw(true) end

    local pb_vert = 2 * self.Scale * self.PhysScale
    local pb_hor = 0.5 * self.Scale * self.PhysScale

    self:PhysicsInitBox(Vector(-pb_vert, -pb_hor, -pb_hor), Vector(pb_vert, pb_hor, pb_hor))

    self:SetCollisionGroup(COLLISION_GROUP_INTERACTIVE_DEBRIS)

    local phys = self:GetPhysicsObject()

    local plyvel = owner:GetAbsVelocity()

    phys:Wake()
    phys:SetDamping(0, 0)
    phys:SetMass(1)
    phys:SetMaterial("gmod_silent")

    phys:SetVelocity((dir * ejectmag * math.Rand(1, 2)) + plyvel)

    phys:AddAngleVelocity(VectorRand() * 100)
    phys:AddAngleVelocity(ang:Up() * 2500 * math.Rand(0.75, 1.25))

    self.HitPitch = self.Pitch + math.Rand(-5, 5)

    local emitter = ParticleEmitter(origin)

    for i = 1, 3 do
        local particle = emitter:Add("particles/smokey", origin + (dir * 2))

        if particle then
            particle:SetVelocity(VectorRand() * 10 + (dir * i * math.Rand(48, 64)) + plyvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.05, 0.15))
            particle:SetStartAlpha(math.Rand(40, 60))
            particle:SetEndAlpha(0)
            particle:SetStartSize(0)
            particle:SetEndSize(math.Rand(18, 24))
            particle:SetRoll(math.rad(math.Rand(0, 360)))
            particle:SetRollDelta(math.Rand(-1, 1))
            particle:SetLighting(true)
            particle:SetAirResistance(96)
            particle:SetGravity(Vector(-7, 3, 20))
            particle:SetColor(150, 150, 150)
        end
    end

    emitter:Finish()

    self.SpawnTime = CurTime()
end

function EFFECT:PhysicsCollide()
    self.VMContext = false
    self:SetNoDraw(false)

    if self.AlreadyPlayedSound and self.JustOnce then return end

    sound.Play(self.Sounds[math.random(#self.Sounds)], self:GetPos(), 65, self.HitPitch, 1)

    self.AlreadyPlayedSound = true
end

function EFFECT:Think()
    if self.VMContext and self:GetVelocity():Length() < 5 then
        self.VMContext = false
        self:SetNoDraw(false)
    end

    if (self.SpawnTime + self.ShellTime) <= CurTime() then
        if !IsValid(self) then return end
        self:SetRenderFX(kRenderFxFadeFast)
        if (self.SpawnTime + self.ShellTime + 1) <= CurTime() then
            if !IsValid(self:GetPhysicsObject()) then return end
            self:GetPhysicsObject():EnableMotion(false)
            if (self.SpawnTime + self.ShellTime + 1.5) <= CurTime() then
                self:Remove()
                return
            end
        end
    end
    return true
end

function EFFECT:Render()
    if !IsValid(self) then return end
    self:DrawModel()
end
