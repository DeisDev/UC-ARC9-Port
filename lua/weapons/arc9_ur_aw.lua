SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.PostModify = ARC9.UC.PostModify
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.SubCategory = "ur.title"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.AdminOnly = false
SWEP.Slot = 3
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/c_ur_aw.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_aw.mdl"
SWEP.ViewModelFOVBase = 70
SWEP.DefaultBodygroups = "000000000000"
SWEP.BulletBones = {
    [2] = "mag_round",
}

SWEP.DamageMax = 80
SWEP.DamageMin = 50
SWEP.RangeMin = 100 * ARC9.UC.Meter
SWEP.RangeMax = 400 * ARC9.UC.Meter
SWEP.Penetration = 18
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 850 * ARC9.UC.Meter
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults
SWEP.ChamberSize = 1
SWEP.ClipSize = 5
SWEP.Recoil = 1.75 * ARC9.UC.Recoil
SWEP.RecoilSide = 0
SWEP.RecoilRandomSide = 0.75 / 1.75
SWEP.VisualRecoil = 5
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 1.75
SWEP.Sway = 0.2
SWEP.RPM = 60 / (60 / 80)
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "fcg.bolt",
        Mode = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120
SWEP.ReloadInSights = true
SWEP.Spread = .25 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 1250 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 500 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 700 * ARC9.UC.Dispersion
SWEP.Ammo = "ar2"
SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3
SWEP.MalfunctionMeanShotsToFail = 200
SWEP.Speed = 0.8
SWEP.SpeedMultSights = 0.625
SWEP.AimDownSightsTime = 0.35
SWEP.SpeedMultShooting = 0.625
local testpath = ")weapons/arccw_ur/aw_placeholders/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rutle = {common .. "movement-sniper-01.ogg", common .. "movement-sniper-02.ogg", common .. "movement-sniper-03.ogg", common .. "movement-sniper-04.ogg"}
SWEP.ShootSound = {testpath .. "fire-01.ogg", testpath .. "fire-02.ogg", testpath .. "fire-03.ogg", testpath .. "fire-04.ogg", testpath .. "fire-05.ogg", testpath .. "fire-06.ogg"}
SWEP.ShootSoundSilenced = {testpath .. "fire-sup-01.ogg", testpath .. "fire-sup-02.ogg", testpath .. "fire-sup-03.ogg", testpath .. "fire-sup-04.ogg", testpath .. "fire-sup-05.ogg", testpath .. "fire-sup-06.ogg"}
SWEP.DryFireSound = testpath .. "dryfire.ogg"
local tail = ")/arccw_uc/common/308/"
SWEP.DistantShootSound = {tail .. "fire-dist-308-rif-ext-01.ogg", tail .. "fire-dist-308-rif-ext-02.ogg", tail .. "fire-dist-308-rif-ext-03.ogg", tail .. "fire-dist-308-rif-ext-04.ogg", tail .. "fire-dist-308-rif-ext-05.ogg", tail .. "fire-dist-308-rif-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {tail .. "fire-dist-308-rif-int-01.ogg", tail .. "fire-dist-308-rif-int-02.ogg", tail .. "fire-dist-308-rif-int-03.ogg", tail .. "fire-dist-308-rif-int-04.ogg", tail .. "fire-dist-308-rif-int-05.ogg", tail .. "fire-dist-308-rif-int-06.ogg"}
SWEP.DistantShootSoundSilenced = {common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg", common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg", common .. "sup-tail-07.ogg", common .. "sup-tail-08.ogg", common .. "sup-tail-09.ogg", common .. "sup-tail-10.ogg"}
SWEP.DistantShootSoundSilencedIndoor = {common .. "fire-dist-int-pistol-light-01.ogg", common .. "fire-dist-int-pistol-light-02.ogg", common .. "fire-dist-int-pistol-light-03.ogg", common .. "fire-dist-int-pistol-light-04.ogg", common .. "fire-dist-int-pistol-light-05.ogg", common .. "fire-dist-int-pistol-light-06.ogg"}
SWEP.UC_IndoorTailVolume = 1
SWEP.MuzzleParticle = "muzzleflash_ak47"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellPitch = 90
SWEP.ShellSounds = ARC9.Shell308SoundsTable
SWEP.ShellScale = 1.145
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true
SWEP.TracerColor = Color(255, 225, 200)
SWEP.TracerNum_Priority = 0
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.IronSights = {
    Pos = Vector(-3.344215, -5.000000, 0.797197),
    Ang = Angle(0, 0, 2.000000),
    Magnification = 1.1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
    CrosshairInSights = false
}

SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ActivePos = Vector(-0.103475, 0.100000, 0.198224)
SWEP.ActiveAng = Angle(0, 0, -1.000000)
SWEP.SprintPos = Vector(-1.131624, -0.788138, 1.240268)
SWEP.SprintAng = Angle(8.278363, -14.850644, -12.135646)
SWEP.CrouchPos = Vector(-1.747054, -2.000000, -1.260080)
SWEP.CrouchAng = Angle(0, 0, -14.000000)
SWEP.RestPos = Vector(-1.131624, -0.788138, 1.240268)
SWEP.RestAng = Angle(8.278363, -14.850644, -12.135646)
SWEP.BarrelLength = 54
SWEP.AttachmentElements = {
    ["barrel_long"] = {
        Bodygroups = {{2, 1}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, 40, 1.75),
                Ang = Angle(0, 270, 0),
            }
        }
    },
    ["barrel_short"] = {
        Bodygroups = {{2, 2}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, 28, 1.75),
                Ang = Angle(0, 270, 0),
            }
        }
    },
    ["barrel_sd"] = {
        Bodygroups = {{2, 3}}
    },
    ["mag_338"] = {},
    ["mag_300"] = {},
    ["mag_ext"] = {},
    ["mag_ext_magnum"] = {},
    ["rail_bottom"] = {
        Bodygroups = {{6, 1}}
    },
    ["rail_top"] = {
        Bodygroups = {{7, 1}}
    },
    ["sights_compact"] = {
        Bodygroups = {{8, 2}},
        IronSights = {
            Pos = Vector(-3.345818, -5.000000, 1.467661),
            Ang = Angle(0, 0, 2.000000),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["sights_flipped"] = {
        Bodygroups = {{8, 1}}
    },
    ["skin_black"] = {
        Skin = 1
    },
    ["skin_tan"] = {
        Skin = 2
    },
    ["skin_cust"] = {
        Skin = 3
    },
    ["stock_at"] = {
        Bodygroups = {{4, 1}}
    },
    ["stock_ru"] = {
        Bodygroups = {{4, 2}}
    },
    ["stock_ru_rubber"] = {
        Bodygroups = {{4, 3}}
    },
    ["stock_fixed"] = {
        Bodygroups = {{4, 4}, {5, 1},}
    },
    ["stock_none"] = {
        Bodygroups = {{4, 5},}
    },
}

SWEP.ExtraSightDistance = 2
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 5, -4.8),
    Ang = Angle(-12, 0, 180)
}

