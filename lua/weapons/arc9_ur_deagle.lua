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
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.PostModify = ARC9.UC.PostModify
-- The source muzzle slot is hidden and never filled; clear devices restored from older saves.
SWEP.BuildSubAttachments = function(wep, tree)
    ARC9.UC.BuildSubAttachments(wep, tree)
    local muzzle = wep.Attachments[4]
    if not muzzle.Installed then return end
    if SERVER then ARC9:PlayerGiveAtt(wep:GetOwner(), muzzle.Installed, 1) end
    muzzle.Installed = nil
    muzzle.SubAttachments = nil
end
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.SubCategory = "ur.title"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true
SWEP.MuzzleParticle = "muzzleflash_pistol_deagle"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/50ae.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellPitch = 90
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)
SWEP.TracerColor = Color(255, 225, 200)
SWEP.TracerNum_Priority = 0
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.TracerNum = 1
SWEP.Slot = 1
SWEP.ViewModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.DamageMax = 80
SWEP.DamageMin = 12
SWEP.RangeMin = 10 * ARC9.UC.Meter
SWEP.RangeMax = 120 * ARC9.UC.Meter
SWEP.Penetration = 9
SWEP.PenetrationDelta = 0
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 470 * ARC9.UC.Meter
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults
SWEP.ChamberSize = 1
SWEP.ClipSize = 7
SWEP.Recoil = 3.95 * ARC9.UC.Recoil
SWEP.RecoilSide = 0
SWEP.RecoilRandomSide = 1 / 3.95
SWEP.VisualRecoil = 1.5
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 3.95
SWEP.Sway = 1.1 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2
SWEP.RPM = 60 / (60 / 200)
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120
SWEP.ReloadInSights = true
SWEP.Spread = 5 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 600 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 200 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.Ammo = "357"
SWEP.Speed = 0.925
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.25
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 1
SWEP.BarrelLength = 12
SWEP.UC_ExtraSightDist = 10
-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(-0.365126, 2.964396, -0.411142)
SWEP.RestAng = Angle(15.054701, -4.829217, -21.297169)
SWEP.NearWallPos = Vector(-0.727041, 3.048582, 0.517259)
SWEP.NearWallAng = Angle(15.054701, -4.829217, -21.297169)
SWEP.SprintVerticalOffset = false
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "revolver"
SWEP.HoldTypeNPC = "revolver"
SWEP.HoldTypeSights = "revolver"
SWEP.IronSights = {
    Pos = Vector(-2.549000, 1.000000, 1.505000),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(-0.518438, 1.494214, 0.145079)
SWEP.ActiveAng = Angle(0.500019, 0.499981, -1.995637)
SWEP.UC_CrouchPos = Vector(-2.037882, 1.000000, -0.920347)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -14.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-10.5, 4, -4),
    Ang = Angle(-6, 0, 180),
}

