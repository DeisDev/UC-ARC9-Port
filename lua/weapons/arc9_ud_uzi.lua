SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
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
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.TracerNum = 1
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.03

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ud_uzi.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_uzi.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.smg"
SWEP.Description = "arc9_ud_uzi.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_uzi.trivia.manufacturer.true" or "arc9_ud_uzi.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum",
    ["uc.trivia.mechanism3"] = "uc.mechanism.open_bolt",
    ["uc.trivia.country4"] = "uc.country.israel",
    ["uc.trivia.year5"] = 1950,
}

-- Weapon slot --

SWEP.Slot = 2

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.DefaultBodygroups = "00000000"
SWEP.ViewModelFOVBase = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

-- Damage --

SWEP.DamageMax = ARC9.UC.StdDmg["9mm"].max
SWEP.DamageMin = ARC9.UC.StdDmg["9mm"].min
SWEP.Penetration = ARC9.UC.StdDmg["9mm"].pen

SWEP.RangeMin = 15 * ARC9.UC.Meter
SWEP.RangeMax = 100 * ARC9.UC.Meter -- 4 shot until ~35m
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true

SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 400 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 0
SWEP.ClipSize = 32

-- Recoil --

SWEP.Recoil = 0.28 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.35 / 0.28
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 0.28
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 0.3

-- Firerate / Firemodes --

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.025

