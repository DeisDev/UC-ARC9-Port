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
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "UBGL"
ATT.HasSightsUBGL = false
ATT.InfiniteAmmoHookUBGL = ARC9.UC.InfiniteUBWAmmo

ATT.RPMUBGL = 120
ATT.RecoilUBGL = 2 * ARC9.UC.Recoil
ATT.RecoilUpUBGL = 1
ATT.RecoilSideUBGL = 0
ATT.RecoilRandomUpUBGL = 0
ATT.RecoilRandomSideUBGL = 0.5
ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ShootEntForceUBGL = 2500
ATT.ShootEntInheritPlayerVelocityUBGL = true
-- Lower than the M79 (200) for balance reasons
ATT.ShootEntDataUBGL = {UC_Damage = 130}

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