local path = ")weapons/arccw_ur/deagle/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local rutle = {common .. "movement-smg-03.ogg", common .. "movement-smg-04.ogg"}
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
SWEP.ShootSoundSilenced = "weapons/arccw_ud/glock/fire_supp_10.ogg"
SWEP.DryFireSound = path .. "dryfire.ogg"
local tail = ")/arccw_uc/common/50ae/"
SWEP.DistantShootSound = {tail .. "fire-dist-50ae-pistol-ext-01.ogg", tail .. "fire-dist-50ae-pistol-ext-02.ogg", tail .. "fire-dist-50ae-pistol-ext-03.ogg", tail .. "fire-dist-50ae-pistol-ext-04.ogg", tail .. "fire-dist-50ae-pistol-ext-05.ogg", tail .. "fire-dist-50ae-pistol-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {tail .. "fire-dist-50ae-pistol-int-01.ogg", tail .. "fire-dist-50ae-pistol-int-02.ogg", tail .. "fire-dist-50ae-pistol-int-03.ogg", tail .. "fire-dist-50ae-pistol-int-04.ogg", tail .. "fire-dist-50ae-pistol-int-05.ogg", tail .. "fire-dist-50ae-pistol-int-06.ogg"}
SWEP.DistantShootSoundSilenced = {common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg", common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg", common .. "sup-tail-07.ogg", common .. "sup-tail-08.ogg", common .. "sup-tail-09.ogg", common .. "sup-tail-10.ogg"}
SWEP.DistantShootSoundSilencedIndoor = {common .. "fire-dist-int-pistol-light-01.ogg", common .. "fire-dist-int-pistol-light-02.ogg", common .. "fire-dist-int-pistol-light-03.ogg", common .. "fire-dist-int-pistol-light-04.ogg", common .. "fire-dist-int-pistol-light-05.ogg", common .. "fire-dist-int-pistol-light-06.ogg"}
SWEP.UC_IndoorTailVolume = 0.75
SWEP.BulletBones = {
    [1] = "Bullet1",
    [2] = "Bullet2",
    [3] = "Bullet3",
    [4] = "Bullet4",
    [5] = "Bullet5",
    [6] = "Bullet6",
    [7] = "Bullet7"
}

SWEP.DefaultBodygroups = "000000000"
SWEP.AttachmentElements = {
    ["ur_deagle_barrel_modern"] = {
        Bodygroups = {{1, 1}},
    },
    ["ur_deagle_barrel_compact"] = {
        Bodygroups = {{1, 5}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 0, .15),
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["ur_deagle_barrel_compen"] = {
        Bodygroups = {{1, 4}},
    },
    ["ur_deagle_barrel_ext"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 0, 1.95),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["ur_deagle_barrel_marksman"] = {
        Bodygroups = {{1, 3}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.05, 5.1),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["ur_deagle_barrel_annihilator"] = {
        Bodygroups = {{1, 6}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.05, 1.25),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["ur_deagle_mag_ext"] = {
        Bodygroups = {{2, 1}}
    },
    ["ur_deagle_grip_wooden"] = {
        Bodygroups = {{4, 1}}
    },
    ["ur_deagle_grip_rubber"] = {
        Bodygroups = {{4, 2}}
    },
    ["tac_rail"] = {
        Bodygroups = {{5, 1}}
    },
    ["ur_deagle_caliber_44"] = {
        Bodygroups = {{6, 1}}
    },
    ["ur_deagle_caliber_357"] = {
        Bodygroups = {{6, 2}}
    },
    ["ur_deagle_caliber_410"] = {
        Bodygroups = {{6, 3}}
    },
    ["ur_deagle_skin_black"] = {
        Skin = 1,
    },
    ["ur_deagle_skin_gold"] = {
        Skin = 2,
    },
    ["ur_deagle_skin_chrome"] = {
        Skin = 3,
    },
    ["ur_deagle_skin_modern"] = {
        Bodygroups = {{0, 1}},
        Skin = 3,
    },
    ["ur_deagle_skin_sex"] = {
        Bodygroups = {{0, 1}},
        Skin = 4,
    },
}

local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}
SWEP.Animations = {
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 120 / 60,
    },
    ["idle_jammed"] = {
        Source = "idle_jammed",
        Time = 120 / 60,
    },
    ["idle"] = {
        Source = "idle",
        Time = 120 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Time = 73 / 60,
        IKTimeLine = ARC9.UC.LHIK(73 / 60, 0, nil, 0.6, 0.3),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = path .. "slidepull.ogg", t = 12 / 60},
            {s = path .. "chamber.ogg", t = 20 / 60},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = ARC9.UC.LHIK(1.0, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        IKTimeLine = ARC9.UC.LHIK(1.0, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        Time = 0.9,
        EjectAt = 0.05,
        EventTable = {
            {s = mech, t = 0, v = 0.5},
        },
    },
    ["fire_iron"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        Time = 0.9,
        EjectAt = 0.05,
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = mech, t = 0},
        },
    },
    ["jam"] = {
        Source = "fire_jammed",
        EventTable = {
            {s = mech, t = 0},
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 0.9,
        EjectAt = 0.05,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0},
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 0.9,
        EjectAt = 0.05,
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = path .. "mech_last.ogg", t = 0},
        },
    },
    ["reload"] = {
        Source = "reload",
        MinProgressTime = 1.3525,
        Time = 2.2,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(2.2, 0.2, 0.2, 0.62, 0.6),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout.ogg", t = 6 / 60},
            {s = rottle, t = 10 / 60},
            {s = common .. "magpouch_pull_small.ogg", t = 30 / 60},
            {s = rottle, t = 55 / 60},
            {s = path .. "magin_miss.ogg", t = 61 / 60},
            {s = path .. "magin_old.ogg", t = 66 / 60},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgressTime = 1.75,
        Time = 2.55,
        MagSwapTime = 0.76,
        IKTimeLine = ARC9.UC.LHIK(2.55, 0.1, 0.1, 0.7, 0.55),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout_old.ogg", t = 8 / 60},
            {s = rottle, t = 10 / 60},
            {s = common .. "magpouch_pull_small.ogg", t = 26 / 60},
            {s = common .. "pistol_magdrop.ogg", t = 40 / 60},
            {s = rottle, t = 55 / 60},
            {s = path .. "magin_miss.ogg", t = 58 / 60},
            {s = path .. "magin_old.ogg", t = 62 / 60},
            {s = path .. "chamber.ogg", t = 90 / 60},
            {s = rottle, t = 75 / 60},
        },
    },
    ["reload_10"] = {
        Source = "reload_exte",
        MinProgressTime = 1.3525,
        Time = 139 / 60,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(139 / 60, 0.2, 0.2, 0.62, 0.6),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout.ogg", t = 6 / 60},
            {s = rottle, t = 10 / 60},
            {s = common .. "magpouch.ogg", t = 30 / 60},
            {s = rottle, t = 55 / 60},
            {s = path .. "magin_miss.ogg", t = 64 / 60},
            {s = path .. "magin_old.ogg", t = 71 / 60},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_exte",
        MinProgressTime = 1.75,
        Time = 160 / 60,
        MagSwapTime = 0.76,
        IKTimeLine = ARC9.UC.LHIK(160 / 60, 0.1, 0.1, 0.7, 0.55),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout_old.ogg", t = 8 / 60},
            {s = rottle, t = 10 / 60},
            {s = common .. "magpouch.ogg", t = 26 / 60},
            {s = common .. "pistol_magdrop.ogg", t = 40 / 60},
            {s = rottle, t = 55 / 60},
            {s = path .. "magin_miss.ogg", t = 60 / 60},
            {s = path .. "magin_old.ogg", t = 66 / 60},
            {s = path .. "chamber.ogg", t = 94 / 60},
            {s = rottle, t = 75 / 60},
        },
    },
    ["fix"] = {
        Source = "unjam",
        Time = 0.9,
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "unjam.ogg", t = .4},
        },
        IKTimeLine = ARC9.UC.LHIK(0.9, .2, nil, .2, .75),
    },
    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        IKTimeLine = ARC9.UC.LHIK(0.5833333333333334, 0.3, nil, 0, nil),
        EventTable = {
            {s = rottle, t = 0},
            {s = rutle, t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 72 / 60,
        IKTimeLine = ARC9.UC.LHIK(2.0, 0, nil, 0, nil),
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 66 / 60,
        IKTimeLine = ARC9.UC.LHIK(3.85, 0, nil, 0.84, 0.3),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout.ogg", t = 8 / 60},
            {s = rottle, t = 100 / 60},
            {s = path .. "magin_miss.ogg", t = 106 / 60},
            {s = path .. "magin_old.ogg", t = 114 / 60},
            {s = path .. "rack1.ogg", t = 155 / 60},
            {s = rottle, t = 160 / 60},
            {s = path .. "rack2.ogg", t = 178 / 60},
            {s = rottle, t = 180 / 60},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        IKTimeLine = ARC9.UC.LHIK(0.5833333333333334, 0.1, nil, 0, nil),
        EventTable = {
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 60,
        IKTimeLine = ARC9.UC.LHIK(2.0, 0, nil, 0, nil),
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 66 / 60,
        IKTimeLine = ARC9.UC.LHIK(3.85, 0, nil, 0.84, 0.3),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout.ogg", t = 8 / 60},
            {s = rottle, t = 100 / 60},
            {s = path .. "magin_miss.ogg", t = 106 / 60},
            {s = path .. "magin_old.ogg", t = 114 / 60},
            {s = rottle, t = 160 / 60},
        },
    },
    ["enter_inspect_jammed"] = {
        Source = "enter_inspect_jammed",
        time = 35 / 60,
        IKTimeLine = ARC9.UC.LHIK(0.5833333333333334, 0.1, nil, 0, nil),
        EventTable = {
        },
    },
    ["idle_inspect_jammed"] = {
        Source = "idle_inspect_jammed",
        time = 72 / 60,
        IKTimeLine = ARC9.UC.LHIK(2.0, 0, nil, 0, nil),
    },
    ["exit_inspect_jammed"] = {
        Source = "exit_inspect_jammed",
        time = 66 / 60,
        IKTimeLine = ARC9.UC.LHIK(3.85, 0, nil, 0.84, 0.3),
        EventTable = {
            {s = rottle, t = 0 / 60},
            {s = common .. "magrelease.ogg", t = 7 / 60},
            {s = path .. "magout.ogg", t = 8 / 60},
            {s = rottle, t = 100 / 60},
            {s = path .. "magin_miss.ogg", t = 106 / 60},
            {s = path .. "magin_old.ogg", t = 114 / 60},
            {s = rottle, t = 160 / 60},
        },
    },
}

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.Attachments = {
    {
        PrintName = "ur.deagle.printname1",
        Category = {"optic_lp", "ur_deagle_tritium", "optic"},
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname1"),
        Bone = "Body",
        Pos = Vector(0, -5.15, 6.4),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.deagle.printname2",
        Category = {"ur_deagle_barrel"},
        DefaultIcon = Material("entities/att/acwatt_ur_deagle_barrel.png", "mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname2"),
        Bone = "Body",
        Pos = Vector(0, -5, 8.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.deagle.printname3",
        Category = {"ur_deagle_caliber"},
        DefaultIcon = Material("entities/att/uc_bullets/50ae.png", "mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname3"),
        Bone = "Body",
        Pos = Vector(0, -4.6, 3.2),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.deagle.printname4",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname4"),
        Category = {"muzzle"},
        Bone = "Barrel",
        Pos = Vector(0, 0, 0.75),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"nofh"},
        ExcludeElements = {"barrel_annihilator"},
        Hidden = true,
    },
    {
        PrintName = "ur.deagle.printname5",
        InstalledElements = {"tac_rail"},
        Category = {"tac_pistol"},
        Bone = "Body",
        Pos = Vector(0, -3.5, 7),
        Ang = Angle(90, 0, -90),
        MergeSlots = {15},
    },
    {
        PrintName = "ur.deagle.printname6",
        Category = {"ur_deagle_mag"},
        Bone = "Mag",
        Pos = Vector(0, 1.21, -0.95),
        DefaultIcon = Material("entities/att/acwatt_ur_deagle_mag_7.png", "mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname5"),
    },
    {
        PrintName = "ur.deagle.printname7",
        Category = {"uc_stock", "go_stock_pistol_bt"},
        Scale = 1.1,
        Bone = "Body",
        Pos = Vector(0, -0.25, -1),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.deagle.printname8",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname6"),
        DefaultIcon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png", "mips smooth"),
        Category = "ur_deagle_grip",
        Bone = "Body",
        Pos = Vector(0, -1.9, 0.4),
    },
    {
        PrintName = "ur.deagle.printname9",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname7"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "ur.deagle.printname10",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname8"),
    },
    {
        PrintName = "ur.deagle.printname11",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname9"),
    },
    {
        PrintName = "ur.deagle.printname12",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname10"),
    },
    {
        PrintName = "ur.deagle.printname13",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "Body",
        Pos = Vector(0.55, -3.4, 4.2),
        Ang = Angle(90, 0, -90),
        Scale = .65,
    },
    {
        PrintName = "ur.deagle.printname14",
        Category = {"ur_deagle_skin"},
        DefaultName = ARC9:GetPhrase("ur.deagle.defaultname11"),
        DefaultIcon = Material("entities/att/acwatt_ur_deagle_finish_default.png", "mips smooth"),
        CosmeticOnly = true,
    },
    {
        PrintName = "ur.deagle.printname15",
        Category = "uc_ubgl",
        Bone = "Body",
        Pos = Vector(0, -4.8, 6.0),
        Ang = Angle(90, 0, -90),
        Hidden = true,
    }
}

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_deagle.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_deagle.truename")
SWEP.Description = "arc9_ur_deagle.description"
SWEP.Class = "arc9_ur_deagle.trivia_class"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_deagle.trivia_manufacturer.true" or "arc9_ur_deagle.trivia_manufacturer",
    ["uc.trivia.calibre2"] = "arc9_ur_deagle.trivia_calibre",
    ["uc.trivia.mechanism3"] = "arc9_ur_deagle.trivia_mechanism",
    ["uc.trivia.country4"] = "arc9_ur_deagle.trivia_country",
    ["uc.trivia.year5"] = "arc9_ur_deagle.trivia_year",
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
    if wep.Attachments[2].Installed == "ur_deagle_barrel_annihilator" then return ARC9:GetPhrase("arc9_ur_deagle.annihilator") end
    if ARC9:UseTrueNames() then return ARC9.UC.NameChange(wep) end
    local names = {
        ur_deagle_caliber_357 = "arc9_ur_deagle.name357",
        ur_deagle_caliber_44 = "arc9_ur_deagle.name44",
        ur_deagle_caliber_410 = "arc9_ur_deagle.name410",
    }
    return ARC9:GetPhrase(names[wep.Attachments[3].Installed] or "arc9_ur_deagle.printname")
