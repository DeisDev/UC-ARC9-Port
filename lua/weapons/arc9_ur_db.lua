SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.BarrelLengthHook = ARC9.UC.BarrelLengthHook
SWEP.SprintLock = ARC9.UC.SprintLock
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
SWEP.UseHands = true
SWEP.MuzzleParticle = "uc_muzzleflash_shotgun"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellScale = 1
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)
SWEP.TracerColor = Color(255, 225, 200)
SWEP.TracerNum_Priority = 0
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 6
SWEP.CamQCA = 7
SWEP.CamOffsetAng = Angle(1.4594, 1.4595, 90)
SWEP.Slot = 3
SWEP.ViewModel = "models/weapons/arccw/c_ur_dbs.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_dbs.mdl"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-3, 3, -5),
    Ang = Angle(-12, 0, 180),
    TPIKPos = Vector(-3.23, 2.63, -4.31),
    Scale = 1
}
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-5.24, 139.4, 1.39)

SWEP.DamageMax = 18
SWEP.DamageMin = 10
SWEP.RangeMax = 40 * ARC9.UC.Meter
SWEP.RangeMin = 6 * ARC9.UC.Meter
SWEP.Num = 8
SWEP.Penetration = 2
SWEP.PenetrationDelta = 0
SWEP.DamageType = DMG_BUCKSHOT
SWEP.PhysBulletMuzzleVelocity = 365 * ARC9.UC.Meter
SWEP.HullSize = 0.25
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun
SWEP.ChamberSize = 0
SWEP.ClipSize = 2
SWEP.RejectMagSizeChange = true
SWEP.Recoil = 2.8 * ARC9.UC.Recoil
SWEP.RecoilSide = 0
SWEP.RecoilRandomSide = 2 / 2.8
SWEP.VisualRecoil = 0
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 2.8
SWEP.Sway = 0.5 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2
SWEP.RPM = 60 / (60 / 350)
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.break",
    },
    {
        Mode = 1,
        PrintName = "ur.spas12.dbl",
        SpreadMult = 1.15,
        UC_HipDispersionMult = 0.8,
        NumMult = 2,
        AmmoPerShot = 2,
        DamageMaxMult = 2,
        DamageMinMult = 2,
        VisualRecoilMult = 2,
    },
}

