do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_ap")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.api.1"] = "",
    }

    ATT.SortOrder = 5
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.RangeMaxMult = 2
    ATT.RangeMinMult = 2
    ATT.PenetrationMult = 2
    ATT.DamageMaxMult = 0.9
    ATT.DamageMinMult = 0.9
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.UC_AP = true

    ARC9.LoadAttachment(ATT, "uc_ammo_ap")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_blank")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.infiniteammo"] = "",
    }
    ATT.CustomCons = {
        ["uc.noprojectile"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_ammo_blank.png", "mips smooth")
    ATT.Category = {"uc_ammo","ud_ammo_shotgun"}
    ATT.SortOrder = -9001
    ATT.AttNotForNPCs = true
    ATT.Num = 0
    ATT.Num_Priority = 9001
    ATT.InfiniteAmmo = true
    ATT.UC_ShellColor = Color(0.3 * 255, 0.3 * 255, 0.3 * 255)

    ARC9.LoadAttachment(ATT, "uc_ammo_blank")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_jhp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 4
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.RangeMinMult = 0.5
    ATT.PenetrationMult = 0.25
    ATT.DamageMaxMult = 1.17
    ATT.DamageMinMult = 0.85
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_jhp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_jsp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 3
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.PenetrationMult = 0.6
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 1.8 * 0.8
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_jsp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_lowtr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.lowind"] = "",
    }
    ATT.CustomCons = {
        ["uc.tracer"] = "",
    }

    ATT.SortOrder = 1
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.InvAtt = "uc_ammo_tr"
    ATT.UC_HipDispersionMult = 0.9
    ATT.TracerFinalMagHook = function(wep, final)
        return math.Clamp(math.ceil(wep:GetValue("ClipSize") * 0.2), 5, 20)
    end
    ATT.TracerNum = 5
    ATT.TracerEffect = "arc9_uc_tracer"
    ATT.Hook_PrimaryAttack = function(wep)
        if !IsFirstTimePredicted() or wep:GetUBGL() then return end
        -- This hook runs before ARC9 consumes the round.
        local clip = wep:Clip1() - wep:GetProcessedValue("AmmoPerShot", true)
        if clip <= 5 and clip > 0 then
            wep:EmitSound("physics/metal/metal_computer_impact_bullet3.wav", wep:GetProcessedValue("ShootVolume", true),
                wep:GetProcessedValue("ShootPitch", true) + (5 - clip) * 7, 0.2, CHAN_AUTO)
        end
    end
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.green",
            TracerColor = Color(100, 255, 100),
            TracerSize = 1.5,
        },
        {
            PrintName = "uc.toggle.red",
            TracerColor = Color(255, 100, 100),
            TracerSize = 1.5,
        },
        {
            PrintName = "uc.toggle.white",
            TracerColor = Color(255, 255, 255),
            TracerSize = 1.5,
        }
    }
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_lowtr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_baton")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.baton"] = "",
    }
    ATT.CustomCons = {
        ["uc.alwaysphys"] = "",
    }
    ATT.ActivateElements = {"uc_manualonly", "needsmanual"}

    ATT.SortOrder = 0
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
    ATT.Num = 1
    ATT.Num_Priority = 2
    ATT.RecoilMult = .5
    local path = ")^arccw_uc/common/"
    -- Hit players and NPCs may drop their weapon, more likely up close.
    ATT.Hook_BulletImpact = function(wep, data)
        if CLIENT then return end
        local tr = data.tr
        local ent = tr.Entity

        if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC()) and IsValid(ent:GetActiveWeapon()) then
            local delta = math.Clamp(data.range / wep:GetProcessedValue("RangeMax"), 0, 1)
            local dmgmax = wep:GetProcessedValue("DamageMax")
            local dmg = Lerp(delta, dmgmax, wep:GetProcessedValue("DamageMin")) -- one day I will understand this math
            local chance = math.random() * dmgmax

            if chance <= dmg * .5 then -- Chance for a weapon drop increases the closer the shooter is to the target, but is never guaranteed
                ent:DropWeapon()
                if ent:IsPlayer() then
                    ent:ScreenFade(1, Color(128, 0, 0, 64), .5, 0)
                    ent:ViewPunch(Angle(3, 0, 0))
                end
            end
            if ent:IsNPC() then
                ent:SetSchedule(SCHED_FLINCH_PHYSICS)
            end
        end
    end
    ATT.ShootSound = {path .. "shotgun-lesslethal-01.ogg", path .. "shotgun-lesslethal-02.ogg"}
    ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail
    ATT.DamageMaxMult = .2
    ATT.DamageMinMult = .2
    ATT.PenetrationMult = 0
    ATT.RangeMaxMult = .33
    ATT.RangeMinMult = .33 * .33
    ATT.DamageType = DMG_CLUB
    ATT.AlwaysPhysBullet = true
    ATT.PhysBulletMuzzleVelocityMult = 0.5
    ATT.PhysBulletGravityMult = 2
    ATT.UC_ShellColor = Color(0.6 * 255, 0.2 * 255, 0.6 * 255)
    ATT.UC_Compatible = function(wep)
        if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_baton")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_bird")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.pellet.2x"] = "",
    }
    ATT.CustomCons = {
        ["uc.accuracy.20"] = "",
    }

    ATT.SortOrder = 4
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
    ATT.NumMult = 2
    ATT.DamageMaxMult = 0.85
    ATT.DamageMinMult = 0.85
    ATT.RecoilMult = 0.8
    ATT.SpreadAdd = 20 * ARC9.UC.MOA
    ATT.HullSizeMult = 0.1
    ATT.UC_ShellColor = Color(0.4 * 255, 0.6 * 255, 0.8 * 255)
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_bird")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_bird2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.pellet.8"] = "",
    }
    ATT.CustomCons = {
        ["uc.accuracy.10"] = "",
    }

    ATT.SortOrder = 4
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
    ATT.InvAtt = "uc_ammo_sg_bird"
    ATT.NumAdd = 8
    ATT.DamageMaxMult = 0.9
    ATT.DamageMinMult = 0.9
    ATT.RecoilMult = 0.8
    ATT.SpreadAdd = 10 * ARC9.UC.MOA
    ATT.UC_ShellColor = Color(0.4 * 255, 0.6 * 255, 0.8 * 255)
    ATT.UC_Compatible = function(wep)
        if !wep:GetValue("UC_Shotshell") then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_bird2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_confetti")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.confetti"] = "",
        ["uc.infiniteammo"] = "",
    }
    ATT.CustomCons = {
        ["uc.noprojectile"] = "",
    }
    ATT.ActivateElements = {"uc_manualonly"}

    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
    ATT.SortOrder = -9001
    ATT.AttNotForNPCs = true
    ATT.RecoilMult = .2
    ATT.Num = 0
    ATT.Num_Priority = 9001
    ATT.InfiniteAmmo = true
    local path = ")^arccw_uc/common/"
    ATT.ShootSound = {path .. "confetti-01.ogg", path .. "confetti-02.ogg", path .. "confetti-03.ogg", path .. "confetti-04.ogg", path .. "confetti-05.ogg", path .. "confetti-06.ogg"}
    ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail
    ATT.Hook_PrimaryAttack = function(wep)
        if !IsFirstTimePredicted() or wep:GetUBGL() then return end
        local owner = wep:GetOwner()
        local effect = EffectData()
        effect:SetOrigin(owner:EyePos() + owner:GetAimVector() * 32)
        effect:SetStart(owner:GetAimVector())
        util.Effect("arc9_uc_confetti", effect)
    end
    ATT.UC_ShellColor = Color(255, 127, 182)
    ATT.UC_Compatible = function(wep)
        if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_confetti")
