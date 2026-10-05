SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
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

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellScale = 1
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.01

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ud_m1014.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_m1014.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.shotgun"
SWEP.Description = "arc9_ud_m1014.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_m1014.trivia.manufacturer.true" or "arc9_ud_m1014.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.12_gauge",
    ["uc.trivia.mechanism3"] = "uc.mechanism.gas_operated_rotating_bolt",
    ["uc.trivia.country4"] = "uc.country.italy",
    ["uc.trivia.year5"] = 1998,
}

-- Weapon slot --

SWEP.Slot = 3

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m1014.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m1014.mdl"
SWEP.DefaultBodygroups = "00000000"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 4, -4.5),
    Ang = Angle(-12, 0, 180),
    Scale = 1
}

-- Damage parameters --

SWEP.DamageMax = ARC9.UC.StdDmg["12g_s"].max
SWEP.DamageMin = ARC9.UC.StdDmg["12g_s"].min
SWEP.Penetration = ARC9.UC.StdDmg["12g_s"].pen
SWEP.PenetrationDelta = 0
SWEP.Num = ARC9.UC.StdDmg["12g_s"].num

SWEP.RangeMax = 40 * ARC9.UC.Meter
SWEP.RangeMin = 4 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.DamageType = DMG_BUCKSHOT
SWEP.PhysBulletMuzzleVelocity = 200 * ARC9.UC.Meter

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun

-- Jamming --

SWEP.Malfunction = true
SWEP.MalfunctionJam = true
-- ArcCW's automatic mean for a semi-only gun: clip size * 8 * 1.5
SWEP.MalfunctionMeanShotsToFail = 4 * 8 * 1.5
SWEP.MalfunctionNeverLastShoot = false
SWEP.MalfunctionWait = 0.5

-- Mag size --

SWEP.ChamberSize = 2
SWEP.ClipSize = 4

-- An empty gun only takes one extra shell (breech load) on top of the tube.
SWEP.ChamberSizeHook = function(wep, size)
    if wep:GetReloading() and wep:GetEmptyReload() then return 1 end
end

-- Recoil --

SWEP.Recoil = 2.89 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 2 / 2.89
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 2.89
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 0.5 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2

-- Firerate / Firemodes --

SWEP.RPM = 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.ShotgunReload = true

SWEP.ShootVolume = 160
SWEP.ShootPitch = 100
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_SHOTGUN

-- Accuracy --

SWEP.Spread = 30 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 400 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 100 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = math.Clamp(400 / 80, 3, 10)

SWEP.Ammo = "buckshot"

-- Speed multipliers --

SWEP.Speed = 0.92
SWEP.SpeedMultSights = 0.6
SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.4
SWEP.SpeedMultShooting = 0.75
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