end

SWEP.SprintToFireTime = 0.25
SWEP.FreeAimRadius = math.Clamp(600 / 80, 3, 10)
SWEP.ARC9WeaponCategory = ARC9.WEAPON_PISTOL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
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
    local caliber = wep.Attachments[3].Installed
    local light = wep.Attachments[7].Installed or caliber == "ur_deagle_caliber_357"
    vm:SetPoseParameter("light", light and 1 or caliber == "ur_deagle_caliber_44" and 0.5 or 0)
    local optic = wep.Attachments[1].Installed
    local tritium = optic == "ur_deagle_tritium"
    local barrel = wep.Attachments[2].Installed or 0
    if tritium then
        if barrel == "ur_deagle_barrel_marksman" then
            vm:SetBodygroup(3, 3)
        elseif barrel == "ur_deagle_barrel_ext" then
            vm:SetBodygroup(3, 2)
        elseif barrel == "ur_deagle_barrel_compact" then
            vm:SetBodygroup(3, 4)
        elseif barrel == "ur_deagle_barrel_annihilator" then
            vm:SetBodygroup(3, 5)
        else
            vm:SetBodygroup(3, 1)
        end
    end

    if barrel == "ur_deagle_barrel_annihilator" and vm:GetBodygroup(5) == 1 then vm:SetBodygroup(5, 2) end
end

SWEP.NoShellEject = true
SWEP.HideBones = {}
SWEP.RollJam = ARC9.UC.RollJam
SWEP.UC_MalfunctionVariance = 0.25
SWEP.MalfunctionMeanShotsToFail = 84
SWEP.MalfunctionNeverLastShoot = false
SWEP.MalfunctionWait = 0.5
SWEP.NumHook = ARC9.UC.PelletCount
SWEP.Hook_GetDamageAtRange = ARC9.UC.PelletDamage
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetJammed() and wep.Animations[anim .. "_jammed"] then return anim .. "_jammed" end
    if string.StartsWith(anim, "reload") and wep.Attachments[6].Installed == "ur_deagle_mag_10" then return anim .. "_10" end
end

function SWEP:UnJam()
    if self:StillWaiting() and not self.NoFireDuringSighting then return end
    if self.StartedFixingJam then return end
    self.StartedFixingJam = true
    local time = self:PlayAnimation("fix", 1, true)
    self:SetInSights(false)
    self:SetTimer(time - 0.01, function()
        self:SetJammed(false)
        self.StartedFixingJam = nil
        self:PlayAnimation("idle")
    end, "jamtimer")
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