SWEP.RPM = 700
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = -1,
        TriggerDelayTimeMult = 2,
    },
    {
        Mode = 1,
        TriggerDelayTimeMult = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_SMG

-- Accuracy --

SWEP.Spread = 6 * ARC9.UC.MOA
SWEP.SpreadAddHipFire = 400 * ARC9.UC.Dispersion
SWEP.SpreadAddMove = 100 * ARC9.UC.Dispersion
SWEP.SpreadAddMidAir = 1000 * ARC9.UC.Dispersion
SWEP.FreeAimRadius = math.Clamp(400 / 80, 3, 10)

SWEP.Ammo = "pistol"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMeanShotsToFail = 200

-- Speed multipliers --

SWEP.Speed = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.3
SWEP.SpeedMultShooting = 0.95

-- Melee --

SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-- Length --

SWEP.BarrelLength = 24

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes.
SWEP.RestPos = Vector(0.515385, -1.742824, 1.395329)
SWEP.RestAng = Angle(8.087680, -8.416675, -11.191555)

SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

SWEP.IronSights = {
    Pos = Vector(-2.869, -6, 1.95),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(0.4, -1.9, 1.4)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizeRotateAnchor = Vector(21.5, -2.869, -3)

SWEP.CrouchPos = Vector(-3, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelOffset = {
    Pos = Vector(-16, 4, -3),
    Ang = Angle(-12, 0, 180),
    Scale = 1
}

-- Firing sounds --

local path = ")weapons/arccw_ud/uzi/"
local path1 = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
SWEP.ShootSoundSilenced = path1 .. "fire_supp.ogg"
SWEP.DryFireSound = path .. "dryfire.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}

local tail = ")/arccw_uc/common/9x19/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-9x19-smg-ext-01.ogg",
    tail .. "fire-dist-9x19-smg-ext-02.ogg",
    tail .. "fire-dist-9x19-smg-ext-03.ogg",
    tail .. "fire-dist-9x19-smg-ext-04.ogg",
    tail .. "fire-dist-9x19-smg-ext-05.ogg",
    tail .. "fire-dist-9x19-smg-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    common .. "fire-dist-int-pistol-01.ogg",
    common .. "fire-dist-int-pistol-02.ogg",
    common .. "fire-dist-int-pistol-03.ogg",
    common .. "fire-dist-int-pistol-04.ogg",
    common .. "fire-dist-int-pistol-05.ogg",
    common .. "fire-dist-int-pistol-06.ogg"
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
SWEP.HookP_TranslateSound = ARC9.UC.SubsonicTail

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "uzi_b1", [2] = "uzi_b2", [3] = "uzi_b3", [4] = "uzi_b4"
}

SWEP.AttachmentElements = {

    ["ud_uzi_mag_20"] = {
        Bodygroups = {{2, 1}},
    },
    ["ud_uzi_mag_40"] = {
        Bodygroups = {{2, 2}},
    },
    ["ud_uzi_mag_100"] = {
        Bodygroups = {{2, 3}},
    },
    ["ud_uzi_mag_45_10"] = {
        Bodygroups = {{2, 1}},
    },
    ["ud_uzi_mag_45_22"] = {
        Bodygroups = {{2, 2}},
    },

    ["ud_uzi_rail_optic"] = {
        Bodygroups = {{4, 2}},
    },

    ["ud_uzi_clamp"] = {
        Bodygroups = {{6, 1}},
    },

    ["ud_uzi_rail_fg"] = {
        Bodygroups = {{5, 1}},
    },

    ["ud_uzi_stock_wood"] = {
        Bodygroups = {{3, 2}},
    },
    ["ud_uzi_stock_polymer"] = {
        Bodygroups = {{3, 3}},
    },
    ["ud_uzi_stock_folded"] = {
        Bodygroups = {{3, 1}},
    },
    ["ud_uzi_stock_remove"] = {
        Bodygroups = {{3, 4}},
    },

    ["ud_uzi_body_carbine"] = {
        Bodygroups = {{1, 1}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.carbine"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.carbine.true"),
        AttPosMods = {
            [4] = {
                Pos = Vector(-0.2, 0.5, 20.8),
            },
        },
    },
    ["ud_uzi_body_mini"] = {
        Bodygroups = {{1, 2}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.mini"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.mini.true"),
        AttPosMods = {
            [4] = {
                Pos = Vector(-0.2, 0.5, 11.8),
            },
        },
    },
    ["ud_uzi_body_micro"] = {
        Bodygroups = {{1, 3}, {4, 1}, {3, 4}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.micro"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.micro.true"),
        IronSights = {
            Pos = Vector(-2.869, 3, 1.95),
            Ang = Angle(-0, 0.035, 0),
            Magnification = 1,
            CrosshairInSights = false
        },
        AttPosMods = {
            [1] = {
                Pos = Vector(-0.2, -1.8, -1.5),
            },
            [4] = {
                Pos = Vector(-0.2, 0.3, 7.8),
            },
            [6] = {
                Pos = Vector(-0.25, 1.4, 6),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["ud_uzi_body_civvy"] = {
        Bodygroups = {{1, 4}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.civvy"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ud_uzi.name.civvy.true"),
        AttPosMods = {
            [4] = {
                Pos = Vector(-0.2, 0.5, 23.8),
            },
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    if !IsValid(mdl) then return end
    local barrel = wep.Attachments[2].Installed
    if barrel == "ud_uzi_body_micro" then
        if wep.Attachments[1].Installed then
            mdl:SetBodygroup(4, 3)
        end
        if wep.Attachments[6].Installed then
            mdl:SetBodygroup(6, 0)
            mdl:SetBodygroup(5, 2)
        end
    end
end

-- Animations --

local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "fix",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = rottle, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3},
            {s = path .. "chforward.ogg",         t = 0.65},
        },
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
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.25,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 0.25,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        EventTable = {{ s = path .. "chforward.ogg", t = 0 }},
    },

    ["trigger"] = {
        Source = "idle",
        Time = 0.025,
        EventTable = {
            {s = path .. "prefire.ogg",         t = 0},
        },
    },
    ["trigger_empty"] = {
        Source = "idle",
        Time = 0,
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3},
            {s = path .. "chforward.ogg",         t = 0.65},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3},
            {s = path .. "chforward.ogg",         t = 0.65},
        },
    },

    ["fix_micro"] = {
        Source = "fix_micro",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3},
            {s = path .. "chforward.ogg",         t = 0.65},
        },
    },
    ["fix_empty_micro"] = {
        Source = "fix_micro_empty",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3},
            {s = path .. "chforward.ogg",         t = 0.65},
        },
    },

    -- 32 Round Reloads --

    ["reload"] = {
        Source = "reload",
        Time = 67 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 67 / 30,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.4, 0.4, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 90 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.4},
            {s = rottle, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1},
            {s = rottle, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.935},
            {s = path .. "chforward.ogg",         t = 2.15},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 16 Round Reloads --

    ["reload_16"] = {
        Source = "reload_16",
        Time = 67 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 67 / 30,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.4, 0.4, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_16"] = {
        Source = "reload_empty_16",
        Time = 90 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.4},
            {s = rottle, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1},
            {s = rottle, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947},
            {s = path .. "chforward.ogg",         t = 2.15},
            {s = common .. "shoulder.ogg",  t = 2.45},
        },
    },

    -- 41 Round Reloads --

    ["reload_41"] = {
        Source = "reload_41",
        Time = 67 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 67 / 30,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.4, 0.4, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.35},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.65},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_41"] = {
        Source = "reload_empty_41",
        Time = 90 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.4},
            {s = rottle, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1},
            {s = rottle, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947},
            {s = path .. "chforward.ogg",         t = 2.15},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        Time = 67 / 30,
        MinProgressTime = 1.6,
        MagSwapTime = 1,
        IKTimeLine = ARC9.UC.LHIK(67 / 30, 0.4, 0.4, 0.4, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",         t = 1.15},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg",  t = 1.95},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        Time = 90 / 30,
        MinProgressTime = 2.4,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.15},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "chback.ogg",         t = 2.0},
            {s = path .. "chforward.ogg",         t = 2.25},
            {s = common .. "shoulder.ogg",  t = 2.7},
        },
    },
}

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic"},
        Bone = "uzi_parent",
        Pos = Vector(-0.2, -1.55, -0.5),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_uzi_rail_optic"},
        ExtraSightDistance = 7,
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = D("10in_standard_barrel"),
        DefaultIcon = Material("entities/att/acwatt_ud_uzi_body.png", "smooth mips"),
        Category = "ud_uzi_frame",
        Bone = "uzi_parent",
        Pos = Vector(2.6, -3.7, -17.3),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.caliber",
        DefaultName = D("9x19mm_parabellum"),
        DefaultIcon = Material("entities/att/uc_bullets/9x19.png", "smooth mips"),
        Category = "ud_uzi_caliber",
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"muzzle"},
        Bone = "uzi_parent",
        Pos = Vector(-0.2, 0.5, 14.8),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip"},
        Bone = "uzi_parent",
        Pos = Vector(-0.2, 1.85, 6.9), -- nice
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_uzi_rail_fg"},
        ExcludeElements = {"micro"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "uzi_parent",
        Pos = Vector(-1.35, 0.9, 5.8),
        Ang = Angle(90, 0, 180),
        InstalledElements = {"ud_uzi_clamp"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ud_uzi_stock"},
        DefaultName = D("folding_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_uzi_stock.png", "smooth mips"),
        ExcludeElements = {"micro"},
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ud_uzi_mag"},
        DefaultName = D("32_round_mag"),
        DefaultIcon = Material("entities/att/acwatt_ud_uzi_mag_32.png", "smooth mips"),
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
        Bone = "uzi_parent",
        Pos = Vector(0.4, 1.3, 2.3),
        Ang = Angle(90, 0, -90),
    },
}