end

do
    local ATT = {}

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
        if wep:GetUBGL() then return end
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
    end

    -- Physical bullets use ARC9's client impact hook for local ember particles.
    ATT.Hook_PhysBulletImpact = function(wep, data)
        if data.bullet.Secondary then return end
        local tr = data.tr
        local emitter = ParticleEmitter(tr.HitPos)
        if !IsValid(emitter) then return end

        local dir = tr.Normal
        local reflect = dir:Dot(tr.HitNormal) * 2 * tr.HitNormal - dir
        local vec = (reflect + VectorRand() * 0.1):GetNormalized()

        for i = 1, math.random(16, 32) do
            local ember = emitter:Add("effects/spark", tr.HitPos + VectorRand() * 4)
            if !ember then break end
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
        if bullet.Secondary then return false end
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
            if !spark then break end
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

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_drgn")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_flech")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.pellet.8"] = "",
        ["uc.penetration.12"] = "",
    }

    ATT.SortOrder = 3
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
    ATT.NumAdd = 8
    ATT.SpreadMult = .5
    ATT.PenetrationAdd = 12
    ATT.RangeMaxMult = .75
    ATT.RangeMinMult = .75
    ATT.DamageMaxMult = .8
    ATT.HullSizeMult = 0.5
    ATT.UC_ShellColor = Color(0.2 * 255, 0.2 * 255, 0.5 * 255)
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_flech")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_frag")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.explode"] = "",
    }
    ATT.CustomCons = {
        ["uc.alwaysphys"] = "",
    }
    ATT.ActivateElements = {"uc_manualonly", "uc_slug"}

    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.SortOrder = 2
    ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
    ATT.PenetrationMult = 0.1
    ATT.DamageMaxMult = 0.75
    ATT.DamageMinMult = 0.75
    ATT.RangeMaxMult = .5
    ATT.RangeMinMult = .5
    ATT.UC_HipDispersionMult = 1.5
    ATT.Num = 1
    ATT.Num_Priority = 99
    ATT.HullSize = 0
    ATT.AlwaysPhysBullet = true
    ATT.PhysBulletGravityMult = 1.5
    -- The slug explodes instead of hitting directly.
    ATT.Hook_GetDamageAtRange = function(wep, data)
        data.dmg = 0
        return data
    end
    ATT.Hook_BulletImpact = function(wep, data)
        if SERVER then
            local tr = data.tr
            local delta = math.Clamp(data.range / wep:GetProcessedValue("RangeMax"), 0, 1)
            local dmg = Lerp(delta, wep:GetProcessedValue("DamageMax"), wep:GetProcessedValue("DamageMin"))

            util.BlastDamage(wep, wep:GetOwner(), tr.HitPos, 128, dmg)

            local eff = EffectData()
            eff:SetOrigin(tr.HitPos)
            eff:SetMagnitude(4)
            eff:SetScale(0.5)
            eff:SetRadius(4)
            util.Effect("Sparks", eff)
            util.Effect("Explosion", eff)
            util.Decal("Scorch", tr.HitPos - tr.HitNormal, tr.HitPos + tr.HitNormal, ents.GetAll())
        end
    end
    ATT.UC_ShellColor = Color(0.9 * 255, 0.7 * 255, 0.3 * 255)
    ATT.UC_Compatible = function(wep)
        if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_frag")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_magnum")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.pellet.0.75"] = "",
        ["uc.accuracy.10"] = "",
    }

    ATT.SortOrder = 5
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
    ATT.NumMult = 0.75
    ATT.DamageMaxMult = 1.25
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 2 * 0.5
    ATT.RecoilMult = 1.3
    ATT.SpreadAdd = 10 * ARC9.UC.MOA
    ATT.HullSizeMult = 1.5
    ATT.UC_ShellColor = Color(0.8 * 255, 0.8 * 255, 0.8 * 255)
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_magnum")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_slug")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.penetration.8"] = "",
    }
    ATT.ActivateElements = {"uc_slug"}

    ATT.SortOrder = 1
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
    ATT.Num = 1
    ATT.Num_Priority = 2
    ATT.DamageMaxMult = .75
    ATT.DamageMinMult = .5
    ATT.SpreadMult = .3
    ATT.PenetrationAdd = 8
    ATT.RangeMinMult = 2 * 2.5
    ATT.RangeMaxMult = 2.5
    ATT.UC_HipDispersionMult = 2
    ATT.HullSize = 0
    ATT.DamageType = DMG_BULLET
    ATT.UC_ShellColor = Color(0.2 * 255, 0.45 * 255, 0.2 * 255)
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell")  then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_sg_slug")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_tmj")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 2
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.DamageMinMult = 1.2
    ATT.DamageMaxMult = 0.9
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_tmj")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ammo_tr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.tracer"] = "",
    }

    ATT.SortOrder = 1
    ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    ATT.Category = "uc_ammo"
    ATT.UC_HipDispersionMult = 0.85
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.green",
            TracerColor = Color(100, 255, 100),
            TracerSize = 1.5,
        },
        {
            PrintName = "uc.toggle.red",
            TracerColor = Color(255, 100, 100),
            TracerSize = 1.5,
        },
        {
            PrintName = "uc.toggle.white",
            TracerColor = Color(255, 255, 255),
            TracerSize = 1.5,
        }
    }
    ATT.TracerEffect = "arc9_uc_tracer"
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_ammo_tr")
end
