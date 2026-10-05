SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.BarrelLengthHook = ARC9.UC.BarrelLengthHook
SWEP.SprintLock = ARC9.UC.SprintLock
SWEP.Hook_Think = ARC9.UC.NearWallThink
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.PostModify = ARC9.UC.PostModify
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.GetTrueRPM = ARC9.UC.GetTrueRPM
SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.Hook_BlockAnimation = ARC9.UC.HoldIdleWhileCycling
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam
SWEP.UC_MalfunctionVariance = 0.25
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ud.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "uc_muzzleflash_1"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)
SWEP.TracerNum = 1
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.03
SWEP.NoShellEjectManualAction = true

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ud_glock.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_glock.truename")

SWEP.Class = "uc.class.pistol"
SWEP.Description = "arc9_ud_glock.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_glock.trivia.manufacturer.true" or "arc9_ud_glock.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum",
    ["uc.trivia.mechanism3"] = "uc.mechanism.short_recoil",
    ["uc.trivia.country4"] = "uc.country.austria",
    ["uc.trivia.year5"] = 1982,
}

-- Weapon slot --

SWEP.Slot = 1

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_glock.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_glock.mdl"
SWEP.DefaultBodygroups = "00000000"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

-- Damage --

SWEP.DamageMax = ARC9.UC.StdDmg["9mm"].max -- 4 shot close range kill (3 on chest)
SWEP.DamageMin = ARC9.UC.StdDmg["9mm"].min -- 5 shot long range kill
SWEP.Penetration = ARC9.UC.StdDmg["9mm"].pen
SWEP.PenetrationDelta = 0

SWEP.RangeMin = 15 * ARC9.UC.Meter
SWEP.RangeMax = 50 * ARC9.UC.Meter -- 4 shot until ~35m
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 375 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 17

-- Recoil --

SWEP.Recoil = 1.0 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.5 / 1.0
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 1
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

SWEP.RPM = 525
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

SWEP.Spread = 7 * ARC9.UC.MOA
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

SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 20
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMeanShotsToFail = 150
SWEP.MalfunctionWait = 0.5
SWEP.UC_MalfunctionTakeRound = false

-- Speed multipliers --

SWEP.Speed = 0.975
SWEP.SpeedMultSights = 0.9
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
SWEP.UC_BarrelOffsetHip = Vector(3.5, 0, -3)
SWEP.UC_ExtraSightDist = 10

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(-1.243707, -1.426835, 2.327517)
SWEP.RestAng = Angle(2.075420, -15.490321, -7.554519)
SWEP.NearWallPos = Vector(-1.370401, -1.159760, 3.282828)
SWEP.NearWallAng = Angle(2.075420, -15.490321, -7.554519)
SWEP.SprintVerticalOffset = false

SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "revolver"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeNPC = "pistol"

-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
SWEP.IronSights = {
    Pos = Vector(-2.3, 0.986792, 2.525201),
    Ang = Angle(0, 0.3, 0),
    Magnification = 1,
    ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(-0.286395, -2.000000, 0.978764)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -5.000000)

SWEP.CustomizeRotateAnchor = Vector(21.5, -2.3, -3)
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-1.39, 25.8, 0.62)

SWEP.UC_CrouchPos = Vector(-1.879386, -6.000000, -0.684040)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -20.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelOffset = {
    Pos = Vector(-10.5, 3.5, -4.8),
    Ang = Angle(-6, 0, 180),
    TPIKPos = Vector(-13.55, 2.83, -4.29),
}

-- Firing sounds --

local path = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
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

local tail = ")/arccw_uc/common/9x19/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-9x19-pistol-ext-01.ogg",
    tail .. "fire-dist-9x19-pistol-ext-02.ogg",
    tail .. "fire-dist-9x19-pistol-ext-03.ogg",
    tail .. "fire-dist-9x19-pistol-ext-04.ogg",
    tail .. "fire-dist-9x19-pistol-ext-05.ogg",
    tail .. "fire-dist-9x19-pistol-ext-06.ogg"
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
    common .. "fire-dist-int-pistol-light-06.ogg",
}
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound

-- Bodygroups --

-- Hide the spare reload magazine on worldmodels and in customization.
SWEP.HideBones = {"glock_magb"}

SWEP.BulletBones = {
    [1] = {},
    [2] = "glock_bullet1"
}

SWEP.AttachmentElements = {
    ["ud_glock_skin_tan"] = {
        Skin = 1,
    },
    ["ud_glock_skin_olive"] = {
        Skin = 2,
    },
    ["ud_glock_skin_custom"] = {
        Skin = 3,
    },
    ["ud_glock_mag_10"] = {
        Bodygroups = {{1, 1}},
        AttPosMods = {
            [9] = {
                Pos = Vector(0.1, 1, -1.2),
                Ang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_frame_subcompact"] = {
        Bodygroups = {{0, 2}},
    },
    ["ud_glock_frame_flared"] = {
        Bodygroups = {{0, 1}},
    },
    ["ud_glock_mag_33"] = {
        Bodygroups = {{1, 2}},
    },
    ["ud_glock_mag_100"] = {
        Bodygroups = {{1, 3}},
    },

    ["ud_glock_rail_optic"] = {
        Bodygroups = {{2, 1}},
    },
    ["ud_glock_slide_comp"] = {
        Bodygroups = {{3, 1}},
        IronSights = {
            Pos = Vector(-2.283, -0.025368, 2.505872),
            Ang = Angle(0, 0.58, 0),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["ud_glock_slide_lb"] = {
        Bodygroups = {{3, 2}},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0, 1.5),
                Ang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_slide_auto"] = {
        Bodygroups = {{3, 3}},
    },
    ["ud_glock_slide_subcompact"] = {
        Bodygroups = {{3, 8}},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0, -0.5),
                Ang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_slide_cs"] = {
        Bodygroups = {{3, 6}},
    },
    ["ud_glock_slide_carbine"] = {
        Bodygroups = {{3, 4}},
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 0, 11.2),
                Ang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_slide_sd"] = {
        Bodygroups = {{3, 5}},
        AttPosMods = {
            [6] = {
                Pos = Vector(0, 0.1, 5),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(0, 0.1, 5),
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_glock_slide_nytesyte"] = {
        Bodygroups = {{3, 7}},
        AttPosMods = {
            [1] = {
                Pos = Vector(-0.5, 0.05, -0.5),
                Ang = Angle(90, 0, 0),
            }
        },
        IronSights = {
            Pos = Vector(-3.397, 0, -3.057),
            Ang = Angle(0, 0, -90),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
}

local desg_barr = {
    ["ud_glock_slide_auto"] = 1,
    ["ud_glock_slide_lb"] = 2,
    ["ud_glock_slide_carbine"] = 3,
    ["ud_glock_slide_comp"] = 4,
    ["ud_glock_slide_cs"] = 5,
    ["ud_glock_slide_sd"] = 6,
    ["ud_glock_slide_nytesyte"] = 7,
    ["ud_glock_slide_subcompact"] = 8,
}
local desg_cal = {
    ["ud_glock_caliber_40sw"] = 1,
    ["ud_glock_caliber_357sig"] = 2,
    ["ud_glock_caliber_10auto"] = 3,
    ["ud_glock_caliber_45acp"] = 4,
    ["ud_glock_caliber_22lr"] = 5,
    ["ud_glock_caliber_380acp"] = 6,
    ["ud_glock_caliber_460"] = 7,
    ["ud_glock_caliber_50gi"] = 8,
}

local function N(key)
    return ARC9:GetPhrase("arc9_ud_glock.name." .. key)
end

-- Builds the model designation from the installed slide and caliber.
SWEP.HookP_NameChange = function(wep, name)
    local barrel = desg_barr[wep.Attachments[2].Installed] or 0
    local caliber = desg_cal[wep.Attachments[4].Installed] or 0
    local trueNames = ARC9:UseTrueNames()

    local start = ""
    local mid = ""
    local suffix = ""

    if trueNames then
        start = N("truestart")

        if caliber == 0 then
            if barrel == 1 then
                mid = "18C"
            elseif barrel == 2 then
                mid = "17L"
            elseif barrel == 5 then
                mid = "18"
            elseif barrel == 8 then
                mid = "26"
            else
                mid = "17"
            end
        else
            if caliber == 1 then
                if barrel == 2 then
                    mid = "24"
                elseif barrel == 8 then
                    mid = "27"
                else
                    mid = "22"
                end
            elseif caliber == 2 then
                if barrel == 8 then
                    mid = "33"
                else
                    mid = "31"
                end
            elseif caliber == 3 then
                if barrel == 2 then
                    mid = "40"
                elseif barrel == 8 then
                    mid = "29"
                else
                    mid = "20"
                end
            elseif caliber == 4 then
                if barrel == 8 then
                    mid = "30"
                else
                    mid = "21"
                end
            elseif caliber == 5 then
                mid = "44"
            elseif caliber == 6 then
                if barrel == 8 then
                    mid = "28"
                else
                    mid = "25"
                end
            elseif caliber == 7 then
                if barrel == 8 then
                    mid = "30"
                else
                    mid = "21"
                end
            elseif caliber == 8 then
                if barrel == 8 then
                    mid = "30"
                else
                    mid = "21"
                end
            end
        end
    else
        start = N("fakestart")

        if caliber == 0 then
            mid = "3"
        elseif caliber == 1 then
            mid = "5"
        elseif caliber == 2 then
            mid = "6"
        elseif caliber == 3 then
            mid = "8"
        elseif caliber == 4 then
            mid = "11"
        elseif caliber == 5 then
            mid = "22"
        elseif caliber == 6 then
            mid = "15"
        end

        if barrel == 2 then
            suffix = N("long")
        elseif barrel == 8 then
            suffix = N("compact")
        end
    end

    if barrel == 1 and (caliber ~= 0 or !trueNames) then
        suffix = N("auto")
    elseif barrel == 2 and !trueNames then
        suffix = N("long")
    elseif barrel == 3 then
        if trueNames then
            suffix = N("carbine.true")
        else
            suffix = N("carbine")
        end
    elseif barrel == 4 then
        suffix = N("custom")
    elseif barrel == 5 then
        suffix = N("cs")
    elseif barrel == 6 then
        if trueNames then
            suffix = N("sd.true")
        else
            suffix = N("sd")
        end
    elseif barrel == 7 then
        if trueNames then
            suffix = N("nytesyte.true")
        else
            suffix = N("nytesyte")
        end
    end

    -- Todo: Subcompact variants when the barrel variant comes out
    return start .. mid .. suffix
end

-- Animations --

-- CHAN_ITEM doesn't sound too right
local ci = CHAN_AUTO
local ratel = {common .. "pistol_rattle_1.ogg", common .. "pistol_rattle_2.ogg", common .. "pistol_rattle_3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "fix_100",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
            {s = ratel, t = 0},
            {s = path .. "slide_pull_new.ogg",  t = 0.4, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.4, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.6, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 12 / 30,
        EventTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = ARC9.UC.LHIK(12 / 30, 0.4, 0.4, 0, 0),
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        IKTimeLine = ARC9.UC.LHIK(12 / 30, 0.4, 0.4, 0, 0),
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 16 / 30,
        EventTable = {{ s = mech, t = 0, v = 0.5 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 16 / 30,
        EventTable = {{ s = mech, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not Temporary
        },
    },
    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 16 / 30,
        EventTable = {{ s = mech, t = 0.03 }},
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 16 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0, c = ci}, -- Not Temporary
        },
    },
    ["fire_cycle"] = {
        Source = "fire_cycle",
        Time = 16 / 30,
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_10"] = {
        Source = "fix_10",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_empty_10"] = {
        Source = "fix_empty_10",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_33"] = {
        Source = "fix_33",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.7, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_empty_33"] = {
        Source = "fix_empty_33",
        Time = 40 / 30,
        EventTable = {
            {s = path .. "magtap.ogg",    t = 0.18, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 40 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "slide_pull_new.ogg",  t = 0.4, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.4, c = ci},
            {s = path .. "slide_rel_new.ogg",        t = 0.6, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["fix_empty_100"] = {
        Source = "cycle_empty",
        Time = 40 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "sliderel_deact.ogg",  t = 0.5, c = ci},
            {s = path .. "slide_pull_new.ogg",  t = 0.5, c = ci},
        },
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.2, 0.1, 0.2, 0.1),
    },

    ["cycle"] = {
        Source = "cycle",
        Time = 32 / 30,
        EjectAt = 0.4,
        EventTable = {
            {s = rottle, t = 0, v = 50},
            {s = path .. "slide_pull_new.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "slide_rel_new.ogg",        t = 0.55, c = ci, v = 50},
        },
        IKTimeLine = ARC9.UC.LHIK(32 / 30, 0.2, 0.1, 0.2, 0.1),
    },
    ["cycle_empty"] = {
        Source = "cycle_empty",
        Time = 32 / 30,
        EjectAt = 0.4,
        EventTable = {
            {s = rottle, t = 0, v = 50},
            {s = path .. "slide_pull_new.ogg",  t = 0.3, c = ci, v = 50},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci, v = 50},
        },
        IKTimeLine = ARC9.UC.LHIK(32 / 30, 0.2, 0.1, 0.2, 0.1),
    },

    -- 17 Round Reloads --

    ["reload"] = {
        Source = "reload",
        Time = 56 / 30,
        MinProgressTime = 1.1,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(56 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch_pull_small.ogg", t = 0.075},
            {s = ratel, t = 0.3},
            {s = path .. "magout_partial.ogg",        t = 0.35, c = ci},
            {s = ratel, t = 0.4},
            {s = path .. "magin_new.ogg",         t = 0.45, c = ci},
            {s = rottle, t = 0.6},
            {s = common .. "magpouch_replace_small.ogg", t = 1.25},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 65 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magout_empty.ogg",        t = 0.13, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.35},
            {s = path .. "magin_new.ogg",         t = 0.5, v = 1.5},
            {s = ratel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 1.15},
            {s = path .. "chamber.ogg",      t = 1.39},
        },
    },
    ["reload_empty_fesiug"] = {
        Source = "reload_empty_fesiug",
        Time = 78 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(78 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magout_empty.ogg",        t = 0.13, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.35},
            {s = path .. "magin_new.ogg",         t = 0.55, c = ci},
            {s = ratel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = ratel, t = 1.2},
            {s = path .. "sliderel_deact.ogg",  t = 1.62, c = ci},
            {s = path .. "chamber.ogg",        t = 1.85, v = 1.5},
            {s = rottle, t = 1.9},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        Time = 56 / 30,
        MinProgressTime = 1.1,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(56 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "magpouch_pull_small.ogg", t = 0.025, c = ci},
            {s = ratel, t = 0.3},
            {s = path .. "magout_partial.ogg",        t = 0.2, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.33, v = 1.5},
            {s = common .. "magpouch_replace_small.ogg", t = 1.2},
            {s = rottle, t = 0.65},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        Time = 65 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(65 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout_empty.ogg",        t = 0.1, c = ci},
            {s = common .. "magpouch_pull_small.ogg", t = 0.3, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.45, c = ci},
            {s = ratel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 0.9},
            {s = path .. "chamber.ogg",      t = 1.35, c = ci},
        },
    },

    -- 33 Round Reloads --

    ["reload_33"] = {
        Source = "reload_33",
        Time = 56 / 30,
        MinProgressTime = 1.1,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(56 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = ratel, t = 0.3},
            {s = path .. "magout_partial.ogg",        t = 0.4, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.49},
            {s = rottle, t = 0.75},
            {s = common .. "magpouchin.ogg", t = 1.25, v = .35},
        },
    },
    ["reload_empty_33"] = {
        Source = "reload_empty_33",
        Time = 66 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(66 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.16, c = ci},
            {s = path .. "magout_empty.ogg",        t = 0.16, c = ci},
            {s = common .. "magpouch.ogg", t = 0.35, c = ci},
            {s = path .. "magin_new.ogg",         t = 0.55, c = ci},
            {s = ratel, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.65},
            {s = rottle, t = 1.3},
            {s = path .. "chamber.ogg",      t = 1.42, c = ci},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        Time = 56 / 30,
        MinProgressTime = 1.3,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(56 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = ratel, t = 0.7},
            {s = path .. "magin.ogg",         t = 1.0, c = ci},
            {s = rottle, t = 1.1},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        Time = 66 / 30,
        MinProgressTime = 1.75,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(66 / 30, 0.2, 0.2, 0.3, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = path .. "magrelease.ogg",      t = 0.12, c = ci},
            {s = path .. "magout.ogg",        t = 0.12, c = ci},
            {s = path .. "magin.ogg",           t = 0.5, c = ci},
            {s = common .. "magdrop.ogg",  t = 0.55},
            {s = ratel, t = 0.7},
            {s = path .. "sliderel_deact.ogg",  t = 1.33, c = ci},
            {s = path .. "chamber.ogg",        t = 1.525, c = ci},
            {s = rottle, t = 1.6},
        },
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[9].Installed and !ARC9.UC.IsManualAction(wep) and (anim == "fire" or anim == "fire_empty") then
        return anim .. "_stock"
    end
end

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp"},
        Bone = "glock_slide",
        Pos = Vector(-0.025, -0.4, -0.2),
        Ang = Angle(90, 0, -90),
        Scale = 0.9,
    },
    {
        PrintName = "uc.slot.slide",
        DefaultName = D("standard_slide"),
        DefaultIcon = Material("entities/att/acwatt_ud_glock_slide.png", "smooth mips"),
        Category = "ud_glock_slide",
        Bone = "glock_flash",
        Pos = Vector(2.4, -0.2, -29.2), -- Op. CS slide
        Ang = Angle(90, 3, -90),
        Icon_Offset = Vector(26.68, 2.4, -1.18),
    },
    {
        PrintName = "uc.slot.frame",
        DefaultName = D("standard_frame"),
        DefaultIcon = Material("entities/att/acwatt_ud_glock_frame.png", "smooth mips"),
        Category = "ud_glock_frame",
        Bone = "glock_parent",
        Pos = Vector(0, -0.4, 2.6),
    },
    {
        PrintName = "uc.slot.caliber",
        DefaultName = D("9x19mm_parabellum"),
        DefaultIcon = Material("entities/att/uc_bullets/9x19.png", "smooth mips"),
        Category = "ud_glock_caliber",
        Bone = "glock_parent",
        Pos = Vector(0, -2.45, 2),
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"muzzle", "ud_glock_muzzle"},
        Bone = "glock_flash",
        Pos = Vector(0, 0, 0.0),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"sd"},
        Scale = 0.8,
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol", "uce_pistol_foregrip"},
        Bone = "glock_parent",
        Pos = Vector(0, -1.3, 5),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"ud_glock_slide_subcompact"},
    },
    {
        -- Obsolete in the source; kept hidden so slot numbers match the other attachments.
        Hidden = true,
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "glock_parent",
        Pos = Vector(0, -1.3, 5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ud_glock_mag"},
        Bone = "glock_mag",
        Pos = Vector(-0.01, -0.13, 0.34),
        DefaultIcon = Material("entities/att/acwatt_ud_glock_mag_17.png", "smooth mips"),
        DefaultName = D("17_round_mag"),
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"uc_stock", "go_stock_pistol_bt"},
        DefaultName = D("no_stock"),
        Bone = "glock_parent",
        Pos = Vector(0.1, 2, -1.4),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"ud_glock_frame_subcompact"},
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
        Bone = "glock_slide",
        Pos = Vector(0.45, 0.1, 4),
        Ang = Angle(90, 0, -90),
        Scale = 0.8,
    },
    {
        PrintName = "uc.slot.material",
        DefaultName = D("black_polymer"),
        DefaultIcon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips"),
        Category = "ud_glock_skin",
        CosmeticOnly = true,
    },
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
