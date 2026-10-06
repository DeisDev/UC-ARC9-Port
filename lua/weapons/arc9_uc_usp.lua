SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.VisualRecoilDoingFunc = ARC9.UC.VisualRecoilDoing
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.BarrelLengthHook = ARC9.UC.BarrelLengthHook
SWEP.SprintLock = ARC9.UC.SprintLock
SWEP.Hook_Think = ARC9.UC.NearWallThink
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.DrawCustomModel = ARC9.UC.DrawCustomModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.PostModify = ARC9.UC.PostModify
SWEP.CreateHUD_Bottom = ARC9.UC.CreateHUD_Bottom
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.UC_MalfunctionVariance = 0.25
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "urban_oneoffs.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "uc_muzzleflash_pistol"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 90
SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
-- The idle camera attachment, so the resting view stays level.
SWEP.CamOffsetAng = Angle(-0.19, 0, 90)
SWEP.TracerNum = 0
SWEP.TracerNum_Priority = 0
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_uc_usp.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_uc_usp.truename")

SWEP.Class = "uc.class.pistol"
SWEP.Description = "arc9_uc_usp.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_uc_usp.trivia.manufacturer.true" or "arc9_uc_usp.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.45_acp",
    ["uc.trivia.mechanism3"] = "uc.mechanism.short_recoil",
    ["uc.trivia.country4"] = "uc.country.germany",
    ["uc.trivia.year5"] = 1993,
}

-- Weapon slot --

SWEP.Slot = 1

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_uc_usp.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_usp.mdl"
SWEP.DefaultBodygroups = "000000"
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
SWEP.PhysBulletMuzzleVelocity = 315 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 12

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

SWEP.RPM = 420
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
SWEP.UC_HipDispersion = 500 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 250 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = math.Clamp(500 / 80, 3, 10)

SWEP.Ammo = "pistol"

SWEP.HeatCapacity = 200
SWEP.HeatDissipation = 2
SWEP.HeatDelayTime = 0.5

SWEP.MalfunctionMeanShotsToFail = 12 * 8 * 1.5
SWEP.MalfunctionWait = 0.5
SWEP.MalfunctionNeverLastShoot = false

SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam

-- Speed multipliers --

SWEP.Speed = 0.965
SWEP.SpeedMultSights = 0.875
SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25
SWEP.SpeedMultShooting = 1
SWEP.SpeedHook = ARC9.UC.SpeedCap
SWEP.SpeedHookSights = ARC9.UC.SightsSpeedCap
SWEP.SpeedHookShooting = ARC9.UC.ShootSpeedCap
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
SWEP.UC_ExtraSightDist = 7

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(0.301242, 3.056040, -0.140965)
SWEP.RestAng = Angle(0.000000, -14.000000, -0.500000)
SWEP.NearWallPos = Vector(0.292774, 3.297962, 0.829294)
SWEP.NearWallAng = Angle(0.000000, -14.000000, -0.500000)
SWEP.SprintVerticalOffset = false

SWEP.SprintPos = Vector(-0.365126, 2.964396, -0.411142)
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
    Pos = Vector(-2.145334, 9.993234, 1.739806),
    Ang = Angle(0.070000, 0.150000, 5.500183),
    Magnification = 1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

SWEP.ActivePos = Vector(0.297371, 3.000000, 0.302607)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -0.500000)

SWEP.CustomizeRotateAnchor = Vector(16, -2.29, -2)
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-6.31, 19, -0.28)

SWEP.UC_CrouchPos = Vector(-1.841363, 0.000000, -1.268614)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -8.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8.7, 2.5, -4.2),
    Ang = ARC9.UC.AttachmentAngle(Angle(-6, -6, 180)),
    TPIKPos = Vector(-8.99, 2.49, -4.91),
}

-- Firing sounds --

local path = ")weapons/arccw_uc_usp/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

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
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound

-- Bodygroups --

-- The spare magazine mesh is weighted to tag_mag2, not its vm_mag2 parent.
SWEP.HideBones = {"vm_mag2", "tag_mag2"}
SWEP.HookP_NameChange = ARC9.UC.NameChange

