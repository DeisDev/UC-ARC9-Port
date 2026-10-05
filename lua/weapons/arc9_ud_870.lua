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
SWEP.GetTrueRPM = ARC9.UC.GetTrueRPM
SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.Hook_BlockAnimation = ARC9.UC.HoldIdleWhileCycling
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam
SWEP.UC_MalfunctionVariance = 0.99
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
SWEP.CamOffsetAng = Angle(0, 90, 90)
SWEP.TracerColor = Color(255, 225, 200)

SWEP.NoShellEjectManualAction = true

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ud_870.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_870.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.shotgun"
SWEP.Description = "arc9_ud_870.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_870.trivia.manufacturer.true" or "arc9_ud_870.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.12_gauge",
    ["uc.trivia.mechanism3"] = "uc.mechanism.pump_action",
    ["uc.trivia.country4"] = "uc.country.usa",
    ["uc.trivia.year5"] = 1950,
}

-- Weapon slot --

SWEP.Slot = 3

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_870.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_870.mdl"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.DefaultBodygroups = "000000000"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-5.5, 5, -5.5),
    Ang = Angle(-12, 0, 180),
    Scale = 1 - ( 0.35 * 0.5 )
}

-- Damage parameters --

SWEP.DamageMax = ARC9.UC.StdDmg["12g_p"].max
SWEP.DamageMin = ARC9.UC.StdDmg["12g_p"].min
SWEP.Penetration = ARC9.UC.StdDmg["12g_p"].pen
SWEP.PenetrationDelta = 0
SWEP.Num = ARC9.UC.StdDmg["12g_p"].num

SWEP.RangeMax = 50 * ARC9.UC.Meter
SWEP.RangeMin = 5 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.DamageType = DMG_BUCKSHOT
SWEP.PhysBulletMuzzleVelocity = 200 * ARC9.UC.Meter

SWEP.HullSize = 0.5

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 6

-- Recoil --

SWEP.Recoil = 3.1 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 1 / 3.1
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 3.1
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

SWEP.RPM = 60
SWEP.Firemodes = {
    {
        PrintName = ARC9:GetPhrase("uc.base.fcg.pump"),
        Mode = 1,
    },
}

SWEP.ManualActionNoLastCycle = true
SWEP.ManualAction = true
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

SWEP.Speed = 0.9
SWEP.SpeedMultSights = 0.75
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

SWEP.BarrelLength = 32
SWEP.UC_ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
SWEP.IronSights = {
    Pos = Vector(-3.546252, -2.970946, 2.415197),
    Ang = Angle(0, -0.75, 2.8),
    Magnification = 1.1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(2.879794, 0.413844, -2.129676)
SWEP.RestAng = Angle(20.085123, -5.167378, -21.886228)
SWEP.NearWallPos = Vector(2.508544, 0.503909, -1.205522)
SWEP.NearWallAng = Angle(20.085123, -5.167378, -21.886228)
SWEP.SprintVerticalOffset = false

SWEP.SprintPos = Vector(1.077572, -3.841934, -3.054240)
SWEP.SprintAng = Angle(7.012951, 3.473879, -19.572934)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng
SWEP.DynamicConditions = {Recoil = true, SprintPos = true, SprintAng = true}

SWEP.ActivePos = Vector(-0.748972, -2.000000, -0.039252)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -3.000000)

SWEP.CustomizeRotateAnchor = Vector(21.5, -3.66, -3)

SWEP.UC_CrouchPos = Vector(-2.790896, -2.000000, -2.766025)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -30.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng

SWEP.Malfunction = true
SWEP.MalfunctionMeanShotsToFail = 500
SWEP.MalfunctionWait = 0.5

-- Firing sounds --

local path = ")weapons/arccw_ud/870/"
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
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}
SWEP.DryFireSound = mech

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