SWEP.UC_CanManualAction = true
SWEP.MalfunctionMeanShotsToFail = math.huge
SWEP.ShootVolume = 160
SWEP.ShootPitch = 100
SWEP.ReloadInSights = false
SWEP.Spread = 25 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 400 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 125 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.Ammo = "buckshot"
SWEP.Speed = 0.91
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.25
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
SWEP.BarrelLength = 49
SWEP.UC_BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.UC_BarrelOffsetHip = Vector(3, 0, -4.5)
SWEP.UC_ExtraSightDist = 2
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"
SWEP.IronSights = {
    Pos = Vector(-1.367104, 0, 2.575078),
    Ang = Angle(0, 0, 3.000000),
    Magnification = 1.05,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.SprintPos = Vector(5.561779, 4.366491, -0.019308)
SWEP.SprintAng = Angle(40.432461, -7.644270, -16.466354)
SWEP.RestPos = Vector(5.561779, 4.366491, -0.019308)
SWEP.RestAng = Angle(40.432461, -7.644270, -16.466354)
SWEP.NearWallPos = Vector(5.280846, 4.499513, 0.931156)
SWEP.NearWallAng = Angle(40.432461, -7.644270, -16.466354)
SWEP.SprintVerticalOffset = false
SWEP.ActivePos = Vector(1.000000, 1.500000, 0.500000)
SWEP.ActiveAng = Angle(0.000000, 0.000000, 0.000000)
SWEP.UC_CrouchPos = Vector(-0.939693, 2.000000, -0.342020)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -20.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng
local path = ")weapons/arccw_ur/dbs/"
local common = ")/arccw_uc/common/"
SWEP.ShootSoundSilenced = "weapons/arccw_ud/870/fire_supp.ogg"
SWEP.DryFireSound = common .. "manual_trigger.ogg"
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
local tail = ")/arccw_uc/common/12ga/"
SWEP.DistantShootSound = {tail .. "fire-dist-12ga-pasg-ext-01.ogg", tail .. "fire-dist-12ga-pasg-ext-02.ogg", tail .. "fire-dist-12ga-pasg-ext-03.ogg", tail .. "fire-dist-12ga-pasg-ext-04.ogg", tail .. "fire-dist-12ga-pasg-ext-05.ogg", tail .. "fire-dist-12ga-pasg-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {tail .. "fire-dist-12ga-pasg-int-01.ogg", tail .. "fire-dist-12ga-pasg-int-02.ogg", tail .. "fire-dist-12ga-pasg-int-03.ogg", tail .. "fire-dist-12ga-pasg-int-04.ogg", tail .. "fire-dist-12ga-pasg-int-05.ogg", tail .. "fire-dist-12ga-pasg-int-06.ogg"}
SWEP.DistantShootSoundSilenced = {common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg", common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg", common .. "sup-tail-07.ogg", common .. "sup-tail-08.ogg", common .. "sup-tail-09.ogg", common .. "sup-tail-10.ogg"}
SWEP.DistantShootSoundSilencedIndoor = {common .. "fire-dist-int-pistol-light-01.ogg", common .. "fire-dist-int-pistol-light-02.ogg", common .. "fire-dist-int-pistol-light-03.ogg", common .. "fire-dist-int-pistol-light-04.ogg", common .. "fire-dist-int-pistol-light-05.ogg", common .. "fire-dist-int-pistol-light-06.ogg"}
SWEP.UC_IndoorTailVolume = 1
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local shellin = {common .. "dbs-shell-insert-01.ogg", common .. "dbs-shell-insert-02.ogg", common .. "dbs-shell-insert-03.ogg", common .. "dbs-shell-insert-04.ogg", common .. "dbs-shell-insert-05.ogg", common .. "dbs-shell-insert-06.ogg", common .. "dbs-shell-insert-07.ogg", common .. "dbs-shell-insert-08.ogg", common .. "dbs-shell-insert-09.ogg", common .. "dbs-shell-insert-10.ogg", common .. "dbs-shell-insert-11.ogg", common .. "dbs-shell-insert-12.ogg"}
local shellfall = {path .. "shell-fall-01.ogg", path .. "shell-fall-02.ogg", path .. "shell-fall-03.ogg", path .. "shell-fall-04.ogg"}
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "grab.ogg", t = 0.2},
            {s = path .. "shoulder.ogg", t = 0.5},
        },
    },
    ["ready"] = {
        Source = "deploy",
        Time = 26 / 30,
        EventTable = {
            {s = path .. "close.ogg", t = 0.1},
            {s = common .. "shoulder.ogg", t = 0.2},
            {s = path .. "shoulder.ogg", t = 0.455},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        EventTable = {
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25},
        },
    },
    ["fire_iron"] = {
        Source = "fire",
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0},
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        EventTable = {
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25},
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0},
        },
    },
    ["fire_2bst"] = {
        Source = "fireboth",
        EventTable = {
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0},
        },
        MinProgressTime = 0.3
    },
    ["reload"] = {
        Source = "reload",
        EjectAt = 0.91,
        EventTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = path .. "eject.ogg", t = 0.8},
            {s = common .. "magpouch_pull_small.ogg", t = 1.0},
            {s = shellfall, t = 1.0},
            {s = common .. "cloth_2.ogg", t = 1.1},
            {s = path .. "struggle.ogg", t = 1.5, v = 0.5},
            {s = shellin, t = 1.8},
            {s = path .. "grab.ogg", t = 2.15, v = 0.5},
            {s = path .. "close.ogg", t = 2.3},
            {s = common .. "shoulder.ogg", t = 2.4},
            {s = path .. "shoulder.ogg", t = 2.675},
        },
        IKTimeLine = ARC9.UC.LHIK(3.066666666666667, 0.5, nil, 0.5, nil),
        MinProgressTime = 2.05,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        EjectAt = 1.0,
        EventTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.3},
            {s = path .. "eject.ogg", t = 0.8},
            {s = shellfall, t = 0.9},
            {s = shellfall, t = 0.95},
            {s = common .. "cloth_2.ogg", t = 1.1},
            {s = common .. "magpouch_pull_small.ogg", t = 1.2},
            {s = path .. "struggle.ogg", t = 1.7, v = 0.5},
            {s = shellin, t = 1.85},
            {s = shellin, t = 1.9},
            {s = path .. "grab.ogg", t = 2.17, v = 0.5},
            {s = path .. "close.ogg", t = 2.3},
            {s = common .. "shoulder.ogg", t = 2.44},
            {s = path .. "shoulder.ogg", t = 2.6},
        },
        IKTimeLine = ARC9.UC.LHIK(3.0, 0.5, nil, 0.5, nil),
        MinProgressTime = 2.05,
    },
    ["reload_extractor"] = {
        Source = "reload2",
        EjectAt = 0.4,
        EventTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = common .. "magpouch_pull_small.ogg", t = 0.5},
            {s = shellfall, t = 0.4},
            {s = common .. "cloth_2.ogg", t = 0.6},
            {s = path .. "struggle.ogg", t = 1.0, v = 0.5},
            {s = shellin, t = 1.2},
            {s = path .. "grab.ogg", t = 1.5, v = 0.5},
            {s = path .. "close.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
            {s = path .. "shoulder.ogg", t = 2.2},
        },
        IKTimeLine = ARC9.UC.LHIK(2.566666666666667, 0.5, nil, 0.5, nil),
        MinProgressTime = 1.3,
    },
    ["reload_empty_extractor"] = {
        Source = "reload2_empty",
        EjectAt = 0.4,
        EventTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = common .. "magpouch_pull_small.ogg", t = 0.5},
            {s = shellfall, t = 0.4},
            {s = shellfall, t = 0.45},
            {s = common .. "cloth_2.ogg", t = 0.6},
            {s = path .. "struggle.ogg", t = 1.0, v = 0.5},
            {s = shellin, t = 1.2},
            {s = shellin, t = 1.25},
            {s = path .. "grab.ogg", t = 1.5, v = 0.5},
            {s = path .. "close.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
            {s = path .. "shoulder.ogg", t = 2.2},
        },
        IKTimeLine = ARC9.UC.LHIK(2.466666666666667, 0.5, nil, 0.5, nil),
        MinProgressTime = 1.3,
    },
}

