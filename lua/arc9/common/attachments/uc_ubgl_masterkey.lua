ATT.PrintName = ARC9.UC.AttName("uc_ubgl_masterkey")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ExcludeElements = {"uc_noubgl"}

ATT.Icon = Material("entities/att/acwatt_uc_ubgl_masterkey.png", "mips smooth")
ATT.SortOrder = -100000
ATT.Category = "uc_ubgl"
ATT.LHIK = true
ATT.LHIK_Priority = 1
ATT.ModelOffset = Vector(1.0, 0, -1.7)
ATT.Model = "models/weapons/arccw/atts/uc_ubgl_masterkey.mdl"
local fire = {
    ")arccw_uc/common/ub12ga/fire-01.ogg",
    ")arccw_uc/common/ub12ga/fire-02.ogg",
    ")arccw_uc/common/ub12ga/fire-03.ogg",
    ")arccw_uc/common/ub12ga/fire-04.ogg",
    ")arccw_uc/common/ub12ga/fire-05.ogg",
    ")arccw_uc/common/ub12ga/fire-06.ogg",
}
local dist = {
    ")arccw_uc/common/ub12ga/fire-dist-01.ogg",
    ")arccw_uc/common/ub12ga/fire-dist-02.ogg",
    ")arccw_uc/common/ub12ga/fire-dist-03.ogg",
    ")arccw_uc/common/ub12ga/fire-dist-04.ogg",
    ")arccw_uc/common/ub12ga/fire-dist-05.ogg",
    ")arccw_uc/common/ub12ga/fire-dist-06.ogg",
}
local mech = {
    ")arccw_uc/common/ub12ga/mech-01.ogg",
    ")arccw_uc/common/ub12ga/mech-02.ogg",
    ")arccw_uc/common/ub12ga/mech-03.ogg",
    ")arccw_uc/common/ub12ga/mech-04.ogg",
    ")arccw_uc/common/ub12ga/mech-05.ogg",
    ")arccw_uc/common/ub12ga/mech-06.ogg",
}

ATT.UBGL = true
ATT.MuzzleDeviceUBGL = true
ATT.UBGLAmmo = "buckshot"
ATT.UBGLClipSize = 4
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "UBSG"
ATT.HasSightsUBGL = false
ATT.InfiniteAmmoHookUBGL = ARC9.UC.InfiniteUBWAmmo
ATT.ShotgunReloadUBGL = true
ATT.ManualActionUBGL = true

ATT.RPMUBGL = 120
ATT.RecoilUBGL = 1 * ARC9.UC.Recoil
ATT.RecoilUpUBGL = 1
ATT.RecoilSideUBGL = 0
ATT.RecoilRandomUpUBGL = 0
ATT.RecoilRandomSideUBGL = 0.5
ATT.MuzzleParticleUBGL = "muzzleflash_shotgun"

-- 6 pellets to kill up close, 8 at range
ATT.NumUBGL = 8
ATT.NormalizeNumDamageUBGL = false
ATT.DamageMaxUBGL = 18
ATT.DamageMinUBGL = 13
ATT.RangeMinUBGL = 5 * ARC9.UC.Meter
ATT.RangeMaxUBGL = 50 * ARC9.UC.Meter
ATT.DamageTypeUBGL = DMG_BUCKSHOT + DMG_BULLET
ATT.BodyDamageMultsUBGL = ARC9.UC.BodyDamageMults_Shotgun
ATT.PenetrationUBGL = 0
ATT.SpreadUBGL = 100 * ARC9.UC.MOA
ATT.HullSizeUBGL = 4
ATT.PhysBulletMuzzleVelocityUBGL = 250 * ARC9.UC.Meter

ATT.ShootPitchUBGL = 100
ATT.ShootPitchVariationUBGL = 0
ATT.ShootVolumeUBGL = 80
ATT.ShootSoundUBGL = fire
ATT.ShootSoundIndoorUBGL = fire
ATT.LayerSoundUBGL = mech
ATT.LayerSoundIndoorUBGL = mech
ATT.DistantShootSoundUBGL = dist
ATT.DistantShootSoundIndoorUBGL = dist

ATT.IKGunMotionQCA = 2
ATT.IKCameraMotionQCA = 3
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 90)
ATT.DrawFunc = ARC9.UC.ClassicMount("UC_UseClassicM203Mount")

ATT.IKAnimationProxy = {
    ["enter_ubgl"] = {
        Source = "to_armed",
        Time = 0.7,
        EventTable = {
            {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
            {s = "arccw_uc/common/raise.ogg", t = 0.15},
            {s = "arccw_uc/common/grab.ogg", t = 0.3},
        },
    },
    ["exit_ubgl"] = {
        Source = "to_idle",
        Time = 0.7,
        EventTable = {
            {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
            {s = "arccw_uc/common/shoulder.ogg", t = 0.3},
        },
    },
    ["idle_ubgl"] = {
        Source = "idle_armed",
    },
    ["fire_ubgl"] = {
        Source = "fire",
    },
    ["cycle_ubgl"] = {
        Source = "cycle",
        Time = 1,
        MinProgressTime = 0.4,
        EventTable = {
            {s = ")weapons/arccw_ud/870/rack_1.ogg", t = 0.02},
            {s = ")weapons/arccw_ud/870/eject.ogg", t = 0.13},
            {s = ")weapons/arccw_ud/870/rack_2.ogg", t = 0.17},
        },
    },
    ["reload_ubgl_start"] = {
        Source = "sgreload_start",
        Time = 0.7,
        EventTable = {
            {s = ")arccw_uc/common/raise.ogg", t = 0.15},
            {s = ")arccw_uc/common/grab.ogg", t = 0.3},
        },
    },
    ["reload_ubgl_insert"] = {
        Source = "sgreload_insert",
        Time = 0.7,
        EventTable = {
            {s = ")arccw_uc/common/shotgun-insert-alt-01.ogg", t = 0.05},
        },
    },
    ["reload_ubgl_finish"] = {
        Source = "sgreload_end",
        MinProgressTime = 0.5,
        EventTable = {
            {s = ")arccw_uc/common/shoulder.ogg", t = 0.1},
        },
    },
}

ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.SpeedMult = 0.9
ATT.SpeedMultSights = 0.85