SWEP.BarrelLength = 48
SWEP.UC_ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
SWEP.IronSights = {
    Pos = Vector(-2.72965, -2.005257, 1.091263),
    Ang = Angle(0.01, 0.25, 0.000044),
    Magnification = 1.1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(3.251044, 0.323778, -3.053831)
SWEP.RestAng = Angle(20.085123, -5.167378, -21.886228)
SWEP.NearWallPos = Vector(2.879794, 0.413844, -2.129676)
SWEP.NearWallAng = Angle(20.085123, -5.167378, -21.886228)
SWEP.SprintVerticalOffset = false

SWEP.SprintPos = Vector(1.411963, -3.781340, -3.994725)
SWEP.SprintAng = Angle(7.012951, 3.473879, -19.572934)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng
SWEP.DynamicConditions = {Recoil = true, SprintPos = true, SprintAng = true}

SWEP.ActivePos = Vector(-0.100000, -0.500000, -0.250000)
SWEP.ActiveAng = Angle(0.000000, 0.000000, 0.000000)

SWEP.CustomizeRotateAnchor = Vector(21.5, -2.73, -3)

SWEP.UC_CrouchPos = Vector(-2.964102, -2.000000, -2.866025)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -30.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng

-- Firing sounds --

local path2 = ")weapons/arccw_ud/m16/"
local path1 = ")weapons/arccw_ud/870/"
local path = ")weapons/arccw_ud/m1014/"
local common = ")/arccw_uc/common/"
SWEP.ShootSound = {
    path1 .. "fire-01.ogg",
    path1 .. "fire-02.ogg",
    path1 .. "fire-03.ogg",
    path1 .. "fire-04.ogg",
    path1 .. "fire-05.ogg",
    path1 .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path1 .. "fire-sup-01.ogg",
    path1 .. "fire-sup-02.ogg",
    path1 .. "fire-sup-03.ogg",
    path1 .. "fire-sup-04.ogg",
    path1 .. "fire-sup-05.ogg",
    path1 .. "fire-sup-06.ogg"
}
SWEP.DryFireSound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/12ga/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-12ga-pasg-ext-01.ogg",
    tail .. "fire-dist-12ga-pasg-ext-02.ogg",
    tail .. "fire-dist-12ga-pasg-ext-03.ogg",
    tail .. "fire-dist-12ga-pasg-ext-04.ogg",
    tail .. "fire-dist-12ga-pasg-ext-05.ogg",
    tail .. "fire-dist-12ga-pasg-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
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

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local rottle2 = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

-- Animations --

local shellin = {path .. "shell-insert-01.ogg", path .. "shell-insert-02.ogg", path .. "shell-insert-03.ogg"}

-- ArcCW played "_jammed" variants while the gun was jammed. The stock hook adds "_stock" after this.
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetJammed() and wep:HasAnimation(anim .. "_jammed") then
        return anim .. "_jammed"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["idle_jammed"] = {
        Source = "idle_jammed",
    },
    ["ready"] = {
        Source = "equip",
        Time = 60 / 30,
        EventTable = {
            {s = rottle, t = 0.35},
            {s = path .. "chback.ogg", t = 0.35},
            {s = path .. "chamber.ogg", t = 0.6},
            {s = rottle, t = 0.75},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = 30 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 30 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["draw_jammed"] = {
        Source = "draw_jammed",
        Time = 30 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_jammed"] = {
        Source = "holster_jammed",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 16 / 25,--30,
        EventTable = {
            {s = path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg", t = 0, v = 0.45}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 18 / 25,--30,
        EventTable = {
            {s = path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 18 / 25,--30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 20 / 25,--30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["jam"] = {
        Source = "fire_jam",
        Time = 23 / 25,--30,
        EventTable = {
            {s = path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg", t = 0}, -- Not temporary
        },
    },
    ["fix"] = {
        Source = "jam_fix",
        Time = 60 / 30,
        EjectAt = 0.8,
        EventTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = 0.1},
            {s = path .. "chback.ogg", t = 0.7},
            {s = path1 .. "eject.ogg", t = 0.8, v = 0.4},
            {s = path .. "chamber.ogg", t = 0.9},
            {s = rottle, t = 1.2},
        },
    },
    ["fix_empty"] = {
        Source = "jam_fix_empty",
        Time = 60 / 30,
        EjectAt = 1.1,
        EventTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path .. "chback.ogg", t = 0.8},
            {s = path1 .. "eject.ogg", t = 1.1},
            {s = rottle, t = 1.2},
        },
    },
    ["reload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
    },
    ["reload_start_empty"] = {
        Source = "sgreload_start_empty",
        Time = 40 / 30,
        MinProgressTime = 1,
        RestoreAmmo = 1,
        EventTable = {
            {s = rottle2, t = 0},
            {s = path .. "breechload.ogg",  t = 0.25},
            {s = path .. "breechclose.ogg",  t = 0.9},
        },
    },
    ["reload_insert"] = {
        Source = "sgreload_insert",
        Time = 18 / 30,
        MinProgressTime = 0.24,
        EventTable = {
            {s = shellin, t = 0},
            {s = rottle2, t = 0.05},
        },
    },
    ["reload_finish"] = {
        Source = "sgreload_finish",
        Time = 30 / 30,
        EventTable = {
            {s = common .. "shoulder.ogg",  t = 0.3},
        },
    },

    -- stock animla below

    ["idle_stock"] = {
        Source = "idle_stock",
    },
    ["idle_empty_stock"] = {
        Source = "idle_empty_stock",
    },
    ["idle_jammed_stock"] = {
        Source = "idle_jammed_stock",
    },
    ["draw_stock"] = {
        Source = "draw_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["draw_empty_stock"] = {
        Source = "draw_empty_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["draw_jammed_stock"] = {
        Source = "draw_jammed_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster_stock"] = {
        Source = "holster_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_empty_stock"] = {
        Source = "holster_empty_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_jammed_stock"] = {
        Source = "holster_jammed_stock",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 23 / 25,--30,
        EventTable = {
            {s = path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 23 / 25,--30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0.01}, -- Not temporary
        },
    },
    ["jam_stock"] = {
        Source = "fire_jam_stock",
        Time = 23 / 25,--30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
        },
    },
    ["fix_stock"] = {
        Source = "jam_fix_stock",
        Time = 60 / 30,
        EjectAt = 1.1,
        EventTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path .. "chback.ogg", t = 0.8},
            {s = path1 .. "eject.ogg", t = 1.1},
            {s = path .. "breechclose.ogg", t = 0.9},
            {s = rottle, t = 1.2},
        },
    },
    ["fix_empty_stock"] = {
        Source = "jam_fix_empty_stock",
        Time = 60 / 30,
        EjectAt = 1.1,
        EventTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path .. "chback.ogg", t = 0.8},
            {s = path1 .. "eject.ogg", t = 1.1},
            {s = rottle, t = 1.2},
        },
    },
    ["reload_start_stock"] = {
        Source = "sgreload_start_stock",
        Time = 16 / 30,
    },
    ["reload_start_empty_stock"] = {
        Source = "sgreload_start_empty_stock",
        Time = 40 / 30,
        MinProgressTime = 1,
        RestoreAmmo = 1,
        EventTable = {
            {s = rottle2, t = 0},
            {s = path .. "breechload.ogg",  t = 0.05},
            {s = path .. "breechclose.ogg",  t = 0.75},
        },
    },
    ["reload_finish_stock"] = {
        Source = "sgreload_finish_stock",
        Time = 22 / 30,
        EventTable = {
            {s = common .. "shoulder.ogg",  t = 0.4},
        },
    },
}