SWEP.BulletBones = {}
SWEP.AttachmentElements = {
    ["barrel_mid"] = {
        Bodygroups = {{1, 1}},
        AttPosMods = {
            [2] = {
                Pos = Vector(0, -19.22, 0.54),
            },
        },
    },
    ["barrel_compact"] = {
        Bodygroups = {{1, 4}},
        AttPosMods = {
            [2] = {
                Pos = Vector(0, -15.8, 0.54),
            },
        },
    },
    ["barrel_sw"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = {
            [2] = {
                Pos = Vector(0, -9.13, 0.54),
            },
        },
    },
    ["barrel_swplus"] = {
        Bodygroups = {{1, 3}, {3, 1}},
        AttPosMods = {
            [2] = {
                Pos = Vector(0, -6.34, 0.54),
            },
        },
    },
    ["stock_sw"] = {
        Bodygroups = {{2, 1}}
    },
}

SWEP.DefaultBodygroups = "00000000"
SWEP.Attachments = {
    {
        PrintName = "ur.db.printname3",
        DefaultName = ARC9:GetPhrase("ur.db.defaultname1"),
        DefaultIcon = Material("entities/att/ur_dbs/blong.png", "smooth mips"),
        Category = "ur_db_barrel",
        Bone = "body",
        Pos = Vector(-0.4, -5, -6),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(-1, 0.4, 6.9),
    },
    {
        PrintName = "ur.db.printname4",
        Category = "choke",
        Bone = "body",
        Pos = Vector(0, -25.93, 0.54),
    },
    {
        PrintName = "ur.db.printname5",
        Category = {"ur_db_stock"},
        Bone = "body",
        Pos = Vector(0, 7, -1.2),
        DefaultName = ARC9:GetPhrase("ur.db.defaultname2"),
        DefaultIcon = Material("entities/att/ur_dbs/s.png", "smooth mips"),
    },
    {
        PrintName = "ur.db.printname6",
        DefaultName = ARC9:GetPhrase("ur.db.defaultname3"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Category = {"ud_ammo_shotgun"},
    },
    {
        PrintName = "ur.db.printname7",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("ur.db.defaultname4"),
    },
    {
        PrintName = "ur.db.printname8",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("ur.db.defaultname5"),
    },
    {
        PrintName = "ur.db.printname9",
        Category = {"uc_fg_singleshot", "uc_db_fg"},
        DefaultName = ARC9:GetPhrase("ur.db.defaultname6"),
    },
    {
        PrintName = "ur.db.printname10",
        Category = {"charm", "fml_charm", "uc_db_tp"},
        CosmeticOnly = true,
        Bone = "body",
        Pos = Vector(-0.55, 1, -0.5),
        Ang = Angle(0, 90, 0),
    },
}

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_db.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_db.truename")
SWEP.Description = "arc9_ur_db.description"
SWEP.Class = "arc9_ur_db.trivia_class"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_db.trivia_manufacturer.true" or "arc9_ur_db.trivia_manufacturer",
    ["uc.trivia.calibre2"] = "arc9_ur_db.trivia_calibre",
    ["uc.trivia.mechanism3"] = "arc9_ur_db.trivia_mechanism",
    ["uc.trivia.country4"] = "arc9_ur_db.trivia_country",
    ["uc.trivia.year5"] = "arc9_ur_db.trivia_year",
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
SWEP.HookP_NameChange = ARC9.UC.NameChange
SWEP.SprintToFireTime = 0.25
SWEP.FreeAimRadius = math.Clamp(400 / 80, 3, 10)
SWEP.ARC9WeaponCategory = ARC9.WEAPON_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true
SWEP.HideBones = {}
SWEP.NumHook = ARC9.UC.PelletCount
SWEP.Hook_GetDamageAtRange = ARC9.UC.PelletDamage
SWEP.AmmoPerShotNPC = 1
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "fire") and wep:GetCurrentFiremodeTable().AmmoPerShot == 2 then return "fire_2bst" end
    if string.StartsWith(anim, "reload") and wep.Attachments[7].Installed == "ur_dbs_fg_extractor" then return anim .. "_extractor" end