SWEP.MirrorVMWM = true
SWEP.Attachments = {
    {
        PrintName = "ur.aw.printname2",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname1"),
        DefaultIcon = Material("entities/att/ur_aw/ironsights.png", "mips smooth"),
        Category = {"optic", "optic_lp", "optic_sniper"},
        Bone = "tag_weapon",
        Pos = Vector(0, 6, 2.65),
        Ang = Angle(0, -90, 0),
        Scale = 1.05,
        UC_RailMin = Vector(0, 5.5, 2.65),
        UC_RailMax = Vector(0, 7, 2.65),
    },
    {
        PrintName = "ur.aw.printname3",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname2"),
        DefaultIcon = Material("entities/att/ur_aw/bar_def.png", "mips smooth"),
        Category = "ur_aw_barrel",
        Bone = "tag_weapon",
        Pos = Vector(0, 25, 1.7),
    },
    {
        PrintName = "ur.aw.printname4",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname3"),
        Category = {"muzzle", "ur_aw_muzzle"},
        Bone = "tag_weapon",
        Scale = 1.5,
        Pos = Vector(0, 35.2, 1.675),
        Ang = Angle(0, 270, 0),
        ExcludeElements = {"barrel_sd"},
        Installed = "ur_aw_muzzle_brake",
    },
    {
        PrintName = "ur.aw.printname5",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname4"),
        DefaultIcon = Material("entities/att/uc_bullets/762x51.png", "mips smooth"),
        Category = {"ur_aw_cal"},
        Bone = "tag_weapon",
        Pos = Vector(0, 3, 1.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.aw.printname6",
        Category = {"ur_aw_mag"},
        Bone = "vm_mag",
        Pos = Vector(0, -0.6, 0.34),
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname5"),
        DefaultIcon = Material("entities/att/ur_aw/mag308_5.png", "mips smooth"),
        ExcludeElements = {"mag_338"}
    },
    {
        PrintName = "ur.aw.printname7",
        Category = {"foregrip"},
        Bone = "tag_weapon",
        Pos = Vector(0, 16, -.6),
        Ang = Angle(90, -90, -90),
        Scale = 1,
        InstalledElements = {"rail_bottom"},
    },
    {
        PrintName = "ur.aw.printname8",
        Category = {"tac"},
        Bone = "tag_weapon",
        Pos = Vector(-1.2, 16, 1.1),
        Ang = Angle(-90, 270, 0),
        InstalledElements = {"rail_top", "tac"}
    },
    {
        PrintName = "ur.aw.printname9",
        Category = {"ur_aw_stock"},
        Bone = "tag_weapon",
        Pos = Vector(0, -8.14, -0.29),
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname6"),
        DefaultIcon = Material("entities/att/ur_aw/stock_def.png", "mips smooth"),
    },
    {
        PrintName = "ur.aw.printname10",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname7"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "ur.aw.printname11",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname8"),
    },
    {
        PrintName = "ur.aw.printname12",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname9"),
    },
    {
        PrintName = "ur.aw.printname13",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname10"),
    },
    {
        PrintName = "ur.aw.printname14",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "tag_weapon",
        Pos = Vector(.85, 4.6, 0.5),
        Ang = Angle(90, -90, -90),
    },
    {
        PrintName = "ur.aw.printname15",
        Category = {"ur_aw_skin"},
        CosmeticOnly = true,
        DefaultName = ARC9:GetPhrase("ur.aw.defaultname11"),
        DefaultIcon = Material("entities/att/ur_aw/skin_green.png", "mips smooth"),
    }
}

