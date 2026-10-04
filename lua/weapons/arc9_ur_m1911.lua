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
SWEP.UC_MalfunctionVariance = 0.25
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ur.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 90
SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
-- The idle camera attachment faces forward with a 90-degree roll.
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.TracerNum = 0
SWEP.TracerNum_Priority = 0
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_m1911.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_m1911.truename")

SWEP.Class = "uc.class.pistol"
SWEP.Description = "arc9_ur_m1911.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_m1911.trivia.manufacturer.true" or "arc9_ur_m1911.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.45_acp",
    ["uc.trivia.mechanism3"] = "uc.mechanism.short_recoil",
    ["uc.trivia.country4"] = "uc.country.usa",
    ["uc.trivia.year5"] = 1911,
}

-- Weapon slot --

SWEP.Slot = 1

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_m1911.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_m1911.mdl"
SWEP.DefaultBodygroups = "0000000000"
SWEP.ViewModelFOVBase = 66
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

-- Damage --

SWEP.DamageMax = 45
SWEP.DamageMin = 15
SWEP.Penetration = 9
SWEP.PenetrationDelta = 0

SWEP.RangeMin = 10 * ARC9.UC.Meter
SWEP.RangeMax = 80 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 253 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 7

-- Recoil --

SWEP.Recoil = 1.25 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.75 / 1.25
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 1.25
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 0.5
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 1 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2

-- Firerate / Firemodes --

SWEP.RPM = 400
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

SWEP.ARC9WeaponCategory = ARC9.WEAPON_PISTOL

-- Accuracy --

SWEP.Spread = 5 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 400 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 150 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = math.Clamp(400 / 80, 3, 10)

SWEP.Ammo = "pistol"

SWEP.HeatCapacity = 200
SWEP.HeatDissipation = 2
SWEP.HeatDelayTime = 0.5

SWEP.MalfunctionMeanShotsToFail = 84
SWEP.MalfunctionWait = 0.5
SWEP.MalfunctionNeverLastShoot = false

SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam

-- Speed multipliers --

SWEP.Speed = 0.97
SWEP.SpeedMultSights = 0.875
SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultMelee = 1

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

SWEP.BarrelLength = 8

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes.
SWEP.RestPos = Vector(0.292774, 3.297962, 0.829294)
SWEP.RestAng = Angle(0.000000, -14.000000, -0.500000)

SWEP.SprintPos = Vector(-0.727041, 3.048582, 0.517259)
SWEP.SprintAng = Angle(15.054701, -4.829217, -21.297169)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng

SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "revolver"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeNPC = "pistol"

-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
SWEP.IronSights = {
    Pos = Vector(-2.175632, 9.993889, 1.751486),
    Ang = Angle(0.020000, 0.200000, 5.500070),
    Magnification = 1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

SWEP.ActivePos = Vector(0.288644, 3.000000, 1.302568)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -0.500000)

SWEP.CustomizeRotateAnchor = Vector(16, -2.33, -2)

SWEP.CrouchPos = Vector(-2.269180, -3.000000, -1.580914)
SWEP.CrouchAng = Angle(0, 0, -7.5)

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 4, -4.25),
    Ang = Angle(-6, 0, 180),
}

-- Firing sounds --

local path = ")weapons/arccw_ur/1911/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local rutle = {common .. "movement-pistol-01.ogg",common .. "movement-pistol-02.ogg",common .. "movement-pistol-03.ogg",common .. "movement-pistol-04.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}