end

function SWEP:DoEject(index, attachment)
    for _ = 1, self:GetCapacity() - self:Clip1() do
        baseclass.Get("arc9_base").DoEject(self, index, attachment)
    end
end

SWEP.HookP_TranslateSound = function(wep, data)
    local shot = data.name == "shootsound" or data.name == "shootsoundindoor" and wep:GetIndoor() == 1
    if shot and !wep:GetUBGL() and IsFirstTimePredicted() and wep:GetCurrentFiremodeTable().AmmoPerShot == 2 then
        local level, pitch = data.level, data.pitch
        wep:SetTimer(0.05, function() wep:EmitSound(wep:RandomChoice(wep.ShootSound), level * 0.4, pitch, 1, CHAN_WEAPON - 1) end)
    end
    return ARC9.UC.ShootSound(wep, data)
end

SWEP.Hook_Think = function(wep)
    ARC9.UC.NearWallThink(wep)
    if CLIENT then
        wep.UC_ADSBipod = math.Approach(wep.UC_ADSBipod or 0, wep:GetBipod() and 1 or 0, FrameTime() / 0.5)
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.model
    local amount = math.max(wep:GetSightAmount(), wep.UC_ADSBipod or 0)
    vm:SetPoseParameter("sights", math.ease.InOutCubic(amount))
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
