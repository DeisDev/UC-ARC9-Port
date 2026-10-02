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
SWEP.RollJam = ARC9.UC.RollJam
SWEP.UC_MalfunctionVariance = 0.25
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ud.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 0.666
SWEP.ShellPitch = 100

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)
SWEP.TracerNum = 1
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.01

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ud_mini14.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_mini14.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.semi_automatic_rifle"
SWEP.Description = "arc9_ud_mini14.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_mini14.trivia.manufacturer.true" or "arc9_ud_mini14.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.5_56x45mm_nato",
    ["uc.trivia.mechanism3"] = "uc.mechanism.gas_operated_rotating_bolt",
    ["uc.trivia.country4"] = "uc.country.usa",
    ["uc.trivia.year5"] = 1973,
}

-- Weapon slot --

SWEP.Slot = 2

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_mini14.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_mini14.mdl"
SWEP.DefaultBodygroups = "00000000"
SWEP.ViewModelFOVBase = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.DefaultSkin = 0

-- Damage --

SWEP.DamageMax = ARC9.UC.StdDmg["556"].max
SWEP.DamageMin = ARC9.UC.StdDmg["556"].min
SWEP.RangeMin = 50 * ARC9.UC.Meter
SWEP.RangeMax = 400 * ARC9.UC.Meter -- 4 shot until ~275m
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true

SWEP.Penetration = ARC9.UC.StdDmg["556"].pen
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 960 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 20

-- Recoil --

SWEP.Recoil = 0.45 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.2 / 0.45
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 0.45
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 0.25

-- Firerate / Firemodes --

SWEP.RPM = 540
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch
SWEP.ShootVolume = 120

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_AR

-- Accuracy --

SWEP.Spread = 2 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 800 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 150 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = math.Clamp(800 / 80, 3, 10)

SWEP.Ammo = "smg1"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 5
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMeanShotsToFail = 100

-- Speed multipliers --

SWEP.Speed = 0.9
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.35
SWEP.SpeedMultShooting = 0.9

-- Melee --

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

-- Length --

SWEP.BarrelLength = 36

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes.
SWEP.RestPos = Vector(2.508544, 0.503909, -1.205522)
SWEP.RestAng = Angle(20.085123, -5.167378, -21.886228)

SWEP.SprintPos = Vector(0.743182, -3.902527, -2.113756)
SWEP.SprintAng = Angle(7.012951, 3.473879, -19.572934)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng
SWEP.DynamicConditions = {Recoil = true, SprintPos = true, SprintAng = true}

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

SWEP.IronSights = {
    Pos = Vector(-4.305, -7, 2.55),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    CrosshairInSights = false,
}

SWEP.ActivePos = Vector(-1, -1, 1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizeRotateAnchor = Vector(21.5, -4.305, -3)

SWEP.CrouchPos = Vector(-5, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 6.5, -6),
    Ang = Angle(-12, 0, 180),
    Scale = 1 - ( 0.35 * 0.75 )
}

-- Firing sounds --

local path = ")weapons/arccw_ud/mini14/"
local common = ")/arccw_uc/common/"
SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DryFireSound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/556x45/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-556x45-rif-ext-01.ogg",
    tail .. "fire-dist-556x45-rif-ext-02.ogg",
    tail .. "fire-dist-556x45-rif-ext-03.ogg",
    tail .. "fire-dist-556x45-rif-ext-04.ogg",
    tail .. "fire-dist-556x45-rif-ext-05.ogg",
    tail .. "fire-dist-556x45-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
}
SWEP.DistantShootSoundSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundSilencedIndoor = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound

-- Bodygroups --

SWEP.BulletBones = {
    [1] = {},
    [2] = "mini14_bullet1", [3] = "mini14_bullet2"
}