SWEP.DryFireSound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/45acp/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-45acp-pistol-ext-01.ogg",
    tail .. "fire-dist-45acp-pistol-ext-02.ogg",
    tail .. "fire-dist-45acp-pistol-ext-03.ogg",
    tail .. "fire-dist-45acp-pistol-ext-04.ogg",
    tail .. "fire-dist-45acp-pistol-ext-05.ogg",
    tail .. "fire-dist-45acp-pistol-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    tail .. "fire-dist-45acp-pistol-int-01.ogg",
    tail .. "fire-dist-45acp-pistol-int-02.ogg",
    tail .. "fire-dist-45acp-pistol-int-03.ogg",
    tail .. "fire-dist-45acp-pistol-int-04.ogg",
    tail .. "fire-dist-45acp-pistol-int-05.ogg",
    tail .. "fire-dist-45acp-pistol-int-06.ogg"
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
    [1] = "mag_round1",
    [2] = "mag_round2",
    [3] = "mag_round3",
    [4] = "mag_round4",
    [5] = "mag_round5",
    [6] = "mag_round6",
    [7] = "mag_round7"
}
-- The spare magazine mesh is weighted to tag_mag2, not its vm_mag2 parent.
SWEP.HideBones = {"vm_mag2", "tag_mag2"}
SWEP.HookP_NameChange = ARC9.UC.NameChange
SWEP.Hook_ModifyBodygroups = function(wep, data)
    data.model:SetPoseParameter("sights", math.ease.InOutCubic(wep:GetSightAmount()))
end
SWEP.AttachmentElements = {
    ["ur_1911_slide_compact"] = {
        Bodygroups = {
            {0, 1},
            {1, 1}
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -3.58, .22),
                Ang = Angle(0, 90, 0),
            }
        },
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.compact"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.compact.true"),
    },

    ["ur_1911_slide_compact_custom"] = {
        Bodygroups = {
            {0, 1},
            {1, 5}
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -3.58, .22),
                Ang = Angle(0, 90, 0),
            }
        },
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.compact"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.compact.true"),
    },

    ["ur_1911_slide_custom"] = {
        Bodygroups = {
            {1, 4}
        },
    },

    ["ur_1911_slide_m45"] = {
        Bodygroups = {
            {1, 2},
            {4, 1},
            {5, 1},
        },
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.m45"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.m45.true"),
        IronSights = {
            Pos = Vector(-2.162780, 9.990348, 1.662929),
            Ang = Angle(0.070001, 0.275000, 5.500336),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    },

    ["ur_1911_slide_m45_custom"] = {
        Bodygroups = {
            {1, 3},
            {4, 1},
            {5, 1},
        },
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.m45"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.m45.true"),
        IronSights = {
            Pos = Vector(-2.162780, 9.990348, 1.662929),
            Ang = Angle(0.070001, 0.275000, 5.500336),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    },

    ["ur_1911_mag_ext"] = {
        Bodygroups = {
            {3, 1}
        }
    },

    ["ur_1911_grip_snake"] = {
        Bodygroups = {
            {6, 1}
        }
    },
    ["ur_1911_grip_pachmayr"] = {
        Bodygroups = {
            {6, 2}
        }
    },

    ["ur_1911_skin_silver"] = {
        Skin = 1
    },
    ["ur_1911_skin_tan"] = {
        Skin = 2
    },
    ["ur_1911_skin_custom"] = {
        Skin = 3
    },

    ["ur_1911_cal_9mm"] = {
        PrintNameOverride_Priority = 2,
        TrueName_Priority = 2,
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.9mm"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.9mm.true"),
    },
    ["ur_1911_cal_10auto"] = {
        PrintNameOverride_Priority = 2,
        TrueName_Priority = 2,
        PrintNameOverride = ARC9:GetPhrase("ur.m1911.name.10auto"),
        TrueName = ARC9:GetPhrase("ur.m1911.name.10auto.true"),
    },

    ["optic_rail"] = {
        Bodygroups = {
            {7, 1}
        }
    },
    ["tac_rail"] = {
        Bodygroups = {
            {8, 1}
        }
    },
}

-- Animations --