local shellin = {path .. "shell-insert-01.ogg", path .. "shell-insert-02.ogg", path .. "shell-insert-03.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "sgreload_finish_empty",
        Time = 37 / 30,
        IKTimeLine = ARC9.UC.LHIK(37 / 30, 0, 0, 1.4, 1.2),
        EventTable = {
            {s = common .. "raise.ogg", t = 0.2},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = rottle, t = 0.5},
            {s = path .. "rack_1.ogg",  t = 0.4},
            {s = path .. "rack_2.ogg",  t = 0.6},
            {s = common .. "shoulder.ogg",  t = 0.9},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        Time = 20 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        MinProgressTime = 8 / 30,
        EventTable = {{ s = mech, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        MinProgressTime = 8 / 30,
        EventTable = {{ s = mech, t = 0 }},
    },
    ["cycle"] = {
        Source = "cycle",
        EjectAt = 0.1,
        MinProgressTime = 0.26,
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            {s = path .. "eject.ogg",  t = 0.1},
            {s = path .. "rack_2.ogg",  t = 0.11},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 50 / 30,
        EjectAt = 0.7, -- should make the shell eject offscreen cuz the anim already has it
        EventTable = {
            {s = rottle, t = 0.5},
            {s = rottle, t = 1},
            {s = path .. "rack_1.ogg",  t = 0.6},
            {s = path .. "eject.ogg",  t = 0.7},
            {s = path .. "rack_2.ogg",  t = 0.9},
            {s = rottle, t = 1.7},
        }
    },
    ["reload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
        IKTimeLine = ARC9.UC.LHIK(16 / 30, 0.2, 0.2, 0, 0, true),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "shoulder.ogg",  t = 0.1},
        },
    },
    ["reload_insert"] = {
        Source = "sgreload_insert",
        Time = 18 / 30,
        MinProgressTime = 0.24,
        IKTimeLine = ARC9.UC.LHIK(18 / 30, 0, 0, 0, 0, true),
        EventTable = {
            {s = shellin, t = 0},
            {s = rottle, t = 0},
        },
    },
    ["reload_finish"] = {
        Source = "sgreload_finish",
        Time = 20 / 30,
        IKTimeLine = ARC9.UC.LHIK(20 / 30, 0, 0, 0.4, 0.3),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "shoulder.ogg",  t = 0.27},
        },
    },
    ["reload_finish_empty"] = {
        Source = "sgreload_finish_empty",
        Time = 37 / 30,
        IKTimeLine = ARC9.UC.LHIK(37 / 30, 0, 0, 0.8, 0.6),
        EjectAt = 0.5,
        EventTable = {
            {s = rottle, t = 0.5},
            {s = path .. "rack_1.ogg",  t = 0.4},
            {s = path .. "eject.ogg",  t = 0.5},
            {s = path .. "rack_2.ogg",  t = 0.525},
            {s = common .. "shoulder.ogg",  t = 0.9},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    if !IsValid(mdl) then return end

    -- 8rnd tube and either barrel should remove the clamp
    if mdl:GetBodygroup(7) == 1 and mdl:GetBodygroup(1) != 0 then
        mdl:SetBodygroup(7, 2)
    end
end

SWEP.BulletBones = {
    [0] = "870_shell1",
}

SWEP.DefaultSkin = 1

-- Bodygroups --

SWEP.AttachmentElements = {
    ["ud_870_optic_ringsight"] = {
        Bodygroups = {
            {8, 1},
        },
        IronSights = {
            Pos = Vector(-3.627291, -2.727858, 2.192321),
            Ang = Angle(0, -0.6, 1),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    },
    ["optic_rail"] = {
        Bodygroups = {
            {8, 2},
        }
    },
    ["ud_shotgun_rail_fg"] = {
        Bodygroups = {{3, 1}},
    },
    ["ud_870_slide_moe"] = {
        Bodygroups = {{6, 1}},
    },
    ["ud_870_slide_long"] = {
        Bodygroups = {{6, 2}},
    },
    ["ud_870_slide_poly"] = {
        Bodygroups = {{6, 3}},
    },
    ["ud_870_barrel_long"] = {
        AttPosMods = {
            [3] = {
                Pos = Vector(-0.03, -0.65, 39.5),
            }
        },
        Bodygroups = {
            {1, 1},
        },
    },
    ["ud_870_barrel_sawnoff"] = {
        Bodygroups = {
            {1, 2},
            {7, 2}
        },
        AttPosMods = {
            [3] = {
                Pos = Vector(-0.03, -0.9, 19),
            }
        },
    },
    ["ud_870_tube_reduced"] = {
        Bodygroups = {
            {2, 2},
            {7, 2}
        },
    },
    ["ud_870_tube_ext"] = {
        Bodygroups = {
            {2, 1},
            {7, 1}
        },
    },
    ["ud_870_stock_poly"] = {
        Bodygroups = {{4, 1}},
    },
    ["ud_870_stock_sawnoff"] = {
        Bodygroups = {{4, 2}},
    },
    ["ud_870_stock_raptor"] = {
        Bodygroups = {{4, 3}},
    },

    ["ud_870_skin_dirty"] = {
        Skin = 0
    },
    ["ud_870_skin_custom"] = {
        Skin = 3
    },
}

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic", "optic_sniper", "ud_870_optic"},
        Bone = "870_parent",
        Pos = Vector(0, -1.75, -2),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"optic_rail"},
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = D("16in_standard_barrel"),
        DefaultIcon = Material("entities/att/acwatt_ud_870_barrel.png", "smooth mips"),
        Category = "ud_870_barrel",
        Bone = "870_parent",
        Pos = Vector(0, -1.5, 17.2),
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"choke", "muzzle_shotgun"},
        Bone = "870_parent",
        Pos = Vector(-0.03, -0.75, 26.3),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.forend",
        DefaultName = D("factory_forend"),
        DefaultIcon = Material("entities/att/acwatt_ud_870_slide.png", "smooth mips"),
        Category = {"ud_870_slide"},
        Bone = "870_slide",
        Pos = Vector(3, -4.4, -29),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(26.81, 3.05, -4.2),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip"},
        Bone = "870_slide",
        Pos = Vector(0, 1.1, 0),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"ud_shotgun_rail_fg"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "870_slide",
        Pos = Vector(0, 1, 4.25),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.stock",
        DefaultName = D("wooden_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_870_stock.png", "smooth mips"),
        Category = {"ud_870_stock"},
        Bone = "870_parent",
        Pos = Vector(-0.03, 1.69, -11.96),
    },
    {
        PrintName = "uc.slot.tube",
        Category = {"ud_870_tube"},
        Bone = "870_parent",
        Pos = Vector(0, 0.7, 17.2),
        DefaultName = D("6_shell_tube"),
        DefaultIcon = Material("entities/att/acwatt_ud_870_tube.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = D("buck"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Category = "ud_ammo_shotgun",
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
        Bone = "870_parent",
        Pos = Vector(0.7, 0, 5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.skin",
        Category = "ud_870_skin",
        DefaultName = D("polished_steel"),
        CosmeticOnly = true,
    }
}

local lookup_barrel = {
    default = 1,
    ud_870_barrel_long = 2,
    ud_870_barrel_sawnoff = 0,
}

local lookup_tube = {
    default = 1,
    ud_870_tube_ext = 2,
    ud_870_tube_reduced = 0,
}

SWEP.Hook_ModifyElements = function(wep, eles)
    -- The ring sight and optic rail share bodygroup 8.
    if eles["ud_870_optic_ringsight"] then
        eles["optic_rail"] = nil
    end

    -- A barrel shorter than the tube leaves room for muzzle devices.
    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[8].Installed and lookup_tube[wep.Attachments[8].Installed] or lookup_tube["default"]

    if barrel < tube then
        eles["nomuzzleblocking"] = true
    end

    return eles
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