SWEP.AttachmentElements = {
    ["ud_mini14_mag_10"] = {
        Bodygroups = {{4, 2}},
    },
    ["ud_mini14_mag_30"] = {
        Bodygroups = {{4, 1}},
    },
    ["ud_mini14_mag_42"] = {
        Bodygroups = {{4, 4}},
    },
    ["ud_mini14_mag_60"] = {
        Bodygroups = {{4, 5}},
    },
    ["ud_mini14_mag_15_22lr"] = {
        Bodygroups = {{4, 3}},
    },
    ["ud_mini14_mag_30_762"] = {
        Bodygroups = {{4, 6}},
    },
    ["ud_mini14_rail_optic"] = {
        Bodygroups = {{2, 1}},
    },

    ["ud_mini14_rail_fg"] = {
        Bodygroups = {{5, 1}},
    },

    ["ud_mini14_barrel_long"] = {
        Bodygroups = {{3, 1}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -2.15, 34.5),
            },
        },
    },
    ["ud_mini14_barrel_short"] = {
        Bodygroups = {{3, 2}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -2.15, 27.5),
            },
        },
    },
    ["ud_mini14_barrel_stub"] = {
        Bodygroups = {{3, 3}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -2.1, 25),
            },
        },
    },

    ["ud_mini14_receiver_762"] = {
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.762"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.762.true"),
    },
    ["ud_mini14_receiver_auto"] = {
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.auto"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.auto.true"),
    },
    ["ud_mini14_receiver_22lr"] = {
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.22lr"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_mini14.name.22lr.true"),
    },

    ["ud_mini14_stock_polymer"] = {
        Bodygroups = {{1, 1}},
    },
    ["ud_mini14_stock_sawnoff"] = {
        Bodygroups = {{1, 2}},
    },
    ["ud_mini14_stock_tactical"] = {
        Bodygroups = {{1, 4}},
    },
    ["ud_mini14_stock_tactical_polymer"] = {
        Bodygroups = {{1, 3}},
        Skin = 1,
    },

    ["ud_mini14_clamp"] = {
        Bodygroups = {{6, 1}},
    },
}

-- Animations --

local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "unjam",
        Time = 40 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",  t = 0.25},
            {s = path .. "chamber.ogg", t = 0.35},
            {s = rottle, t = 0.8},
            {s = common .. "shoulder.ogg",  t = 1},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.5, 0.5, 0.5, 0.15),
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = ARC9.UC.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 12 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = ARC9.UC.LHIK(17 / 30, 0.4, 0.4, 0, 0),
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        IKTimeLine = ARC9.UC.LHIK(12 / 30, 0.4, 0.4, 0, 0),
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 20 / 30,
        EventTable = {{ s = mech, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 20 / 30,
        EventTable = {{ s = mech, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 20 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 20 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fix"] = {
        Source = "unjam",
        Time = 40 / 30,
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "chback.ogg",  t = 0.25},
            {s = path .. "chamber.ogg", t = 0.35},
            {s = rottle, t = 0.8},
            {s = common .. "shoulder.ogg",  t = 1},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.5, 0.5, 0.5, 0.15),
        EjectAt = .35,
    },
    -- 20 Round Reloads --

    ["reload"] = {
        Source = "reload",
        Time = 66 / 30,
        MinProgressTime = 1.4,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(66 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.25},
            {s = rottle, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6},
            {s = path .. "magin.ogg",   t = 1.05},
            {s = rottle, t = 1.3},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 86 / 30,
        MinProgressTime = 2.1,
        MagSwapTime = 1,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = rottle, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.85},
            {s = path .. "chamber.ogg", t = 1.95},
            {s = rottle, t = 2.2},
            {s = common .. "shoulder.ogg",  t = 2.4},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        Time = 67 / 30,
        MinProgressTime = 1.6,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.6},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = rottle, t = 1.5},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        Time = 86 / 30,
        MinProgressTime = 2.1,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = rottle, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.90},
            {s = path .. "chamber.ogg", t = 2.00},
            {s = rottle, t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.5},
        },
    },

    -- 30 Round Reloads --

    ["reload_30"] = {
        Source = "reload_30",
        Time = 67 / 30,
        MinProgressTime = 1.4,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = rottle, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_30"] = {
        Source = "reload_empty_30",
        Time = 86 / 30,
        MinProgressTime = 2.3,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = rottle, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 30 polymer Reloads --

    ["reload_30_tac"] = {
        Source = "reload_30_tac",
        Time = 67 / 30,
        MinProgressTime = 1.4,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = rottle, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_30_tac"] = {
        Source = "reload_empty_30_tac",
        Time = 86 / 30,
        MinProgressTime = 2.3,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = rottle, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 7.62 reloads --

    ["reload_762"] = {
        Source = "reload_762",
        Time = 67 / 30,
        MinProgressTime = 1.4,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = rottle, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_762"] = {
        Source = "reload_empty_762",
        Time = 86 / 30,
        MinProgressTime = 2.3,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = rottle, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 60 round reloads (?) --

    ["reload_60"] = {
        Source = "reload_60",
        Time = 67 / 30,
        MinProgressTime = 1.4,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.35},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = rottle, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        Time = 86 / 30,
        MinProgressTime = 2.3,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.35},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 1.9},
            {s = path .. "chamber.ogg", t = 2},
            {s = rottle, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 15 22lr Round Reloads --

    ["reload_15_22lr"] = {
        Source = "reload_15_22lr",
        Time = 67 / 30,
        MinProgressTime = 1.6,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.3, 0.4, 0.7, 0.45),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = rottle, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65},
            {s = path .. "magin.ogg",   t = .9},
            {s = rottle, t = 1.4},
        },
    },
    ["reload_empty_15_22lr"] = {
        Source = "reload_empty_15_22lr",
        Time = 86 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.4, 0.4, 0.6, 0.45),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = rottle, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.9},
            {s = common .. "magpouch.ogg", t = 0.7},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.9},
            {s = path .. "chamber.ogg", t = 2.0},
            {s = rottle, t = 2.3},
        },
    },
}