SWEP.Animations = {
    ["ready"] = {
        Source = "cycle",
        Time = 1.47,
        MinProgressTime = 1.3,
        EventTable = {
            {s = ratel, t = 0.07},
            {s = testpath .. "boltup.ogg", t = 0.1},
            {s = testpath .. "boltback.ogg", t = 0.2},
            {s = testpath .. "boltforward.ogg", t = 0.32},
            {s = testpath .. "boltdown.ogg", t = 0.6},
        },
    },
    ["idle"] = {
        Source = "idle"
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw"] = {
        Source = "draw",
        Time = 35 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "raise.ogg", t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = .75,
        EventTable = {
            {s = ratel, t = 0},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "raise.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            {s = ratel, t = 0},
        },
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 27 / 30,
        MinProgressTime = 0.2,
        EventTable = {
            {s = {testpath .. "mech-01.ogg", testpath .. "mech-02.ogg", testpath .. "mech-03.ogg", testpath .. "mech-04.ogg", testpath .. "mech-05.ogg", testpath .. "mech-06.ogg"}, t = 0, v = 0.25},
        },
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 27 / 30,
        MinProgressTime = 0.2,
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = {testpath .. "mech-01.ogg", testpath .. "mech-02.ogg", testpath .. "mech-03.ogg", testpath .. "mech-04.ogg", testpath .. "mech-05.ogg", testpath .. "mech-06.ogg"}, t = 0, v = 0.25},
        },
    },
    ["reload"] = {
        Source = "reload",
        IKTimeLine = ARC9.UC.LHIK(85 / 30, 0.3, nil, 1, 0.25),
        Time = 85 / 30,
        MinProgressTime = 1.5,
        EventTable = {
            {s = rottle, t = 0.1},
            {s = testpath .. "magrel.ogg", t = 0.2},
            {s = testpath .. "magout.ogg", t = 0.3},
            {s = rottle, t = 0.75},
            {s = common .. "magpouch.ogg", t = 0.8, v = 0.4},
            {s = testpath .. "struggle.ogg", t = 0.9},
            {s = testpath .. "magin.ogg", t = 1.2},
            {s = rottle, t = 1.4},
            {s = ratel, t = 1.5},
        },
    },
    ["reload_10"] = {
        Source = "reload_exte",
        IKTimeLine = ARC9.UC.LHIK(3.1333333333333333, 0.3, nil, 1.15, 0.25),
        MinProgressTime = 2.5,
        EventTable = {
            {s = rottle, t = 0.1},
            {s = testpath .. "magrel.ogg", t = 0.2},
            {s = testpath .. "magout.ogg", t = 0.3},
            {s = rottle, t = 0.75},
            {s = common .. "magpouch.ogg", t = 0.8, v = 0.4},
            {s = testpath .. "struggle.ogg", t = 0.9},
            {s = testpath .. "magin.ogg", t = 1.2},
            {s = rottle, t = 1.4},
            {s = ratel, t = 1.5},
        },
    },
    ["reload_338"] = {
        Source = "reload_magnum",
        IKTimeLine = ARC9.UC.LHIK(3.4, 0.3, nil, 1.15, 0.25),
        MinProgressTime = 2.5,
        Time = 3.4,
        EventTable = {
            {s = rottle, t = 0.1},
            {s = testpath .. "magrel.ogg", t = 0.2},
            {s = testpath .. "magout.ogg", t = 0.4},
            {s = rottle, t = 0.75},
            {s = common .. "magpouch.ogg", t = 0.8, v = 0.4},
            {s = testpath .. "struggle.ogg", t = 1.1, v = 1.1},
            {s = testpath .. "magin.ogg", t = 1.3},
            {s = testpath .. "magtap.ogg", t = 1.95},
            {s = rottle, t = 2.3, v = 0.6},
            {s = ratel, t = 2.35, v = 0.6},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgressTime = 3.0,
        EjectAt = .45,
        MagSwapTime = 1.8,
        Time = 4.5,
        EventTable = {
            {s = ratel, t = 0.05},
            {s = testpath .. "boltup.ogg", t = 0.15},
            {s = testpath .. "boltback_reload.ogg", t = 0.18},
            {s = testpath .. "eject.ogg", t = 0.45},
            {s = rottle, t = 0.6},
            {s = testpath .. "magrel.ogg", t = 1.0},
            {s = testpath .. "magout_empty.ogg", t = 1.2},
            {s = rottle, t = 1.25},
            {s = testpath .. "magdrop_metal.ogg", t = 1.5, v = 0.4},
            {s = common .. "magpouch.ogg", t = 1.6, v = 0.4},
            {s = rottle, t = 1.65},
            {s = testpath .. "struggle.ogg", t = 2},
            {s = testpath .. "magin.ogg", t = 2.1},
            {s = rottle, t = 2.4},
            {s = ratel, t = 2.6},
            {s = testpath .. "boltforward_reload.ogg", t = 2.7},
            {s = testpath .. "boltdown.ogg", t = 3.1},
            {s = common .. "shoulder.ogg", t = 3.15},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_exte",
        EjectAt = .5,
        MinProgressTime = 3.5,
        MagSwapTime = 1.8,
        Time = 4.5,
        EventTable = {
            {s = ratel, t = 0.05},
            {s = testpath .. "boltup.ogg", t = 0.15},
            {s = testpath .. "boltback_reload.ogg", t = 0.18},
            {s = testpath .. "eject.ogg", t = 0.45},
            {s = rottle, t = .6},
            {s = testpath .. "magrel.ogg", t = 1.0},
            {s = testpath .. "magout_empty.ogg", t = 1.2},
            {s = rottle, t = 1.25},
            {s = testpath .. "magdrop_metal.ogg", t = 1.6, v = 0.4},
            {s = common .. "magpouch.ogg", t = 1.6, v = 0.4},
            {s = rottle, t = 1.65},
            {s = testpath .. "struggle.ogg", t = 2.1},
            {s = testpath .. "magin.ogg", t = 2.2},
            {s = rottle, t = 2.5},
            {s = testpath .. "boltforward_reload.ogg", t = 2.8},
            {s = ratel, t = 2.7},
            {s = testpath .. "boltdown.ogg", t = 3.2},
            {s = common .. "shoulder.ogg", t = 3.2},
        },
    },
    ["reload_empty_338"] = {
        Source = "reload_empty_magnum",
        EjectAt = .5,
        MagSwapTime = 1.5,
        MinProgressTime = 4,
        Time = 4.25,
        EventTable = {
            {s = ratel, t = 0.05},
            {s = testpath .. "boltup.ogg", t = 0.15},
            {s = testpath .. "boltback_reload.ogg", t = 0.18},
            {s = testpath .. "eject.ogg", t = 0.45},
            {s = rottle, t = 0.6},
            {s = testpath .. "magrel.ogg", t = 1.0},
            {s = testpath .. "magout_empty.ogg", t = 1.1},
            {s = rottle, t = 1.25},
            {s = testpath .. "magdrop_metal.ogg", t = 1.5, v = 0.4},
            {s = common .. "magpouch.ogg", t = 1.6, v = 0.4},
            {s = rottle, t = 1.65},
            {s = testpath .. "struggle.ogg", t = 1.8},
            {s = testpath .. "magin.ogg", t = 1.9},
            {s = rottle, t = 2.4},
            {s = testpath .. "magtap.ogg", t = 2.5},
            {s = ratel, t = 2.6},
            {s = testpath .. "boltforward_reload.ogg", t = 2.7},
            {s = testpath .. "boltdown.ogg", t = 3.1},
            {s = common .. "shoulder.ogg", t = 3.15},
        },
    },
    ["reload_empty_10_338"] = {
        Source = "reload_empty_exte_magnum",
        IKTimeLine = ARC9.UC.LHIK(4.5, 0.9, 0.1, 1.25, 0.5),
        MinProgressTime = 4,
        MagSwapTime = 2.3,
        Time = 4.5,
        EjectAt = .5,
        EventTable = {
            {s = ratel, t = 0.05},
            {s = testpath .. "boltup.ogg", t = 0.15},
            {s = testpath .. "boltback_reload.ogg", t = 0.18},
            {s = testpath .. "eject.ogg", t = 0.45},
            {s = rottle, t = 0.6},
            {s = testpath .. "magrel.ogg", t = 1.0},
            {s = testpath .. "magout_empty.ogg", t = 1.1},
            {s = rottle, t = 1.25},
            {s = testpath .. "magdrop_metal.ogg", t = 1.5, v = 0.4},
            {s = common .. "magpouch.ogg", t = 1.6, v = 0.4},
            {s = rottle, t = 1.65},
            {s = testpath .. "struggle.ogg", t = 1.85},
            {s = testpath .. "magin.ogg", t = 2.0},
            {s = rottle, t = 2.4},
            {s = testpath .. "magtap.ogg", t = 2.6},
            {s = ratel, t = 2.6},
            {s = testpath .. "boltforward_reload.ogg", t = 2.9},
            {s = testpath .. "boltdown.ogg", t = 3.3},
            {s = common .. "shoulder.ogg", t = 3.35},
        },
    },
    ["reload_10_338"] = {
        Source = "reload_exte_magnum",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.65, 0.25),
        MinProgressTime = 3,
        Time = 3.5,
        EventTable = {
            {s = rottle, t = 0.1},
            {s = testpath .. "magrel.ogg", t = 0.2},
            {s = testpath .. "magout.ogg", t = 0.4},
            {s = rottle, t = 0.75},
            {s = common .. "magpouch.ogg", t = 0.8, v = 0.4},
            {s = testpath .. "struggle.ogg", t = 1.1, v = 1},
            {s = testpath .. "magin.ogg", t = 1.4},
            {s = testpath .. "magtap.ogg", t = 2.0},
            {s = rottle, t = 2.3, v = 0.6},
            {s = ratel, t = 2.35, v = 0.6},
        },
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1.47,
        EjectAt = 0.4,
        MinProgressTime = 0.9,
        EventTable = {
            {s = ratel, t = 0.07},
            {s = testpath .. "boltup.ogg", t = 0.1},
            {s = testpath .. "boltback.ogg", t = 0.25},
            {s = testpath .. "boltforward.ogg", t = 0.32},
            {s = testpath .. "eject.ogg", t = 0.4},
            {s = testpath .. "boltdown.ogg", t = 0.55},
        },
    },
    ["enter_inspect"] = {
        Source = "inspect_enter",
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-sniper-03.ogg", t = 0.05},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        EventTable = {
            {s = common .. "movement-sniper-01.ogg", t = 0},
            {s = rottle, t = 0.25},
            {s = testpath .. "boltup_inspect.ogg", t = 1.2},
            {s = common .. "movement-sniper-03.ogg", t = 1.25},
            {s = testpath .. "boltback_inspect.ogg", t = 1.35},
            {s = testpath .. "boltforward_inspect.ogg", t = 1.8},
            {s = testpath .. "boltdown_inspect.ogg", t = 1.9},
            {s = rottle, t = 2.0},
            {s = common .. "movement-sniper-04.ogg", t = 2.2},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter",
        EventTable = {
            {s = rottle, t = 0},
            {s = rutle, t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop",
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit",
        EventTable = {
            {s = common .. "movement-sniper-01.ogg", t = 0.05},
            {s = rottle, t = 0.25},
            {s = testpath .. "boltup_inspect.ogg", t = 1.2},
            {s = common .. "movement-sniper-03.ogg", t = 1.25},
            {s = testpath .. "boltback_inspect.ogg", t = 1.35},
            {s = testpath .. "boltforward_inspect.ogg", t = 1.8},
            {s = testpath .. "boltdown_inspect.ogg", t = 1.9},
            {s = rottle, t = 2.0},
            {s = common .. "movement-sniper-04.ogg", t = 2.2},
        },
    },
}

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_aw.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_aw.truename")
SWEP.Description = "arc9_ur_aw.description"
SWEP.Class = "arc9_ur_aw.trivia_class"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_aw.trivia_manufacturer.true" or "arc9_ur_aw.trivia_manufacturer",
    ["uc.trivia.calibre2"] = "arc9_ur_aw.trivia_calibre",
    ["uc.trivia.mechanism3"] = "arc9_ur_aw.trivia_mechanism",
    ["uc.trivia.country4"] = "arc9_ur_aw.trivia_country",
    ["uc.trivia.year5"] = "arc9_ur_aw.trivia_year",
}

SWEP.ClipSize_Priority = 0
SWEP.Firemodes_Priority = 0
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.RecoilUp = 1
SWEP.RecoilRandomUp = 0
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.ShootPitchVariation = 5
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound
SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3
SWEP.UC_MeleeTime = 1
SWEP.UC_MeleeWaitTime = 1
SWEP.PreBashTimeHook = ARC9.UC.PreBashTime
SWEP.PostBashTimeHook = ARC9.UC.PostBashTime
SWEP.UC_DrawTime = 1
SWEP.Hook_TranslateAnimSpeed = ARC9.UC.AnimationSpeed
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng
SWEP.HookP_NameChange = function(wep, name)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default", "ur_aw_barrel_", "")
    local cal = string.Replace(atts[4].Installed or "default", "ur_aw_cal_", "")
    local stock = string.Replace(atts[8].Installed or "default", "ur_aw_stock_", "")
    if ARC9:UseTrueNames() then
        if cal ~= "default" then
            return ARC9:GetPhrase("arc9_ur_aw.variant1")
        elseif barr == "sd" then
            return ARC9:GetPhrase("arc9_ur_aw.variant2")
        elseif stock == "at" then
            return ARC9:GetPhrase("arc9_ur_aw.variant3")
        end
    else
        if cal == "338" then
            return ARC9:GetPhrase("arc9_ur_aw.variant4")
        elseif barr == "sd" then
            return ARC9:GetPhrase("arc9_ur_aw.variant5")
        elseif stock == "at" then
            return ARC9:GetPhrase("arc9_ur_aw.variant6")
        end
    end
    return ARC9.UC.NameChange(wep)
end

SWEP.SprintToFireTime = 0.35
SWEP.FreeAimRadius = math.Clamp(1250 / 80, 3, 10)
SWEP.ARC9WeaponCategory = ARC9.WEAPON_SNIPER
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
if CLIENT then
    SWEP.Hook_Think = function(wep)
        wep.UC_ADSBipod = math.Approach(wep.UC_ADSBipod or 0, wep:GetBipod() and 1 or 0, FrameTime() / 0.5)
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.model
    if not IsValid(vm) then return end
    local amount = math.max(wep:GetSightAmount(), wep.UC_ADSBipod or 0)
    vm:SetPoseParameter("sights", math.ease.InOutCubic(amount))
    local atts = wep.Attachments
    local cal = string.Replace(atts[4].Installed or "default", "ur_aw_cal_", "")
    local mag = string.Replace(atts[5].Installed or "default", "ur_aw_mag_", "")
    local flags = data.elements
    local pistolGrip = flags.pistolgrip
    if cal ~= "default" then
        if pistolGrip then
            vm:SetBodygroup(1, 3)
        else
            vm:SetBodygroup(1, 1)
        end
    elseif pistolGrip then
        vm:SetBodygroup(1, 2)
    else
        vm:SetBodygroup(1, 0)
    end

    if atts[1].Installed then
        if flags.sights_compact then
            vm:SetBodygroup(8, 3)
        else
            vm:SetBodygroup(8, 1)
        end
    end

    if mag == "10" then
        vm:SetBodygroup(3, 1)
    elseif mag == "10m" then
        vm:SetBodygroup(3, 3)
    elseif cal ~= "default" then
        vm:SetBodygroup(3, 2)
    end
end

SWEP.NoShellEjectManualAction = true
SWEP.HideBones = {}
SWEP.SendAttachmentTree = ARC9.UC.SendRailTree
SWEP.ReceiveAttachmentTree = ARC9.UC.ReceiveRailTree
if CLIENT then
    function SWEP:ClientInitialize()
        self.CustomizeButtonsOriginal = table.Copy(baseclass.Get("arc9_base").CustomizeButtonsOriginal)
        table.insert(self.CustomizeButtonsOriginal, 3, {
            title = "uc.rails",
            func = ARC9.UC.CreateRailPanel
        })

        self.CustomizeButtons = table.Copy(self.CustomizeButtonsOriginal)
        baseclass.Get("arc9_base").ClientInitialize(self)
    end

    function SWEP:PruneUnnecessaryAttachmentDataRecursive(tree)
        local rail = tree.UC_Rail
        baseclass.Get("arc9_base").PruneUnnecessaryAttachmentDataRecursive(self, tree)
        tree.UC_Rail = rail
    end

    function SWEP:WriteAttachmentTree(tree)
        local result = baseclass.Get("arc9_base").WriteAttachmentTree(self, tree)
        result.UC_Rail = tree and tree.UC_Rail
        return result
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if not string.StartsWith(anim, "reload") then return end
    local mag = wep.Attachments[5].Installed
    if mag == "ur_aw_mag_10m" then return anim .. "_10_338" end
    if mag == "ur_aw_mag_10" then return anim .. "_10" end
    if wep.Attachments[4].Installed then return anim .. "_338" end
end

SWEP.RangeMinHook = function(wep, range)
    local minimum = wep:GetValue("UC_RampRangeMin")
    if not minimum or wep:GetUBGL() or wep:GetValue("DamageMax") >= wep:GetValue("DamageMin") then return end
    return minimum * minimum / range
end

SWEP.RangeMaxHook = function(wep, range)
    local maximum = wep:GetValue("UC_RampRangeMax")
    if not maximum or wep:GetUBGL() or wep:GetValue("DamageMax") >= wep:GetValue("DamageMin") then return end
    return maximum * maximum / range
end

SWEP.RPMHookNPC = function(wep) return 60 / (wep.Animations.cycle.Time * wep:GetProcessedValue("CycleTime", true)) end
function SWEP:GetNPCBurstSettings()
    return 1, 1, self.Animations.cycle.Time * self:GetProcessedValue("CycleTime", true)
end

SWEP.UC_MalfunctionVariance = 0.25
SWEP.MalfunctionNeverLastShoot = false
SWEP.MalfunctionWait = 0.5
function SWEP:DoPrimaryAttack()
    self.UC_CheckMalfunction = true
    local result = baseclass.Get("arc9_base").DoPrimaryAttack(self)
    self.UC_CheckMalfunction = nil
    return result
end

SWEP.HookP_BlockFire = function(wep)
    if not wep.UC_CheckMalfunction or wep:GetUBGL() or wep:GetJammed() or wep:GetHeatLockout() then return end
    if not IsFirstTimePredicted() then return end
    if ARC9.UC.RollJam(wep) then
        wep:SetBurstCount(0)
        return true
    end
end

function SWEP:RollJam()
end

function SWEP:UnJam()
    if self:StillWaiting() then return end
    self:TakeAmmo()
    self:SetLoadedRounds(self:Clip1())
    self:SetJammed(false)
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