-- Front sight of the alternative irons for each slide length.
local altsight = {
    uc_usp_slide_ext = 3,
    uc_usp_slide_compact = 2,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    if wep.Attachments[1].Installed == "uc_usp_sight" then
        data.model:SetBodygroup(5, altsight[wep.Attachments[2].Installed] or 1)
    end
end

-- ArcCW only applied the Action Hero pose with both the nickel finish and the match slide.
SWEP.Hook_ModifyElements = function(wep, eles)
    eles["usp_freeman"] = eles["uc_tp_gong"] and eles["usp_freeman_1"] and eles["usp_freeman_2"] or nil
    return eles
end

SWEP.AttachmentElements = {
    ["pistol_rail"] = {
        Bodygroups = {
            {4, 1},
        },
    },
    ["uc_usp_sight"] = {
        Bodygroups = {
            {4, 2},
            {5, 1},
        },
        IronSights = {
            Pos = Vector(-2.150610, 9.993050, 1.648615),
            Ang = Angle(0.050000, 0.200000, 5.500175),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    },
    ["uc_usp_slide_compact"] = {
        Bodygroups = {
            {0, 1},
            {1, 1},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -1.46, 4),
                Ang = Angle(90, 0, -90),
            }
        },
        PrintNameOverride = ARC9:GetPhrase("uc.usp.name.compact"),
        TrueName = ARC9:GetPhrase("uc.usp.name.compact.true"),
    },
    ["uc_usp_slide_ext"] = {
        Bodygroups = {
            {1, 4},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -1.46, 5.25),
                Ang = Angle(90, 0, -90),
            }
        },
        PrintNameOverride = ARC9:GetPhrase("uc.usp.name.ext"),
        TrueName = ARC9:GetPhrase("uc.usp.name.ext.true"),
    },
    ["uc_usp_slide_match"] = {
        Bodygroups = {
            {1, 2},
            {3, 1},
        },
        PrintNameOverride = ARC9:GetPhrase("uc.usp.name.match"),
        TrueName = ARC9:GetPhrase("uc.usp.name.match.true"),
    },
    ["uc_usp_slide_cs"] = {
        Bodygroups = {
            {1, 3},
        },
        PrintNameOverride = ARC9:GetPhrase("uc.usp.name.cs"),
        TrueName = ARC9:GetPhrase("uc.usp.name.cs.true"),
    },
    ["uc_usp_mag_ext"] = {
        Bodygroups = {
            {2, 1},
        },
    },
    ["uc_usp_skin_nickel"] = {
        Skin = 1,
    },
    ["uc_usp_skin_blued"] = {
        Skin = 2,
    },
    -- HL2 easter egg
    ["usp_freeman"] = {
        ActivePos = Vector(1.173478, 4.950291, -0.424345),
        ActiveAng = Angle(-2.001218, -1.998781, 0.069827),
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
    ["idle_jammed"] = {
        Source = "idle_jam",
        Time = 10 / 30,
    },
    ["ready"] = {
        Source = "fix",
        IKTimeLine = ARC9.UC.LHIK(1.6, 0.3, nil, 0, nil),
        Time = 1.6,
        MinProgressTime = 1.2,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = path .. "draw.ogg", t = 0 },
            { s = path .. "slidepull.ogg", t = 28 / 60 },
            { s = path .. "slidedrop1.ogg", t = 35 / 60 },
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            { s = path .. "draw.ogg", t = 0 },
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            { s = path .. "draw.ogg", t = 0 },
        },
    },
    ["draw_jam"] = {
        Source = "draw_jam",
        Time = .75,
        MinProgressTime = .4,
        EventTable = {
            { s = path .. "draw.ogg", t = 0 },
        },
    },
    -- The source also plays weapons/arccw_uc_usp/holster.ogg, which it never shipped.
    ["holster"] = {
        Source = "holster",
        Time = .75,
        EventTable = {
            { s = common .. "cloth_2.ogg", t = 0 },
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = .75,
        EventTable = {
            { s = common .. "cloth_2.ogg", t = 0 },
        },
    },
    ["holster_jam"] = {
        Source = "holster_jam",
        Time = 18 / 30,
        EventTable = {
            { s = common .. "cloth_2.ogg", t = 0 },
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
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },
    ["jam"] = {
        Source = "fire_jam",
        Time = 30 / 30,
        MinProgressTime = 0.5,
    },

    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 30 / 30,
        EventTable = {
            { s = mech, t = 0, v = 0.25 }
        },
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 24 / 30,
        EventTable = {
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },

    ["fire_match"] = {
        Source = "fire_match",
        Time = 30 / 30,
        EventTable = {
            { s = mech, t = 0, v = 0.25 }
        },
    },
    ["fire_iron_match"] = {
        Source = "fire_match",
        Time = 30 / 30,
        EventTable = {
            { s = common .. "common_mech_light.ogg", t = 0 },
            { s = mech, t = 0 }
        },
    },
    ["fire_empty_match"] = {
        Source = "fire_empty_match",
        Time = 24 / 30,
        EventTable = {
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },
    ["fire_iron_empty_match"] = {
        Source = "fire_empty_match",
        Time = 24 / 30,
        EventTable = {
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },

    ["reload"] = {
        Source = "reload",
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.62, 0.2),
        MinProgressTime = 1.3525,
        Time = 65 / 30,
        MagSwapTime = 0.9,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 1 / 60 },
            { s = common .. "magrelease.ogg", t = 10 / 60 },
            { s = rottle, t = 11 / 60 },
            { s = path .. "magout1.ogg", t = 26 / 60 },
            { s = path .. "magin1.ogg", t = 42 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = common .. "magpouch_replace_small.ogg", t = 80 / 60 },
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
            { s = path .. "magout1.ogg", t = 16 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60 },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = path .. "magin1.ogg", t = 64 / 60 },
            { s = rottle, t = 90 / 60 },
            { s = path .. "slidedrop1.ogg", t = 94 / 60 },
        },
    },

    ["reload_ext"] = {
        Source = "reload_ext",
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.62, 0.2),
        MinProgressTime = 1.3525,
        Time = 65 / 30,
        MagSwapTime = 0.9,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 0 / 60 },
            { s = common .. "magrelease.ogg", t = 10 / 60 },
            { s = path .. "magout1.ogg", t = 26 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = common .. "magpouch_replace_small.ogg", t = 80 / 60 },
            { s = path .. "magin1.ogg", t = 42 / 60 },
        },
    },
    ["reload_empty_ext"] = {
        Source = "reload_empty_ext",
        IKTimeLine = ARC9.UC.LHIK(75 / 30, 0.1, 0.1, 0.7, 0.55),
        MinProgressTime = 1.75,
        Time = 75 / 30,
        MagSwapTime = 0.76,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = common .. "magrelease.ogg", t = 7 / 60 },
            { s = path .. "magout1.ogg", t = 16 / 60 },
            { s = rottle, t = 10 / 60 },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60 },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60 },
            { s = rottle, t = 55 / 60 },
            { s = path .. "magin1.ogg", t = 64 / 60 },
            { s = rottle, t = 90 / 60 },
            { s = path .. "slidedrop1.ogg", t = 94 / 60 },
        },
    },

    ["fix"] = {
        Source = "fix",
        IKTimeLine = ARC9.UC.LHIK(48 / 30, 0.3, nil, 0, nil),
        Time = 48 / 30,
        EjectAt = 30 / 60,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = path .. "slidepull.ogg", t = 28 / 60 },
            { s = path .. "slidedrop1.ogg", t = 35 / 60 },
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        IKTimeLine = ARC9.UC.LHIK(50 / 30, 0.3, nil, 0, nil),
        Time = 50 / 30,
        EjectAt = 30 / 60,
        EventTable = {
            { s = rottle, t = 0 / 60 },
            { s = path .. "slidepull.ogg", t = 28 / 60 },
        },
    },

    ["enter_inspect"] = {
        Source = "enter_inspect",
        IKTimeLine = ARC9.UC.LHIK(18 / 32, 0.3, nil, 0, nil, true),
        Time = 18 / 32,
        EventTable = {
            { s = rottle, t = 0 },
            { s = common .. "movement-pistol-04.ogg", t = 0 },
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        IKTimeLine = ARC9.UC.LHIK(48 / 32, 0, nil, 0.84, 0.3),
        Time = 48 / 32,
        EventTable = {
            { s = rottle, t = 0.05 },
            { s = common .. "movement-pistol-03.ogg", t = 0.1 },
            { s = common .. "movement-pistol-01.ogg", t = 1 },
            { s = rottle, t = 1 },
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(18 / 30, 0.1, nil, 0, nil, true),
        Time = 18 / 30,
        EventTable = {
            { s = rottle, t = 0 },
            { s = common .. "movement-pistol-04.ogg", t = 0 },
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        IKTimeLine = ARC9.UC.LHIK(48 / 32, 0, nil, 0.84, 0.3),
        Time = 48 / 32,
        EventTable = {
            { s = rottle, t = 0.05 },
            { s = common .. "movement-pistol-03.ogg", t = 0.1 },
            { s = common .. "movement-pistol-01.ogg", t = 1 },
            { s = rottle, t = 1 },
        },
    },
    ["enter_inspect_jammed"] = {
        Source = "enter_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(18 / 32, 0.1, nil, 0, nil, true),
        Time = 18 / 32,
        EventTable = {
            { s = rottle, t = 0 },
            { s = common .. "movement-pistol-04.ogg", t = 0 },
        },
    },
    ["idle_inspect_jammed"] = {
        Source = "idle_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(102 / 30, 0, nil, 0, nil, true),
        Time = 102 / 30,
    },
    ["exit_inspect_jammed"] = {
        Source = "exit_inspect_jam",
        IKTimeLine = ARC9.UC.LHIK(48 / 32, 0, nil, 0.84, 0.3),
        Time = 48 / 32,
        EventTable = {
            { s = rottle, t = 0.05 },
            { s = common .. "movement-pistol-03.ogg", t = 0.1 },
            { s = common .. "movement-pistol-01.ogg", t = 1 },
            { s = rottle, t = 1 },
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

-- ArcCW picked the match slide's fire animations before the stock's, so the stock skips them.
SWEP.Hook_TranslateAnimation = function(wep, anim)
    local inspect = ARC9.UC.InspectIdle(wep, anim)
    if inspect then return inspect end
    if wep:GetJammed() then return jammedAnimations[anim] end
    if wep.Attachments[7].Installed and wep.Attachments[2].Installed != "uc_usp_slide_match"
            and (anim == "fire" or anim == "fire_empty") then
        return anim .. "_stock"
    end
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        Category = {"optic_lp", "uc_usp_sight"},
        DefaultName = ARC9:GetPhrase("uc.default.iron_sights"),
        Bone = "vm_charge",
        Pos = Vector(-0.01, -.6, -.3),
        Ang = Angle(90, 0, -90),
        Scale = 0.8,
        InstalledElements = {"pistol_rail"},
    },
    {
        PrintName = "uc.slot.slide",
        Category = {"uc_usp_slide"},
        Bone = "vm_pivot",
        Pos = Vector(0, -1.9, 3),
        DefaultIcon = Material("entities/att/acwatt_uc_usp_slide_default.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("uc.usp.default.slide"),
    },
    {
        PrintName = "uc.slot.caliber",
        Category = {"uc_usp_caliber"},
        DefaultIcon = Material("entities/att/uc_bullets/45acp.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("uc.calibre.45_acp"),
        Bone = "vm_pivot",
        Pos = Vector(0, -1.3, -0.3),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = ARC9:GetPhrase("uc.default.standard_muzzle"),
        Category = {"muzzle"},
        Bone = "vm_pivot",
        Pos = Vector(0, -1.46, 4.6),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"usp_match"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "vm_pivot",
        Pos = Vector(0, -.4, 3.85),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"tac_rail"},
        ExcludeElements = {"usp_match"},
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"uc_usp_mag"},
        Bone = "tag_mag",
        Pos = Vector(0, -1.2, -3.1),
        DefaultIcon = Material("entities/att/acwatt_uc_usp_mag_default.png","mips smooth"),
        DefaultName = ARC9:GetPhrase("uc.default.12_round_mag"),
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"uc_stock", "go_stock_pistol_bt"},
        Scale = 1.1,
        Bone = "vm_pivot",
        Pos = Vector(-0.05, 2.7, -3),
        Ang = Angle(90, 0, -90),
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
        Category = {"charm", "fml_charm", "uc_usp_tp"},
        CosmeticOnly = true,
        Bone = "vm_charge",
        Pos = Vector(0.42, 0.8, 4.6),
        Ang = Angle(90, 0, -90),
        Scale = 0.75,
    },
    {
        PrintName = "uc.slot.material",
        Category = {"uc_usp_skin"},
        DefaultName = ARC9:GetPhrase("uc.usp.default.finish"),
        DefaultIcon = Material("entities/att/acwatt_uc_usp_skin_default.png","mips smooth"),
        CosmeticOnly = true,
    },
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
