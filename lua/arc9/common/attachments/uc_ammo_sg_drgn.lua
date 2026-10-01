ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_drgn")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.ignite"] = "",
    ["uc.pellet.12"] = "",
}
ATT.CustomCons = {
    ["uc.accuracy.35"] = "",
    ["uc.dragon"] = "",
    ["uc.alwaysphys"] = "",
}
ATT.ActivateElements = {"uc_manualonly", "needsmanual"}

ATT.SortOrder = -1
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
ATT.NumAdd = 12
local dontburn = {
    npc_zombie = true,
    npc_zombie_torso = true,
    npc_zombine = true,
    npc_fastzombie = true,
    npc_fastzombie_torso = true,
    npc_headcrab = true,
    npc_headcrab_fast = true,
    npc_headcrab_black = true,
}
-- Burns targets for longer up close. Zombies and headcrabs take the hit without the burn damage type.
ATT.Hook_BulletImpact = function(wep, data)
    local tr = data.tr

    if SERVER and IsValid(tr.Entity) then
        local d = data.range * ARC9.HUToM
        local dur = 6 - d * 2 / (wep.RangeMax * ARC9.HUToM)
        if dur > 0 then
            tr.Entity:Extinguish()
            tr.Entity:Ignite(dur)
        end

        if dontburn[tr.Entity:GetClass()] then
            data.dmg:SetDamageType(DMG_BUCKSHOT)
        end
    end

    local effect = EffectData()
    effect:SetOrigin(tr.HitPos)
    util.Effect("StunstickImpact", effect)

    if tr.HitWorld then
        util.Decal("FadingScorch", tr.HitPos - tr.HitNormal, tr.HitPos + tr.HitNormal)
    end

    if !CLIENT then return end

    local emitter = ParticleEmitter(tr.HitPos)
    if !IsValid(emitter) then return end

    local dir = tr.Normal
    local reflect = dir:Dot(tr.HitNormal) * 2 * tr.HitNormal - dir
    local vec = (reflect + VectorRand() * 0.1):GetNormalized()

    for i = 1, math.random(16, 32) do
        local ember = emitter:Add("effects/spark", tr.HitPos + VectorRand() * 4)
        ember:SetVelocity(VectorRand() * 100 - vec * math.Rand(100, 500) + Vector(0, 0, math.Rand(75, 150)))
        ember:SetGravity(Vector(0, 0, -600))
        ember:SetDieTime(math.Rand(0.6, 1.2))
        ember:SetStartAlpha(255)
        ember:SetEndAlpha(0)
        ember:SetStartSize(math.Rand(3, 6))
        ember:SetEndSize(0)
        ember:SetRoll(math.Rand(-180, 180))
        ember:SetRollDelta(math.Rand(-0.2, 0.2))
        ember:SetColor(255, 220, 175)
        ember:SetAirResistance(80)
        ember:SetLighting(false)
        ember:SetCollide(true)
        ember:SetBounce(0.5)
    end

    emitter:Finish()
end
ATT.DamageType = DMG_BURN + DMG_BUCKSHOT
ATT.HullSize = 2
ATT.HullSize_Priority = 100
ATT.SpreadAdd = 35 * ARC9.UC.MOA
ATT.DamageMaxMult = .5
ATT.DamageMinMult = .5
ATT.AlwaysPhysBullet = true
ATT.PhysBulletMuzzleVelocity = 100 * ARC9.UC.Meter
ATT.PhysBulletGravityMult = 0.75
ATT.PhysBulletDrag = 4
-- Pellets trail sparks instead of a tracer.
ATT.HookC_DrawBullet = function(wep, bullet)
    if CurTime() - bullet.StartTime <= 0.05 then return false end
    local a = Lerp(bullet.Travelled * bullet.Travelled / 40000, 0, 1)
    if a == 0 then return false end

    -- Do not try to keep emitting while time is frozen (singleplayer pause)
    if bullet.UC_LastTick and bullet.UC_LastTick == CurTime() then return false end
    bullet.UC_LastTick = CurTime()

    local emitter = ParticleEmitter(bullet.Pos)
    if !IsValid(emitter) then return false end

    local vec = bullet.Vel * engine.TickInterval()
    local count = math.ceil(vec:Length() / 12)

    local count2 = math.ceil(math.sqrt(count) / 3 * a)
    for j = 1, count2 do
        local p = bullet.Pos - vec * (j / count2) + VectorRand() * math.Clamp((CurTime() - bullet.StartTime) / 0.5, 0, 8)

        local spark = emitter:Add("effects/spark", p)
        spark:SetVelocity(VectorRand() * 100 + vec * 0.75)
        spark:SetGravity(Vector(math.Rand(-10, 10), math.Rand(-10, 10), -75))
        spark:SetDieTime(math.Rand(0.15, 0.2))
        spark:SetStartAlpha(255)
        spark:SetEndAlpha(0)
        spark:SetStartSize(math.Rand(3, 6))
        spark:SetEndSize(0)
        spark:SetRoll(math.Rand(-180, 180))
        spark:SetRollDelta(math.Rand(-0.2, 0.2))
        spark:SetColor(255, 220, 175)
        spark:SetAirResistance(50)
        spark:SetLighting(false)
        spark:SetCollide(true)
        spark:SetBounce(0.8)
    end

    emitter:Finish()

    return false
end
ATT.MuzzleParticle = "muzzleflash_dragonbreath"
ATT.Hook_PrimaryAttack = function(wep)
    if !IsFirstTimePredicted() or wep:GetUBGL() then return end
    wep:EmitSound("DB_ADD", wep:GetProcessedValue("ShootVolume", true), wep:GetProcessedValue("ShootPitch", true), 1, CHAN_WEAPON - 1)
end
ATT.UC_ShellColor = Color(0.9 * 255, 0.3 * 255, 0.1 * 255)
ATT.UC_Compatible = function(wep)
    if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
end