-- Bodygroups --

-- Hide the loose reload shell on worldmodels and in customization.
SWEP.HideBones = {"1014_shell1"}

SWEP.AttachmentElements = {
    ["ud_autoshotgun_barrel_short"] = {
        Bodygroups = {{1, 1}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -0.40, 19.6),
            }
        },
    },
    ["ud_autoshotgun_barrel_sawnoff"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = {
            [3] = {
                Pos = Vector(-0.03, -0.75, 22.2),
            }
        },
    },
    ["ud_autoshotgun_barrel_sport"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -0.40, 26.3),
            }
        },
        IronSights = {
            Pos = Vector(-2.729648, -2.016947, 0.976701),
            Ang = Angle(0.010001, 0.95, 0.000166),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    },
    ["ud_autoshotgun_tube_short"] = {
        Bodygroups = {
            {2, 1},
            {4, 1},
        },
    },
    ["ud_autoshotgun_tube_long"] = {
        Bodygroups = {{2, 0}},
    },

    ["ud_autoshotgun_stock_in"] = {
        Bodygroups = {{3, 1}},
    },
    ["ud_autoshotgun_stock_buffer"] = {
        Bodygroups = {{3, 2}},
    },
    ["ud_autoshotgun_stock_sport"] = {
        Bodygroups = {
            {3, 3},
            {6, 1},
        },
    },
    ["ud_autoshotgun_stock_gripstock"] = {
        Bodygroups = {
            {3, 5},
        },
    },

    ["ud_m1014_handguard_sport"] = {
        Bodygroups = {{5, 2}},
    },
    ["ud_autoshotgun_rail_fg"] = {
        Bodygroups = {{5, 1}},
    },
}

-- The sport stock uses the pistol grip pose.
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    if !IsValid(mdl) then return end

    mdl:SetPoseParameter("grip", data.elements["ud_autoshotgun_stock_sport"] and 1 or 0)
end

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic", "optic_sniper"},
        Bone = "1014_parent",
        Pos = Vector(-0.025, -1.35, 2.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = D("18_5in_factory_barrel"), --16\" M4 Super 90 SBS Barrel
        DefaultIcon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips"),
        Category = "ud_1014_barrel",
        Bone = "1014_parent",
        Pos = Vector(0, -1.3, 17.5),
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"choke", "muzzle_shotgun"},
        Bone = "1014_parent",
        Pos = Vector(0, -0.40, 24.5),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"nomuzzle"},
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip", "ud_1014_handguard"},
        Bone = "1014_parent",
        Pos = Vector(0, 1.7, 9),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_autoshotgun_rail_fg"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "1014_parent",
        Pos = Vector(0.8, 0.8, 13),
        Ang = Angle(90, 0, 0),
        InstalledElements = {"ud_autoshotgun_rail_fg"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ud_1014_stock"},
        Bone = "1014_parent",
        Pos = Vector(-0.03, 2.13, -11.61),
        Ang = Angle(90, 0, -90),
        DefaultName = D("extended_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_m1014_stock.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.tube",
        Category = {"ud_1014_tube"},
        Bone = "1014_parent",
        Pos = Vector(0, 0.9, 17.5),
        DefaultName = D("4_shell_tube"),
        DefaultIcon = Material("entities/att/acwatt_ud_m1014_tube.png", "smooth mips"),
        UnInstalledElements = {"ud_autoshotgun_tube_short"},
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = D("buck"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Category = "ud_ammo_shotgun",
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
        Bone = "1014_parent",
        Pos = Vector(0.7, -0.5, 4),
        Ang = Angle(90, 0, -90),
    },
}

local lookup_barrel = {
    default = 1,
    ud_m1014_barrel_short = 0,
}

local lookup_tube = {
    default = 0,
    ud_m1014_tube_ext = 1,
}

-- A barrel shorter than the tube leaves room for muzzle devices.
SWEP.Hook_ModifyElements = function(wep, eles)
    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[7].Installed and lookup_tube[wep.Attachments[7].Installed] or lookup_tube["default"]

    if barrel < tube then
        eles["nomuzzleblocking"] = true
    end

    return eles
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