local gripstocks = {
    ["ud_mini14_stock_tactical"] = true,
    ["ud_mini14_stock_tactical_polymer"] = true,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    if !IsValid(mdl) then return end

    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default", "ud_mini14_barrel_", "")
    local muzz = atts[3].Installed
    local tac = atts[6].Installed

    if muzz or barr == "stub" or barr == "default" then
        mdl:SetBodygroup(7, 2)
    elseif barr == "short" then
        mdl:SetBodygroup(7, 1)
    elseif barr == "long" then
        mdl:SetBodygroup(7, 0)
    end

    if !tac then
        mdl:SetBodygroup(6, 0)
    end

    -- Tactical stocks use the pistol grip pose.
    mdl:SetPoseParameter("grip", gripstocks[atts[8].Installed or ""] and 1 or 0)
end

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic", "optic_sniper"},
        Bone = "mini14_parent",
        Pos = Vector(0, -3.6, 6),
        Ang = Angle(90, 2, -90),
        Scale = 1.2,
        InstalledElements = {"ud_mini14_rail_optic"},
        ExtraSightDistance = 2,
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = D("20in_standard_barrel"),
        DefaultIcon = Material("entities/att/acwatt_ud_mini14_barrel.png", "smooth mips"),
        Category = "ud_mini14_barrel",
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"muzzle"},
        Bone = "mini14_parent",
        Pos = Vector(0, -2.15, 30),
        Ang = Angle(90, 0, -90),
        Scale = 1.5,
        ExcludeElements = {"nomuzzle"},
    },
    {
        PrintName = "uc.slot.receiver",
        DefaultName = D("mini_14_receiver"),
        DefaultIcon = Material("entities/att/acwatt_ud_mini14_receiver.png", "smooth mips"),
        Category = "ud_mini14_receiver",
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip"},
        Bone = "mini14_parent",
        Pos = Vector(0, 0, 14),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_mini14_rail_fg"},
        MergeSlots = {14}
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac"},
        Bone = "mini14_parent",
        Pos = Vector(0, -1.5, 22.3),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_mini14_clamp"},
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ud_mini14_mag"},
        DefaultName = D("20_round_mag"),
        DefaultIcon = Material("entities/att/acwatt_ud_mini14_mag_20.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ud_mini14_stock"},
        DefaultName = D("wooden_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_mini14_stock.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = D("fmj"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "uc.slot.powder",
        Category = "uc_powder",
        DefaultName = D("standard_load"),
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = D("basic_training"),
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg", -- Fire group
        DefaultName = D("standard_internals"),
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "mini14_parent",
        Pos = Vector(1.1, -0.5, 6),
        Ang = Angle(90, 0, -90),
    },
    {
        -- Merged into the underbarrel slot.
        PrintName = "uc.slot.ubgl",
        Category = "uc_ubgl",
        Bone = "mini14_parent",
        Pos = Vector(0, -1.2, 10),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_mini14_rail_fg"},
        ExcludeElements = {"ak_noubs", "barrel_rpk"},
    }
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
