SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
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
SWEP.Slot = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.ViewModelFOVBase = 70
SWEP.DefaultBodygroups = "000000000000"
SWEP.DamageMax = 65
SWEP.DamageMin = 35
SWEP.RangeMin = 50 * ARC9.UC.Meter
SWEP.RangeMax = 400 * ARC9.UC.Meter
SWEP.Penetration = 20
SWEP.PenetrationDelta = 0
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 715 * ARC9.UC.Meter
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults
SWEP.ChamberSize = 1
SWEP.ClipSize = 20
SWEP.Recoil = 1.4 * ARC9.UC.Recoil
SWEP.RecoilSide = 0
SWEP.RecoilRandomSide = 0.6 / 1.4
SWEP.VisualRecoil = 1
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 1.4
SWEP.Sway = 0.4 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2
SWEP.RPM = 60 / (60 / 520)
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120
SWEP.ReloadInSights = true
SWEP.Spread = 2 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 900 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 200 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.Ammo = "ar2"
SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3
SWEP.MalfunctionMeanShotsToFail = 200
SWEP.Speed = 0.9
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.35
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
local path = ")weapons/arccw_ur/g3/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
SWEP.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
SWEP.DryFireSound = path .. "dryfire.ogg"
local tail = ")/arccw_uc/common/308/"
SWEP.DistantShootSound = {tail .. "fire-dist-308-rif-ext-01.ogg", tail .. "fire-dist-308-rif-ext-02.ogg", tail .. "fire-dist-308-rif-ext-03.ogg", tail .. "fire-dist-308-rif-ext-04.ogg", tail .. "fire-dist-308-rif-ext-05.ogg", tail .. "fire-dist-308-rif-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {tail .. "fire-dist-308-rif-int-01.ogg", tail .. "fire-dist-308-rif-int-02.ogg", tail .. "fire-dist-308-rif-int-03.ogg", tail .. "fire-dist-308-rif-int-04.ogg", tail .. "fire-dist-308-rif-int-05.ogg", tail .. "fire-dist-308-rif-int-06.ogg"}
SWEP.DistantShootSoundSilenced = {common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg", common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg", common .. "sup-tail-07.ogg", common .. "sup-tail-08.ogg", common .. "sup-tail-09.ogg", common .. "sup-tail-10.ogg"}
SWEP.DistantShootSoundSilencedIndoor = {common .. "sup_tail.ogg"}
SWEP.UC_IndoorTailVolume = 1
SWEP.MuzzleParticle = "muzzleflash_6"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellPitch = 90
SWEP.ShellSounds = ARC9.Shell308SoundsTable
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)
SWEP.TracerColor = Color(255, 225, 200)
SWEP.TracerNum_Priority = 0
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.BulletBones = {}
SWEP.IronSights = {
    Pos = Vector(-2.299651, -1.000803, 0.900000),
    Ang = Angle(0.020000, 0, 0),
    Magnification = 1.1,
    ViewModelFOV = 65,
    CrosshairInSights = false
}

SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ActivePos = Vector(0.300000, 1.000000, 0.800000)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.SprintPos = Vector(0.144497, 1.156112, 0.377526)
SWEP.SprintAng = Angle(15.158965, -8.208336, -12.215140)
SWEP.CrouchPos = Vector(-0.679207, 0.600000, -0.169345)
SWEP.CrouchAng = Angle(0, 0, -14.000000)
SWEP.RestPos = Vector(-1.131624, -0.788138, 1.240268)
SWEP.RestAng = Angle(8.278363, -14.850644, -12.135646)
SWEP.BarrelLength = 24
SWEP.AttachmentElements = {
    ["ur_g3_skin_wood"] = {
        Skin = 1
    },
    ["ur_g3_skin_olive"] = {
        Skin = 2
    },
    ["ur_g3_skin_tan"] = {
        Skin = 3
    },
    ["ur_g3_skin_custom"] = {
        Skin = 4
    },
    ["stock_g3_collapsible"] = {
        Bodygroups = {{5, 2},}
    },
    ["stock_g3_collapsed"] = {
        Bodygroups = {{5, 3},}
    },
    ["ur_g3_stock_psg"] = {
        Bodygroups = {{5, 4},}
    },
    ["ur_g3_stock_sg"] = {
        Bodygroups = {{5, 1},}
    },
    ["ur_g3_stock_rucar"] = {
        Bodygroups = {{5, 5},}
    },
    ["ur_g3_rec_hk33"] = {
        Bodygroups = {{0, 1}, {3, 1}, {4, 4},},
    },
    ["ur_g3_rec_psg"] = {
        Bodygroups = {{3, 2},},
        PrintNameOverride = ARC9:GetPhrase("ur.g3.namechange1"),
        TrueName = ARC9:GetPhrase("ur.g3.truenamechange1"),
    },
    ["ur_g3_mag_10"] = {
        Bodygroups = {{4, 1},}
    },
    ["ur_g3_mag_50"] = {
        Bodygroups = {{4, 2},}
    },
    ["ur_g3_mag_20_556"] = {
        Bodygroups = {{4, 3},}
    },
    ["ur_g3_mag_40_556"] = {
        Bodygroups = {{4, 5},}
    },
    ["ur_g3_barrel_12"] = {
        Bodygroups = {{2, 1},},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0.06, 17.7),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-0.94, 0.2, 14),
                Ang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_15"] = {
        Bodygroups = {{2, 4},},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0.06, 20),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-0.94, 0.2, 14),
                Ang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_8"] = {
        Bodygroups = {{2, 2},},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0.06, 13.7),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-0.94, 0.2, 11),
                Ang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_26"] = {
        Bodygroups = {{2, 3},},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0.06, 29.7),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-0.94, 0.2, 17),
                Ang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_hg_slim"] = {
        AttPosMods = {
            [6] = {
                Pos = Vector(0, 0.66, 9),
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["ur_g3_hg_pica"] = {
        AttPosMods = {
            [6] = {
                Pos = Vector(0, 0.75, 9.2),
                Ang = Angle(90, 0, -90),
            },
        }
    },
}

local hgbg = {
    ["ur_g3_hg_slim"] = 1,
    ["ur_g3_hg_pica"] = 2,
    ["ur_mp5_ub_mlok"] = 3,
    ["ur_mp5_ub_surefire"] = 4,
}

local muzzlebg = {
    ["ur_g3_barrel_8"] = 2,
    ["ur_g3_barrel_12"] = 1,
    ["ur_g3_barrel_15"] = 4,
    ["ur_g3_barrel_26"] = 3,
    ["default"] = 0,
}

local opticbg = {
    ["ur_g3_optic_psg1"] = 2,
    ["ur_g3_optic_sg1"] = 3,
}

local ubmountbg = {
    ["ur_g3_hg_slim"] = 2,
    ["ur_g3_hg_pica"] = 0,
}

SWEP.ExtraSightDistance = 2
SWEP.WorldModelOffset = {
    Pos = Vector(-5, 3, -5),
    Ang = Angle(-12, 0, 180)
}

SWEP.MirrorVMWM = true
SWEP.Attachments = {
    {
        PrintName = "ur.g3.printname1",
        Category = {"ur_g3_optic", "optic"},
        Bone = "body",
        Pos = Vector(0, -1.6, -0.55),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"mount_optic"},
    },
    {
        PrintName = "ur.g3.printname2",
        Category = "ur_g3_barrel",
        Bone = "body",
        Pos = Vector(0, -1.7, 13.8),
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname1"),
        DefaultIcon = Material("entities/att/ur_g3/barrel_std.png", "smooth mips"),
        UnInstalledElements = {"g3_not8"}
    },
    {
        PrintName = "ur.g3.printname3",
        Category = "ur_g3_rec",
        Bone = "body",
        Pos = Vector(0, -0.5, 3),
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname2"),
        DefaultIcon = Material("entities/att/ur_g3/rec_std.png", "smooth mips"),
    },
    {
        PrintName = "ur.g3.printname4",
        Category = "ur_g3_handguard",
        Bone = "body",
        Pos = Vector(0, 1.5, 10),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(1.5, 0, 1.7),
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname3"),
        DefaultIcon = Material("entities/att/ur_g3/hg_std.png", "smooth mips"),
        ExcludeElements = {"hk79_pro", "g3_nohg"},
    },
    {
        PrintName = "ur.g3.printname5",
        Category = "muzzle",
        Bone = "body",
        Pos = Vector(0, 0.06, 22.5),
        Ang = Angle(90, 0, -90),
        MergeSlots = {17},
    },
    {
        PrintName = "ur.g3.printname6",
        Category = "foregrip",
        Bone = "body",
        Pos = Vector(0, 1.17, 8.6),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"mount_underbarrel"},
        ExcludeElements = {"g3_noub"},
        MergeSlots = {15},
    },
    {
        PrintName = "ur.g3.printname7",
        Category = "tac",
        Bone = "body",
        Pos = Vector(-0.8, 0, 17),
        Ang = Angle(90, 0, 180),
        InstalledElements = {"mount_tactical"},
    },
    {
        PrintName = "ur.g3.printname8",
        Category = "ur_g3_stock",
        Bone = "body",
        Pos = Vector(0, 1.2, -7),
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname4"),
        DefaultIcon = Material("entities/att/ur_g3/stock_std.png", "smooth mips"),
    },
    {
        PrintName = "ur.g3.printname9",
        Category = "ur_g3_mag",
        Bone = "mag",
        Pos = Vector(0.01, -1.52, -0.29),
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname5"),
        DefaultIcon = Material("entities/att/ur_g3/mag20.png", "smooth mips"),
    },
    {
        PrintName = "ur.g3.printname10",
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname6"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "ur.g3.printname11",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname7"),
    },
    {
        PrintName = "ur.g3.printname12",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname8"),
    },
    {
        PrintName = "ur.g3.printname13",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname9"),
    },
    {
        PrintName = "ur.g3.printname14",
        Category = {"charm", "fml_charm", "mp5_charm"},
        CosmeticOnly = true,
        Bone = "body",
        Pos = Vector(0.5, 1.3, 3),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.g3.printname15",
        Category = "uc_ubgl",
        Bone = "body",
        Pos = Vector(0, 0.1, 6.9),
        Ang = Angle(90, 0, -90),
        Hidden = true,
        InstalledElements = {"mount_underbarrel"},
    },
    {
        PrintName = "ur.g3.printname16",
        Category = "ur_g3_skin",
        DefaultName = ARC9:GetPhrase("ur.g3.defaultname10"),
        DefaultIcon = Material("entities/att/ur_g3/skin_gray.png", "smooth mips"),
    },
    {
        PrintName = "ur.g3.printname17",
        Category = "ur_g3_bayobipod",
        ExcludeElements = {"g3_hk51hg"},
        Hidden = true,
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "raise.ogg", t = 0.2},
            {s = common .. "shoulder.ogg", t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = ratel, t = 0},
        },
    },
    ["ready"] = {
        Source = "ready",
        IKTimeLine = ARC9.UC.LHIK(1.2666666666666666, 0, nil, 0.6, 0.25),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "chback.ogg", t = 0.2},
            {s = path .. "chamber.ogg", t = 0.3},
            {s = common .. "shoulder.ogg", t = .6},
        },
    },
    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        EventTable = {
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25},
        },
    },
    ["fire_iron"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        EventTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0},
        },
    },
    ["reload"] = {
        Source = "reload",
        IKTimeLine = ARC9.UC.LHIK(2.4, 0.3, nil, 0.65, 0.25),
        MinProgressTime = 1.3,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 3 / 30},
            {s = common .. "magpouch_gear.ogg", t = 9 / 30},
            {s = path .. "magout.ogg", t = 11 / 30},
            {s = ratel, t = 0.5},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg", t = 36 / 30},
            {s = path .. "magin.ogg", t = 42 / 30},
            {s = ratel, t = 1.1},
            {s = rottle, t = 1.15},
            {s = common .. "grab.ogg", t = 52 / 30},
            {s = common .. "shoulder.ogg", t = 54 / 30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 5 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 23 / 30},
            {s = rottle, t = 24 / 30},
            {s = common .. "magpouch_gear.ogg", t = 25 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 75 / 30},
            {s = path .. "chslap.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 87 / 30},
            {s = common .. "shoulder.ogg", t = 88 / 30},
        },
    },
    ["reload_empty_scope"] = {
        Source = "reload_empty_scope",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 23 / 30},
            {s = rottle, t = 24 / 30},
            {s = common .. "magpouch.ogg", t = 26 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 75 / 30},
            {s = path .. "chlock.ogg", t = 75 / 30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 92 / 30},
            {s = common .. "shoulder.ogg", t = 93 / 30},
        },
    },
    ["reload_30rnd"] = {
        Source = "reload_30rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 1.3,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 3 / 30},
            {s = path .. "magout.ogg", t = 11 / 30},
            {s = common .. "magpouch.ogg", t = 26 / 30},
            {s = ratel, t = 0.5},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg", t = 39 / 30},
            {s = path .. "magin.ogg", t = 44 / 30},
            {s = ratel, t = 1.1},
            {s = rottle, t = 1.15},
            {s = common .. "grab.ogg", t = 56 / 30},
            {s = common .. "shoulder.ogg", t = 61 / 30},
        },
    },
    ["reload_empty_30rnd"] = {
        Source = "reload_empty_30rnd",
        RareSource = "reload_empty_30rnd_rare",
        RareSourceChance = 0.01,
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 75 / 30},
            {s = path .. "chslap.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 92 / 30},
            {s = common .. "shoulder.ogg", t = 93 / 30},
        },
    },
    ["reload_empty_30rnd_scope"] = {
        Source = "reload_empty_scope_30rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 75 / 30},
            {s = path .. "chlock.ogg", t = 75 / 30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 92 / 30},
            {s = common .. "shoulder.ogg", t = 93 / 30},
        },
    },
    ["reload_10rnd"] = {
        Source = "reload_10rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 1.3,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 3 / 30},
            {s = path .. "magout.ogg", t = 10 / 30},
            {s = common .. "magpouch.ogg", t = 26 / 30},
            {s = ratel, t = 0.5},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg", t = 36 / 30},
            {s = path .. "magin.ogg", t = 42 / 30},
            {s = ratel, t = 1.1},
            {s = rottle, t = 1.15},
            {s = common .. "grab.ogg", t = 52 / 30},
            {s = common .. "shoulder.ogg", t = 56 / 30},
        },
    },
    ["reload_empty_10rnd"] = {
        Source = "reload_empty_10rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 75 / 30},
            {s = path .. "chslap.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 92 / 30},
            {s = common .. "shoulder.ogg", t = 93 / 30},
        },
    },
    ["reload_empty_10rnd_scope"] = {
        Source = "reload_empty_scope_10rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57 / 30},
            {s = path .. "magin.ogg", t = 62 / 30},
            {s = rottle, t = 74 / 30},
            {s = path .. "chlock.ogg", t = 75 / 30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80 / 30},
            {s = ratel, t = 81 / 30},
            {s = common .. "grab.ogg", t = 92 / 30},
            {s = common .. "shoulder.ogg", t = 93 / 30},
        },
    },
    ["reload_50rnd"] = {
        Source = "reload_50rnd",
        IKTimeLine = ARC9.UC.LHIK(3.5, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 1.3,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 3 / 30},
            {s = path .. "magout.ogg", t = 11 / 30},
            {s = common .. "magpouch.ogg", t = 26 / 30},
            {s = ratel, t = 0.5},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg", t = 42 / 30},
            {s = path .. "magin.ogg", t = 48 / 30},
            {s = ratel, t = 1.1 + 5 / 30},
            {s = rottle, t = 1.15 + 5 / 30},
            {s = common .. "grab.ogg", t = 58 / 30},
            {s = common .. "shoulder.ogg", t = 62 / 30},
        },
    },
    ["reload_empty_50rnd"] = {
        Source = "reload_empty_50rnd",
        IKTimeLine = ARC9.UC.LHIK(3.7666666666666666, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 62 / 30},
            {s = path .. "magin.ogg", t = 67 / 30},
            {s = rottle, t = 80 / 30},
            {s = path .. "chslap.ogg", t = 85 / 30},
            {s = ratel, t = 86 / 30},
            {s = common .. "grab.ogg", t = 97 / 30},
            {s = common .. "shoulder.ogg", t = 98 / 30},
        },
    },
    ["reload_empty_50rnd_scope"] = {
        Source = "reload_empty_scope_50rnd",
        IKTimeLine = ARC9.UC.LHIK(3.7666666666666666, 0.3, nil, 0.5, 0.25),
        MinProgressTime = 2.1,
        MagSwapTime = 50 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg", t = 6 / 30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13 / 30, v = 1.95},
            {s = ratel, t = 22 / 30},
            {s = rottle, t = 23 / 30},
            {s = path .. "magrel.ogg", t = 27 / 30},
            {s = path .. "magout.ogg", t = 30 / 30},
            {s = common .. "magpouch.ogg", t = 47 / 30},
            {s = rottle, t = 49 / 30},
            {s = rottle, t = 55 / 30},
            {s = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg", common .. "rifle_magdrop.ogg"}, t = 51 / 30, v = 0.25},
            {s = path .. "struggle.ogg", t = 62 / 30},
            {s = path .. "magin.ogg", t = 67 / 30},
            {s = rottle, t = 80 / 30},
            {s = path .. "chlock.ogg", t = 75 / 30, v = 1.95},
            {s = path .. "chamber.ogg", t = 85 / 30},
            {s = ratel, t = 86 / 30},
            {s = common .. "grab.ogg", t = 97 / 30},
            {s = common .. "shoulder.ogg", t = 98 / 30},
        },
    },
    ["fix"] = {
        Source = "jamfix",
        EjectAt = 0.5,
        EventTable = {
            {s = common .. "cloth_4.ogg", t = 0.1},
            {s = path .. "chback.ogg", t = 0.3},
            {s = path .. "chamber.ogg", t = 0.6},
            {s = common .. "grab.ogg", t = 0.9},
            {s = common .. "shoulder.ogg", t = 0.95},
        },
        IKTimeLine = ARC9.UC.LHIK(1.4666666666666666, 0.2, nil, 0.6, 0.3),
    },
    ["enter_inspect"] = {
        Source = "inspect_enter",
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        IKTimeLine = ARC9.UC.LHIK(4.0, 0, nil, 0.6, 0.3),
        EventTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 100 / 30},
            {s = common .. "shoulder.ogg", t = 40 / 30},
            {s = path .. "chback.ogg", t = 78 / 30, v = 1.25},
            {s = path .. "chlock.ogg", t = 85 / 30, v = 1.25},
            {s = path .. "chamber.ogg", t = 103 / 30},
        },
    },
}

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_g3.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_g3.truename")
SWEP.Description = "arc9_ur_g3.description"
SWEP.Class = "arc9_ur_g3.trivia_class"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_g3.trivia_manufacturer.true" or "arc9_ur_g3.trivia_manufacturer",
    ["uc.trivia.calibre2"] = "arc9_ur_g3.trivia_calibre",
    ["uc.trivia.mechanism3"] = "arc9_ur_g3.trivia_mechanism",
    ["uc.trivia.country4"] = "arc9_ur_g3.trivia_country",
    ["uc.trivia.year5"] = "arc9_ur_g3.trivia_year",
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
SWEP.HookP_NameChange = function(wep)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default", "ur_g3_barrel_", "")
    local rec = string.Replace(atts[3].Installed or "default", "ur_g3_rec_", "")
    local stock = string.Replace(atts[8].Installed or "default", "ur_g3_stock_", "")
    local trueNames = ARC9:UseTrueNames()
    if rec == "hk33" then
        if trueNames then
            local bLookup = {
                ["8"] = ARC9:GetPhrase("arc9_ur_g3.variant1"),
                ["12"] = ARC9:GetPhrase("arc9_ur_g3.variant2"),
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return ARC9:GetPhrase("arc9_ur_g3.variant3")
            else
                return (stock == "collapsible" and ARC9:GetPhrase("arc9_ur_g3.variant4")) or ARC9:GetPhrase("arc9_ur_g3.variant5")
            end
        else
            local bLookup = {
                ["8"] = ARC9:GetPhrase("arc9_ur_g3.variant6"),
                ["12"] = ARC9:GetPhrase("arc9_ur_g3.variant7"),
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return ARC9:GetPhrase("arc9_ur_g3.variant8")
            else
                return ARC9:GetPhrase("arc9_ur_g3.variant9")
            end
        end
    elseif rec == "default" then
        if trueNames then
            if atts[13].Installed == "uc_fg_civvy" then return ARC9:GetPhrase("arc9_ur_g3.variant10") end
            local bLookup = {
                ["8"] = ARC9:GetPhrase("arc9_ur_g3.variant11"),
                ["12"] = ARC9:GetPhrase("arc9_ur_g3.variant12"),
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return ARC9:GetPhrase("arc9_ur_g3.variant13")
            else
                return (stock == "collapsible" and ARC9:GetPhrase("arc9_ur_g3.variant14")) or ARC9.UC.NameChange(wep)
            end
        else
            local bLookup = {
                ["8"] = ARC9:GetPhrase("arc9_ur_g3.variant15"),
                ["12"] = ARC9:GetPhrase("arc9_ur_g3.variant16"),
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return ARC9:GetPhrase("arc9_ur_g3.variant17")
            else
                return ARC9:GetPhrase("arc9_ur_g3.variant18")
            end
        end
    end
    return ARC9.UC.NameChange(wep)
end

SWEP.SprintToFireTime = 0.35
SWEP.FreeAimRadius = math.Clamp(900 / 80, 3, 10)
SWEP.ARC9WeaponCategory = ARC9.WEAPON_AR
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
    vm:SetPoseParameter("short", wep.Attachments[2].Installed == "ur_g3_barrel_8" and 1 or 0)
    local atts = wep.Attachments
    local barrel = atts[2].Installed or "default"
    local hg = atts[4].Installed
    local muzzle = atts[5].Installed
    local ub = atts[6].Installed or atts[15].Installed
    local optic = atts[1].Installed
    local charm = atts[14].Installed
    local bayobipod = atts[17].Installed
    local hgind = hgbg[hg] or 0
    if barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15" then
        vm:SetBodygroup(6, hgind + 3)
        if ub == "ur_g3_ub_bayonet" then
            vm:SetBodygroup(7, 2)
        elseif ub == "ur_g3_ub_bipod" then
            vm:SetBodygroup(7, 4)
        end
    elseif barrel == "ur_g3_barrel_8" then
        vm:SetBodygroup(6, hgind + 6)
    elseif barrel == "ur_g3_barrel_26" then
        vm:SetBodygroup(6, 11)
    else
        vm:SetBodygroup(6, hgind)
    end

    if (barrel == "default" or barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15" or barrel == "ur_g3_barrel_8") and ub == "uc_ubgl_hk79" then vm:SetBodygroup(6, 11) end
    if barrel == "ur_g3_barrel_26" then vm:SetBodygroup(1, 1) end
    vm:SetBodygroup(9, not muzzle and muzzlebg[barrel] or 3)
    vm:SetBodygroup(10, (optic or charm == "ur_mp5_optic_mount") and (opticbg[optic] and 0 or 1) or 0)
    vm:SetBodygroup(8, ub and (ubmountbg[hg] or 1) or 0)
    local todo = 0
    local short = barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15"
    if bayobipod == "ur_g3_bayobipod_bayonet" then
        todo = short and 2 or 1
    elseif bayobipod == "ur_g3_bayobipod_bipod" then
        todo = short and 4 or 3
    end

    vm:SetBodygroup(7, todo)
end

SWEP.HideBones = {}
SWEP.UC_MalfunctionVariance = 0.25
SWEP.MalfunctionNeverLastShoot = false
SWEP.MalfunctionWait = 0.5
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if not string.StartsWith(anim, "reload") then return end
    local mag = wep.Attachments[9].Installed
    local suffix = ""
    if mag == "ur_g3_mag_50" then
        suffix = "_50rnd"
    elseif mag == "ur_g3_mag_10" then
        suffix = "_10rnd"
    elseif mag == "ur_g3_mag_40_556" or wep.Attachments[3].Installed == "ur_g3_rec_hk33" and not mag then
        suffix = "_30rnd"
    end

    if anim == "reload_empty" and wep.Attachments[1].Installed then suffix = suffix .. "_scope" end
    return anim .. suffix
end

SWEP.AttachmentElements.uc_g3_hk79 = {
    UC_UseClassicHK79Mount = true,
    AttPosMods = {
        [15] = {
            Pos = Vector(0, -0.7, 7.3),
            Ang = Angle(90, 0, -90)
        },
    },
}

SWEP.Hook_ModifyElements = function(wep, elements)
    if elements.uc_ubgl_hk79 and not elements.ur_g3_barrel_26 then elements.uc_g3_hk79 = true end
    return elements
end

SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam

ARC9.UC.ConvertAttachmentAngles(SWEP)