local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 10 / 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 10 / 30,
    },
    ["ready"] = {
        Source = "fix",
        IKTimeLine = ARC9.UC.LHIK(1.6, 0.3, nil, 0, nil),
        Time = 1.6,
        MinProgressTime = 1.2,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            {s = path .. "draw.ogg", t = 0.05},
            { s = mech,t = 28 / 60},
            { s = path .. "slidedrop.ogg",t = 35 / 60},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0.05},
            {s = rutle, t = 0.1},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0.05},
            {s = rutle, t = 0.1},
        },
    },
    ["draw_jam"] = {
        Source = "draw_jam",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0.05},
            {s = rutle, t = 0.1},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = .75,
        EventTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = .75,
        EventTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2},
        },
    },
    ["holster_jam"] = {
        Source = "holster_jam",
        Time = 18 / 30,
        EventTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2},
        },
    },

    ["fire"] = {
        Source = "fire",
        Time = 30 / 30,
        EventTable = {
            { s = mech, t = 0, v = 0.25 }
        },
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 30 / 30,
        EventTable = {
            { s = common .. "common_mech_light.ogg", t = 0 },
            { s = mech, t = 0 }
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 24 / 30,
        EventTable = {
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 24 / 30,
        EventTable = {
            { s = common .. "common_mech_light.ogg", t = 0 },
            { s = path .. "mech_last.ogg", t = 0 }
        },
    },
    ["jam"] = {
        Source = "fire_jam",
        Time = 30 / 30,
        MinProgressTime = 0.5,
        EventTable = {
        },
    },

    ["reload_10"] = {
        Source = "reload_ext",
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.62, 0.2),
        MinProgressTime = 1.3525,
        Time = 65 / 30,
        MagSwapTime = 0.9,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 0 / 60 },
            { s = common .. "magrelease.ogg", t = 17 / 60 },
            { s = path .. "magout.ogg", t = 26 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = common ..  "magpouch_replace_small.ogg", t = 80 / 60 },
            { s = path .. "magin.ogg", t = 50 / 60 },
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_ext",
        IKTimeLine = ARC9.UC.LHIK(75 / 30, 0.1, 0.1, 0.7, 0.55),
        MinProgressTime = 1.75,
        Time = 75 / 30,
        MagSwapTime = 0.76,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magrelease.ogg", t = 7 / 60 },
            { s = path .. "magout.ogg", t = 16 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60 },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = path .. "magin.ogg", t = 64 / 60 },
            { s = rottle, t = 90 / 60 },
            { s = path .. "slidedrop.ogg", t = 94 / 60 },
        },
    },

    ["reload"] = {
        Source = "reload",
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.62, 0.2),
        MinProgressTime = 1.3525,
        Time = 65 / 30,
        MagSwapTime = 0.9,
        EventTable = {
            { s = rottle,                                   t = 0 / 60 },
            { s = common .. "magpouch_pull_small.ogg",      t = 5 / 60 },
            { s = rottle,                                   t = 10 / 60 },
            { s = common .. "magrelease.ogg",               t = 17 / 60 },
            { s = path .. "magout.ogg",                     t = 26 / 60 },
            { s = path .. "magin.ogg",                      t = 45 / 60 },
            { s = rottle,                                   t = 55 / 60 },
            { s = common ..  "magpouch_replace_small.ogg",  t = 80 / 60 },
            { s = path .. "grab.ogg",                       t = 110 / 60 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        IKTimeLine = ARC9.UC.LHIK(75 / 30, 0.1, 0.1, 0.7, 0.55),
        MinProgressTime = 1.75,
        Time = 75 / 30,
        MagSwapTime = 0.76,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magrelease.ogg", t = 7 / 60 },
            { s = path .. "magout.ogg", t = 16 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60 },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = path .. "magin.ogg", t = 64 / 60 },
            { s = rottle, t = 90 / 60 },
            { s = path .. "slidedrop.ogg", t = 94 / 60 },
            { s = path .. "grab.ogg", t = 125 / 60 },
        },
    },

    ["fix"] = {
        Source = "fix",
        IKTimeLine = ARC9.UC.LHIK(50 / 30, 0.3, nil, 0, nil),
        Time = 50 / 30,
        EjectAt = 30 / 60,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = mech, t = 28 / 60},
            { s = path .. "slidedrop.ogg", t = 35 / 60},
        },
    },

    ["fix_empty"] = {
        Source = "fix_empty",
        IKTimeLine = ARC9.UC.LHIK(50 / 30, 0.3, nil, 0, nil),
        Time = 50 / 30,
        EjectAt = 30 / 60,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = mech,t = 28 / 60},
        },
    },

    ["idle_jammed"] = {
        Source = "idle_jam",
        IKTimeLine = ARC9.UC.LHIK(10 / 30, 0.3, nil, 0, nil),
        Time = 10 / 30,
    },

    ["enter_inspect"] = {
        Source = "enter_inspect",
        IKTimeLine = ARC9.UC.LHIK(27 / 48, 0.3, nil, 0, nil, true),
        Time = 27 / 48,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0, nil, 0.84, 0.3),
        Time = 45 / 30,
        EventTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(18 / 30, 0.1, nil, 0, nil, true),
        Time = 18 / 30,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0, nil, 0.84, 0.3),
        Time = 45 / 30,
        EventTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },
    ["enter_inspect_jammed"] = {
        Source = "enter_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(27 / 48, 0.1, nil, 0, nil, true),
        Time = 27 / 48,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect_jammed"] = {
        Source = "idle_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect_jammed"] = {
        Source = "exit_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0, nil, 0.84, 0.3),
        Time = 45 / 30,
        EventTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },
}

