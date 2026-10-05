do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ubgl_gp25")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ExcludeElements = {"uc_noubgl"}

    ATT.Icon = Material("entities/att/acwatt_uc_ubgl_gp25.png", "mips smooth")
    ATT.SortOrder = -100000
    ATT.Category = "uc_ubgl"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0.2, 0, -1.2)
    ATT.Model = "models/weapons/arccw/atts/uc_ubgl_gp25_2.mdl"
    local fire = {
        ")^/arccw_uc/common/40mm/fire-01.ogg",
        ")^/arccw_uc/common/40mm/fire-02.ogg",
        ")^/arccw_uc/common/40mm/fire-03.ogg",
        ")^/arccw_uc/common/40mm/fire-04.ogg",
        ")^/arccw_uc/common/40mm/fire-05.ogg",
        ")^/arccw_uc/common/40mm/fire-06.ogg",
    }
    local dist = {
        ")^/arccw_uc/common/40mm/fire-dist-01.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-02.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-03.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-04.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-05.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-06.ogg",
    }
    local mech = {
        ")^/arccw_uc/common/40mm/mech-01.ogg",
        ")^/arccw_uc/common/40mm/mech-02.ogg",
        ")^/arccw_uc/common/40mm/mech-03.ogg",
        ")^/arccw_uc/common/40mm/mech-04.ogg",
        ")^/arccw_uc/common/40mm/mech-05.ogg",
        ")^/arccw_uc/common/40mm/mech-06.ogg",
    }

    ATT.UBGL = true
    ATT.MuzzleDeviceUBGL = true
    ATT.UBGLAmmo = "smg1_grenade"
    ATT.UBGLClipSize = 1
    ATT.NumUBGL = 1
    ATT.UBGLFiremode = 1
    ATT.UBGLFiremodeName = "UBGL"
    ATT.HasSightsUBGL = false
    ATT.InfiniteAmmoHookUBGL = ARC9.UC.InfiniteUBWAmmo

    ATT.RPMUBGL = 120
    -- ArcCW kicks by UBGL_Recoil squared, and sideways by UBGL_RecoilSide squared times UBGL_Recoil.
    ATT.RecoilUBGL = 2 ^ 2 * ARC9.UC.Recoil
    ATT.RecoilUpUBGL = 1
    ATT.RecoilSideUBGL = 0
    ATT.RecoilRandomUpUBGL = 0
    ATT.RecoilRandomSideUBGL = 0.5
    ATT.MuzzleParticleUBGL = "uc_muzzleflash_m79"

    ATT.ShootEntForceUBGL = 2500
    ATT.ShootEntInheritPlayerVelocityUBGL = true
    -- Lower than the M79 (200) for balance reasons
    ATT.ShootEntDataUBGL = {UC_Damage = 130}

    ATT.ShootPitchUBGL = 100
    ATT.ShootPitchVariationUBGL = 0
    ATT.ShootVolumeUBGL = 100
    ATT.ShootSoundUBGL = fire
    ATT.ShootSoundIndoorUBGL = fire
    ATT.LayerSoundUBGL = mech
    ATT.LayerSoundIndoorUBGL = mech
    ATT.DistantShootSoundUBGL = dist
    ATT.DistantShootSoundIndoorUBGL = dist

    ATT.IKGunMotionQCA = 2
    ATT.IKCameraMotionQCA = nil
    ATT.DrawFunc = ARC9.UC.ClassicMount("UC_UseClassicGP25Mount")

    ATT.IKAnimationProxy = {
        ["enter_ubgl"] = {
            Source = "to_armed",
            Time = 0.7,
            EventTable = {
                {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
                {s = "arccw_uc/common/raise.ogg", t = 0.2},
                {s = "arccw_uc/common/grab.ogg", t = 0.5},
            },
        },
        ["exit_ubgl"] = {
            Source = "to_idle",
            Time = 0.7,
            EventTable = {
                {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
                {s = "arccw_uc/common/shoulder.ogg", t = 0.4},
            },
        },
        ["idle_ubgl"] = {
            Source = "idle_armed",
        },
        ["fire_ubgl"] = {
            Source = "fire",
        },
        ["reload_ubgl"] = {
            Source = "reload",
            Time = 2.75,
            EventTable = {
                {s = {"arccw_uc/common/rattle1.ogg", "arccw_uc/common/rattle2.ogg", "arccw_uc/common/rattle3.ogg"}, t = 0},
                {s = "arccw_uc/common/magpouch_replace_small.ogg", t = 0.2},
                {s = "arccw_uc/common/40mm/203insert.ogg", t = 1.0},
                {s = "arccw_uc/common/shoulder.ogg", t = 1.3},
                {s = "arccw_uc/common/shoulder.ogg", t = 1.9},
            },
        },
    }

    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.SpeedMult = 0.9
    ATT.SpeedMultSights = 0.85

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.caseless",
            ShootEntUBGL = "arc9_uc_40mm_he",
            ShootEntForceUBGL = 2500 * 0.85,
            ShootEntDataUBGL = {UC_Damage = 130 * 0.75},
        },
        {
            PrintName = "uc.toggle.stun",
            ShootEntUBGL = "arc9_uc_40mm_flash",
        },
        {
            PrintName = "uc.toggle.incendiary",
            ShootEntUBGL = "arc9_uc_40mm_incendiary",
        },
    }

    ARC9.LoadAttachment(ATT, "uc_ubgl_gp25")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ubgl_hk79")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ExcludeElements = {"uc_noubgl"}

    ATT.Icon = Material("entities/att/acwatt_uc_ubgl_hk79.png", "mips smooth")
    ATT.Ignore = true
    ATT.SortOrder = -100000
    ATT.Category = "uc_ubgl"
    ATT.LHIK = true
    ATT.ModelOffset = Vector(3.2, 0, -1.5)
    ATT.Model = "models/weapons/arccw/atts/uc_ubgl_hk79_3.mdl"
    local fire = {
        ")^/arccw_uc/common/40mm/fire-01.ogg",
        ")^/arccw_uc/common/40mm/fire-02.ogg",
        ")^/arccw_uc/common/40mm/fire-03.ogg",
        ")^/arccw_uc/common/40mm/fire-04.ogg",
        ")^/arccw_uc/common/40mm/fire-05.ogg",
        ")^/arccw_uc/common/40mm/fire-06.ogg",
    }
    local dist = {
        ")^/arccw_uc/common/40mm/fire-dist-01.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-02.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-03.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-04.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-05.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-06.ogg",
    }
    local mech = {
        ")^/arccw_uc/common/40mm/mech-01.ogg",
        ")^/arccw_uc/common/40mm/mech-02.ogg",
        ")^/arccw_uc/common/40mm/mech-03.ogg",
        ")^/arccw_uc/common/40mm/mech-04.ogg",
        ")^/arccw_uc/common/40mm/mech-05.ogg",
        ")^/arccw_uc/common/40mm/mech-06.ogg",
    }

    ATT.UBGL = true
    ATT.MuzzleDeviceUBGL = true
    ATT.UBGLAmmo = "smg1_grenade"
    ATT.UBGLClipSize = 1
    ATT.NumUBGL = 1
    ATT.UBGLFiremode = 1
    ATT.UBGLFiremodeName = "UBGL"
    ATT.HasSightsUBGL = false
    ATT.InfiniteAmmoHookUBGL = ARC9.UC.InfiniteUBWAmmo

    ATT.RPMUBGL = 120
    -- ArcCW kicks by UBGL_Recoil squared, and sideways by UBGL_RecoilSide squared times UBGL_Recoil.
    ATT.RecoilUBGL = 2 ^ 2 * ARC9.UC.Recoil
    ATT.RecoilUpUBGL = 1
    ATT.RecoilSideUBGL = 0
    ATT.RecoilRandomUpUBGL = 0
    ATT.RecoilRandomSideUBGL = 0.5
    ATT.MuzzleParticleUBGL = "uc_muzzleflash_m79"

    ATT.ShootEntForceUBGL = 2500
    ATT.ShootEntInheritPlayerVelocityUBGL = true
    -- Lower than the M79 (200) for balance reasons
    ATT.ShootEntDataUBGL = {UC_Damage = 130}

    ATT.ShootPitchUBGL = 100
    ATT.ShootPitchVariationUBGL = 0
    ATT.ShootVolumeUBGL = 100
    ATT.ShootSoundUBGL = fire
    ATT.ShootSoundIndoorUBGL = fire
    ATT.LayerSoundUBGL = mech
    ATT.LayerSoundIndoorUBGL = mech
    ATT.DistantShootSoundUBGL = dist
    ATT.DistantShootSoundIndoorUBGL = dist

    ATT.IKGunMotionQCA = 2
    ATT.IKCameraMotionQCA = 3
    ATT.DrawFunc = ARC9.UC.ClassicMount("UC_UseClassicHK79Mount")

    ATT.IKAnimationProxy = {
        ["enter_ubgl"] = {
            Source = "to_armed",
            Time = 0.7,
            EventTable = {
                {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
                {s = "arccw_uc/common/raise.ogg", t = 0.2},
                {s = "arccw_uc/common/grab.ogg", t = 0.5},
            },
        },
        ["exit_ubgl"] = {
            Source = "to_idle",
            Time = 0.7,
            EventTable = {
                {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
                {s = "arccw_uc/common/shoulder.ogg", t = 0.4},
            },
        },
        ["idle_ubgl"] = {
            Source = "idle_armed",
        },
        ["fire_ubgl"] = {
            Source = "fire",
        },
        ["reload_ubgl"] = {
            Source = "reload",
            Time = 3,
            EventTable = {
                {s = {"arccw_uc/common/rattle1.ogg", "arccw_uc/common/rattle2.ogg", "arccw_uc/common/rattle3.ogg"}, t = 0},
                {s = "arccw_uc/common/40mm/203open.ogg", t = 0.2},
                {s = "arccw_uc/common/magpouch_replace_small.ogg", t = 0.9},
                {s = "arccw_uc/common/40mm/203insert.ogg", t = 1.7},
                {s = "arccw_uc/common/shoulder.ogg", t = 2.0},
                {s = "arccw_uc/common/40mm/203close.ogg", t = 2.2},
                {s = "arccw_uc/common/shoulder.ogg", t = 2.7},
            },
        },
    }

    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.SpeedMult = 0.9
    ATT.SpeedMultSights = 0.85

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.high_velocity",
            ShootEntUBGL = "arc9_uc_40mm_hv",
            ShootEntForceUBGL = 2500 * 2,
            ShootEntDataUBGL = {UC_Damage = 130 * 0.85},
        },
        {
            PrintName = "uc.toggle.dual_purpose",
            ShootEntUBGL = "arc9_uc_40mm_dp",
            ShootEntDataUBGL = {UC_Damage = 130 * 0.6},
        },
        {
            PrintName = "uc.toggle.airburst",
            ShootEntUBGL = "arc9_uc_40mm_airburst",
            ShootEntForceUBGL = 2500 * 0.75,
        },
    }

    ARC9.LoadAttachment(ATT, "uc_ubgl_hk79")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_ubgl_m203")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ExcludeElements = {"uc_noubgl"}

    ATT.Icon = Material("entities/att/acwatt_uc_ubgl_m203.png", "mips smooth")
    ATT.SortOrder = -100000
    ATT.Category = "uc_ubgl"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0, 0, 0)
    ATT.Model = "models/weapons/arccw/atts/uc_ubgl_m203.mdl"
    local fire = {
        ")^/arccw_uc/common/40mm/fire-01.ogg",
        ")^/arccw_uc/common/40mm/fire-02.ogg",
        ")^/arccw_uc/common/40mm/fire-03.ogg",
        ")^/arccw_uc/common/40mm/fire-04.ogg",
        ")^/arccw_uc/common/40mm/fire-05.ogg",
        ")^/arccw_uc/common/40mm/fire-06.ogg",
    }
    local dist = {
        ")^/arccw_uc/common/40mm/fire-dist-01.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-02.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-03.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-04.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-05.ogg",
        ")^/arccw_uc/common/40mm/fire-dist-06.ogg",
    }
    local mech = {
        ")^/arccw_uc/common/40mm/mech-01.ogg",
        ")^/arccw_uc/common/40mm/mech-02.ogg",
        ")^/arccw_uc/common/40mm/mech-03.ogg",
        ")^/arccw_uc/common/40mm/mech-04.ogg",
        ")^/arccw_uc/common/40mm/mech-05.ogg",
        ")^/arccw_uc/common/40mm/mech-06.ogg",
    }

    ATT.UBGL = true
    ATT.MuzzleDeviceUBGL = true
    ATT.UBGLAmmo = "smg1_grenade"
    ATT.UBGLClipSize = 1
    ATT.NumUBGL = 1
    ATT.UBGLFiremode = 1
    ATT.UBGLFiremodeName = "UBGL"
    ATT.HasSightsUBGL = false
    ATT.InfiniteAmmoHookUBGL = ARC9.UC.InfiniteUBWAmmo

    ATT.RPMUBGL = 120
    -- ArcCW kicks by UBGL_Recoil squared, and sideways by UBGL_RecoilSide squared times UBGL_Recoil.
    ATT.RecoilUBGL = 2 ^ 2 * ARC9.UC.Recoil
    ATT.RecoilUpUBGL = 1
    ATT.RecoilSideUBGL = 0
    ATT.RecoilRandomUpUBGL = 0
    ATT.RecoilRandomSideUBGL = 0.5
    ATT.MuzzleParticleUBGL = "uc_muzzleflash_m79"

    ATT.ShootEntForceUBGL = 2500
    ATT.ShootEntInheritPlayerVelocityUBGL = true
    -- Lower than the M79 (200) for balance reasons
    ATT.ShootEntDataUBGL = {UC_Damage = 130}

    ATT.ShootPitchUBGL = 100
    ATT.ShootPitchVariationUBGL = 0
    ATT.ShootVolumeUBGL = 100
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
                {s = "arccw_uc/common/raise.ogg", t = 0.2},
                {s = "arccw_uc/common/grab.ogg", t = 0.5},
            },
        },
        ["exit_ubgl"] = {
            Source = "to_idle",
            Time = 0.7,
            EventTable = {
                {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
                {s = "arccw_uc/common/shoulder.ogg", t = 0.4},
            },
        },
        ["idle_ubgl"] = {
            Source = "idle_armed",
        },
        ["fire_ubgl"] = {
            Source = "fire",
        },
        ["reload_ubgl"] = {
            Source = "reload",
            Time = 2.75,
            EventTable = {
                {s = {"arccw_uc/common/rattle1.ogg", "arccw_uc/common/rattle2.ogg", "arccw_uc/common/rattle3.ogg"}, t = 0},
                {s = "arccw_uc/common/40mm/203open.ogg", t = 0.2},
                {s = {"arccw_uc/common/40mm/casing-40mm-01.ogg", "arccw_uc/common/40mm/casing-40mm-02.ogg", "arccw_uc/common/40mm/casing-40mm-03.ogg", "arccw_uc/common/40mm/casing-40mm-04.ogg", "arccw_uc/common/40mm/casing-40mm-05.ogg", "arccw_uc/common/40mm/casing-40mm-06.ogg"}, t = 0.7},
                {s = "arccw_uc/common/magpouch_replace_small.ogg", t = 0.9},
                {s = "arccw_uc/common/40mm/203insert.ogg", t = 1.2},
                {s = "arccw_uc/common/shoulder.ogg", t = 1.5},
                {s = "arccw_uc/common/40mm/203close.ogg", t = 1.7},
                {s = "arccw_uc/common/shoulder.ogg", t = 2.3},
            },
        },
    }

    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.SpeedMult = 0.9
    ATT.SpeedMultSights = 0.85

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.high_explosive",
            ShootEntUBGL = "arc9_uc_40mm_he",
        },
        {
            PrintName = "uc.toggle.smoke",
            ShootEntUBGL = "arc9_uc_40mm_smoke",
        },
        {
            PrintName = "uc.toggle.buckshot",
            NumUBGL = 20,
            NormalizeNumDamageUBGL = false,
            DamageMaxUBGL = 18,
            DamageMinUBGL = 6,
            RangeMinUBGL = 5 * ARC9.UC.Meter,
            RangeMaxUBGL = 50 * ARC9.UC.Meter,
            DamageTypeUBGL = DMG_BUCKSHOT + DMG_BULLET,
            PenetrationUBGL = 0,
            SpreadUBGL = 50 * ARC9.UC.MOA,
            HullSizeUBGL = 4,
            PhysBulletMuzzleVelocityUBGL = 250 * ARC9.UC.Meter,
            ShootSoundUBGL = ")^/arccw_uc/common/gl_fire_buck.ogg",
            ShootSoundIndoorUBGL = ")^/arccw_uc/common/gl_fire_buck.ogg",
            LayerSoundUBGL = "",
            LayerSoundIndoorUBGL = "",
            DistantShootSoundUBGL = ")^/arccw_uc/common/gl_fire_buck_dist.ogg",
            DistantShootSoundIndoorUBGL = ")^/arccw_uc/common/gl_fire_buck_dist.ogg",
        },
    }

    ARC9.LoadAttachment(ATT, "uc_ubgl_m203")
end

do
    local ATT = {}

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
    -- ArcCW kicks by UBGL_Recoil squared, and sideways by UBGL_RecoilSide squared times UBGL_Recoil.
    ATT.RecoilUBGL = 1 * ARC9.UC.Recoil
    ATT.RecoilUpUBGL = 1
    ATT.RecoilSideUBGL = 0
    ATT.RecoilRandomUpUBGL = 0
    ATT.RecoilRandomSideUBGL = 0.5 ^ 2 / 1
    ATT.MuzzleParticleUBGL = "uc_muzzleflash_shotgun"

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

    ARC9.LoadAttachment(ATT, "uc_ubgl_masterkey")
end