local jammedAnimations = {
    idle = "idle_jammed", idle_empty = "idle_jammed",
    draw = "draw_jam", draw_empty = "draw_jam",
    holster = "holster_jam", holster_empty = "holster_jam",
    enter_inspect = "enter_inspect_jammed", enter_inspect_empty = "enter_inspect_jammed",
    idle_inspect = "idle_inspect_jammed", idle_inspect_empty = "idle_inspect_jammed",
    exit_inspect = "exit_inspect_jammed", exit_inspect_empty = "exit_inspect_jammed",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetJammed() then return jammedAnimations[anim] end
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        Category = {"optic_lp"},
        DefaultName = ARC9:GetPhrase("uc.default.iron_sights"),
        Bone = "vm_pivot",
        Pos = Vector(-0.01, -2.3, 1.6),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"optic_rail"},
        ExtraSightDistance = 10,
    },
    {
        PrintName = "uc.slot.slide",
        Category = {"ur_m1911_slide"},
        Bone = "vm_pivot",
        Pos = Vector(0, -1.9, 3.5),
        DefaultIcon = Material("entities/att/ur_1911/slide_std.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.m1911.default.slide"),
    },
    {
        PrintName = "uc.slot.caliber",
        Category = {"ur_m1911_caliber"},
        DefaultIcon = Material("entities/att/uc_bullets/45acp.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("uc.calibre.45_acp"),
        Bone = "vm_pivot",
        Pos = Vector(0, -1.3, -0.3),
        Ang = Angle(90, 0, -90),
        UnInstalledElements = {"cal_subsonic"},
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = ARC9:GetPhrase("uc.default.standard_muzzle"),
        Category = {"muzzle"},
        Bone = "vm_barrel",
        Pos = Vector(0.02, -4.4, 0.12),
        Ang = Angle(0, 90, 0),
        InstalledElements = {"nofh"},
        ExcludeElements = {"barrel_annihilator"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "vm_pivot",
        Pos = Vector(0, 0, 4),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"tac_rail"},
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ur_m1911_mag"},
        Bone = "tag_mag",
        Pos = Vector(0, -1.2, -3.5),
        DefaultIcon = Material("entities/att/ur_1911/mag7.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("uc.default.7_round_mag"),
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"uc_stock", "go_stock_pistol_bt"},
        Scale = 1,
        Bone = "vm_pivot",
        Pos = Vector(0, 3, -3),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.grip",
        DefaultName = ARC9:GetPhrase("ur.m1911.default.grip"),
        DefaultIcon = Material("entities/att/ur_1911/grip.png","mips smooth"),
        Category = "ur_m1911_grip",
        Bone = "vm_pivot",
        Pos = Vector(0, 1.3, -1.4),
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = ARC9:GetPhrase("uc.default.fmj"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "uc.slot.powder",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("uc.default.standard_load")
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("uc.default.basic_training")
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg", -- Fire group
        DefaultName = ARC9:GetPhrase("uc.default.standard_internals")
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "vm_pivot",
        Pos = Vector(0.35, -0.5, 3),
        Ang = Angle(90, 0, -90),
        Scale = 0.75,
    },
    {
        PrintName = "uc.slot.material",
        Category = {"ur_m1911_skin"},
        DefaultName = ARC9:GetPhrase("ur.m1911.default.finish"),
        DefaultIcon = Material("entities/att/ur_1911/skin.png","mips smooth"),
        CosmeticOnly = true,
    },
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
