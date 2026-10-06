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
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.PostModify = ARC9.UC.PostModify
SWEP.CreateHUD_Bottom = ARC9.UC.CreateHUD_Bottom
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.Hook_BlockAnimation = ARC9.UC.HoldIdleWhileCycling
SWEP.GetTrueRPM = ARC9.UC.GetTrueRPM
SWEP.SendAttachmentTree = ARC9.UC.SendRailTree
SWEP.ReceiveAttachmentTree = ARC9.UC.ReceiveRailTree
if CLIENT then
    function SWEP:ClientInitialize()
        self.CustomizeButtonsOriginal = table.Copy(baseclass.Get("arc9_base").CustomizeButtonsOriginal)
        table.insert(self.CustomizeButtonsOriginal, 3, {
            title = "uc.rails",
            func = ARC9.UC.CreateRailPanel
        })

        self.CustomizeButtons = table.Copy(self.CustomizeButtonsOriginal)
        baseclass.Get("arc9_base").ClientInitialize(self)
    end

    function SWEP:PruneUnnecessaryAttachmentDataRecursive(tree)
        local rail = tree.UC_Rail
        baseclass.Get("arc9_base").PruneUnnecessaryAttachmentDataRecursive(self, tree)
        tree.UC_Rail = rail
    end

    function SWEP:WriteAttachmentTree(tree)
        local result = baseclass.Get("arc9_base").WriteAttachmentTree(self, tree)
        result.UC_Rail = tree and tree.UC_Rail
        return result
    end
end

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ur.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "uc_muzzleflash_shotgun"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellScale = 0.5
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)
SWEP.TracerColor = Color(255, 225, 200)

SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_spas12.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_spas12.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.shotgun"
SWEP.Description = "arc9_ur_spas12.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_spas12.trivia.manufacturer.true" or "arc9_ur_spas12.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.12_gauge",
    ["uc.trivia.mechanism3"] = "ur.mechanism.hybrid",
    ["uc.trivia.country4"] = "uc.country.italy",
    ["uc.trivia.year5"] = 1979,
}

-- Weapon slot --

SWEP.Slot = 3

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.DefaultBodygroups = "00000100"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-5.8, 5, -4.5),
    Ang = Angle(-12, 0, 180),
    TPIKPos = Vector(-5.23, 4.83, -6.18),
    Scale = 1
}

-- Damage parameters --

SWEP.DamageMax = 18
SWEP.DamageMin = 10
SWEP.Penetration = 2
SWEP.PenetrationDelta = 0
SWEP.Num = 8
SWEP.NumHook = ARC9.UC.PelletCount
SWEP.Hook_GetDamageAtRange = ARC9.UC.PelletDamage

SWEP.RangeMax = 40 * ARC9.UC.Meter
SWEP.RangeMin = 6 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.DamageType = DMG_BUCKSHOT
SWEP.PhysBulletMuzzleVelocity = 365 * ARC9.UC.Meter

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 8

-- Recoil --

SWEP.Recoil = 2.5 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 2 / 2.5
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 2.5
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
    {Mode = 1},
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("uc.base.fcg.pump"),
        ManualAction = true,
        SpreadMult = 0.8,
        UC_HipDispersionMult = 0.8,
    },
}
SWEP.UC_CanManualAction = true
SWEP.ManualActionNoLastCycle = true
-- A spent round still needs pumping after changing the selected mode or barrel.
SWEP.ManualActionHook = function(wep, manual)
    return manual or wep:GetNeedsCycle()
end

SWEP.ShotgunReload = true

SWEP.ShootVolume = 160
SWEP.ShootPitch = 100
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_SHOTGUN
SWEP.AmmoPerShotNPC = 1
SWEP.RPMHookNPC = function(wep, rpm)
    if wep:GetProcessedValue("ManualAction", true) then
        return 60 / (wep.Animations.cycle.Time * wep:GetProcessedValue("CycleTime", true))
    end
end

function SWEP:GetNPCBurstSettings()
    if self:GetProcessedValue("ManualAction", true) then
        return 1, 1, self.Animations.cycle.Time * self:GetProcessedValue("CycleTime", true)
    end
    return baseclass.Get("arc9_base").GetNPCBurstSettings(self)
end

-- Accuracy --

SWEP.Spread = 25 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 400 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 125 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = math.Clamp(400 / 80, 3, 10)

SWEP.Ammo = "buckshot"

-- Speed multipliers --

SWEP.Speed = 0.88
SWEP.SpeedMultSights = 0.5
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

SWEP.BarrelLength = 46
SWEP.UC_BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.UC_BarrelOffsetHip = Vector(3, 0, -4.5)
SWEP.UC_ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
SWEP.IronSights = {
    Pos = Vector(-3.807609, -4.005386, 1.602724),
    Ang = Angle(0, 0.2, 1),
    Magnification = 1.05,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(3.951481, -0.312357, -2.745583)
SWEP.RestAng = Angle(20.034403, -3.288685, -21.198387)
SWEP.NearWallPos = Vector(3.590479, -0.254990, -1.814785)
SWEP.NearWallAng = Angle(20.034403, -3.288685, -21.198387)
SWEP.SprintVerticalOffset = false

SWEP.SprintPos = Vector(1.411963, -3.781340, -3.994725)
SWEP.SprintAng = Angle(7.012951, 3.473879, -19.572934)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng
SWEP.DynamicConditions = {Recoil = true, SprintPos = true, SprintAng = true, ManualAction = true}

SWEP.ActivePos = Vector(0.000000, 0.500000, 0.000000)
SWEP.ActiveAng = Angle(0.000000, 0.000000, 0.000000)

SWEP.CustomizeRotateAnchor = Vector(21.5, -3.835, -3)
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-4.94, 141.7, 0.77)

SWEP.UC_CrouchPos = Vector(-2.964102, -2.000000, -2.866025)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -30.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng

-- Firing sounds --

local path1 = ")weapons/arccw_ud/870/"
local path = ")weapons/arccw_ur/spas12/"
local common = ")/arccw_uc/common/"

SWEP.DryFireSound = common .. "manual_trigger.ogg"

local tail = ")/arccw_uc/common/12ga/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    tail .. "fire-dist-12ga-pasg-int-01.ogg",
    tail .. "fire-dist-12ga-pasg-int-02.ogg",
    tail .. "fire-dist-12ga-pasg-int-03.ogg",
    tail .. "fire-dist-12ga-pasg-int-04.ogg",
    tail .. "fire-dist-12ga-pasg-int-05.ogg",
    tail .. "fire-dist-12ga-pasg-int-06.ogg"
}

SWEP.ShootSoundSilenced = {
    tail .. "fire-sup-01.ogg",
    tail .. "fire-sup-02.ogg",
    tail .. "fire-sup-03.ogg",
    tail .. "fire-sup-04.ogg",
    tail .. "fire-sup-05.ogg",
    tail .. "fire-sup-06.ogg"
}
SWEP.DistantShootSound = {
    tail .. "fire-dist-12ga-pasg-ext-01.ogg",
    tail .. "fire-dist-12ga-pasg-ext-02.ogg",
    tail .. "fire-dist-12ga-pasg-ext-03.ogg",
    tail .. "fire-dist-12ga-pasg-ext-04.ogg",
    tail .. "fire-dist-12ga-pasg-ext-05.ogg",
    tail .. "fire-dist-12ga-pasg-ext-06.ogg"
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

-- Animations --

local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local shellin = {path .. "shell-insert-01.ogg", path .. "shell-insert-02.ogg", path .. "shell-insert-03.ogg", path .. "shell-insert-04.ogg", path .. "shell-insert-05.ogg", path .. "shell-insert-06.ogg", path .. "shell-insert-07.ogg", path .. "shell-insert-08.ogg", path .. "shell-insert-09.ogg", path .. "shell-insert-10.ogg", path .. "shell-insert-11.ogg", path .. "shell-insert-12.ogg"}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    local inspect = ARC9.UC.InspectIdle(wep, anim)
    if inspect then return inspect end
    local mode = wep:GetCurrentFiremodeTable()
    if string.StartsWith(anim, "fire") then
        if mode.AmmoPerShot == 2 then return "fire_2bst" end
        if mode.ManualAction then return "fire_manual" end
    elseif anim == "cycle" and mode.AmmoPerShot == 2 then
        return "cycle_2bst"
    elseif mode.ManualAction then
        if anim == "idle_empty" then return "idle_empty_manual" end
        if anim == "exit_inspect_empty" then return "exit_inspect_pump_empty" end
        if anim == "reload_start_empty" then
            return util.SharedRandom("ik hou van u", 1, 100) >= 50
                and "reload_start_empty_manual" or "reload_start_empty_manual_alt"
        end
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty_semi",
        Time = 1 / 30,
    },
    ["idle_empty_manual"] = {
        Source = "idle_empty",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 26 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["ready"] = {
        Source = "deploy",
        Time = 45 / 30,
        EventTable = {
            {s = path .. "forearm_back.ogg", t = 8 / 30},
            {s = path .. "forearm_forward.ogg", t = 15 / 30},
        },
    },
    ["draw_empty"] = {
        Source = "draw",
        Time = 26 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = {"holster","holster2"},

        EventTable = ARC9.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = {"holster","holster2"},

        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire_semi",
        Time = 23 / 30,
        EjectAt = 0.01,
        EventTable = {
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 },
            {s = path1 .. "eject.ogg", t = 0.01},
        },
    },
    ["fire_iron"] = {
        Source = "fire_semi",
        Time = 23 / 30,
        EjectAt = 0.01,
        EventTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 },
            {s = path1 .. "eject.ogg", t = 0.01},
        },
    },
    ["fire_2bst"] = {
        Source = "fire_freeman",
        Time = 23 / 30,
        IKTimeLine = ARC9.UC.LHIK(23 / 30, 0.05, nil, 0.65, 0.175),
        EjectAt = 0.01,
        EventTable = {
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 },
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.01},
        },
        MinProgressTime = 0.175
    },
    ["fire_manual"] = {
        Source = "fire_pump",
        Time = 17 / 30,
        MinProgressTime = 0.1,
        EventTable = {
            { s = common .. "manual_trigger.ogg", t = 0},
            {s = common .. "common_mech_heavy.ogg", t = 0},
        },
    },
    ["cycle"] = {
        Source = {"cycle", "cycle2"},
        EjectAt = 0.1,
        MinProgressTime = 0.4,
        Time = 25 / 30,
        EventTable = {
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2},
        },
    },
    ["cycle_2bst"] = {
        Source = {"cycle_freeman", "cycle_freeman2"},
        Time = 40 / 30,
        EjectAt = 0.42,
        MinProgressTime = 0.8,
        EventTable = {
            {s = path .. "forearm_back_2bst.ogg", t = 0.3},
            {s = path1 .. "eject.ogg", t = 0.37},
            {s = path .. "forearm_forward_2bst.ogg", t = 0.5},
        },
    },
    ["fix"] = {
        Source = "cycle",
        Time = 20 / 30,
        EjectAt = 0.01,
        MinProgressTime = .25,
        EventTable = {
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2},
        },
    },
    ["fire_empty"] = {
        Source = "fire_semi_empty",
        Time = 23 / 30,
        EjectAt = 0.01,
        EventTable = {
            {s = path1 .. "eject.ogg", t = 0},
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_semi_empty",
        Time = 23 / 30,
        EjectAt = 0.01,
        EventTable = {
            {s = path1 .. "eject.ogg", t = 0},
        },
    },
    ["reload_start"] = {
        Source = "sgreload_start",
        Time = 51 / 30,
        MinProgressTime = 0,
        IKTimeLine = ARC9.UC.LHIK(51 / 30, 0.2, 0.2, 0, nil, true),
        RestoreAmmo = 1,
        EventTable = {
            {s = path .. "turn.ogg",  t = 0},
            {s = rottle,  t = 0.1},
            {s = path .. "grab.ogg",  t = 0.15},
            {s = shellin,  t = 31 / 30},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 31 / 30 + 0.05, v = 0.5},
        }
    },
    ["reload_start_empty"] = {
        Source = "sgreload_start_empty_semi",
        Time = 60 / 30,
        MinProgressTime = 0,
        RestoreAmmo = 1,
        IKTimeLine = ARC9.UC.LHIK(60 / 30, 0.2, nil, 0, nil, true),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "breechload.ogg",  t = .2},
            {s = path .. "breechclose.ogg",  t = 0.9},
            {s = path .. "turn.ogg",  t = 1.0},
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.4},
        },
    },
    ["reload_start_empty_manual"] = {
        Source = "sgreload_start_empty",
        Time = 64 / 30,
        RestoreAmmo = 1,
        IKTimeLine = ARC9.UC.LHIK(64 / 30, 1.7, 0.2, 0, nil, true),
        MinProgressTime = 1,
        EjectAt = 15 / 30,
        EventTable = {
            {s = path .. "forearm_back.ogg", t = 10 / 30},
            {s = path1 .. "eject.ogg", t = 11 / 30},
            {s = path .. "breechload.ogg",  t = 15 / 30},
            {s = path .. "forearm_forward.ogg", t = 33 / 30},
            {s = rottle, t = 0.2},
            {s = path .. "turn.ogg",  t = 1.1},
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.5},
        },
    },
    ["reload_start_empty_manual_alt"] = {
        Source = "sgreload_start_empty_alt",
        Time = 60 / 30,
        RestoreAmmo = 1,
        IKTimeLine = ARC9.UC.LHIK(60 / 30, 1.6, 0.2, 0, nil, true),
        MinProgressTime = 1,
        EjectAt = .1,
        EventTable = {
            {s = path .. "forearm_back.ogg", t = 16 / 30},
            {s = path1 .. "eject.ogg", t = 18 / 30},
            {s = path .. "breechload.ogg",  t = 15 / 30},
            {s = path .. "forearm_forward.ogg", t = 33 / 30},
            {s = rottle, t = 0.2},
            {s = path .. "turn.ogg",  t = 1.1},
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.4},
        },
    },
    ["reload_insert"] = {
        Source = "sgreload_insert",
        Time = 24 / 30,
        IKTimeLine = ARC9.UC.LHIK(24 / 30, 0, nil, 0, nil, true),
        MinProgressTime = 0.24,
        EventTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05, v = 0.5},
        },
    },
    ["reload_finish"] = {
        Source = "sgreload_finish",
        Time = 36 / 30,
        IKTimeLine = ARC9.UC.LHIK(36 / 30, 0, nil, 0.6, 0.3),
        MinProgressTime = 0.7,
        EventTable = {
            {s = rottle,  t = 0.2},
            {s = path .. "return.ogg",  t = 0.475},
            {s = common .. "shoulder.ogg",  t = 0.55},
        },
    },
    ["enter_inspect"] = {
        Source = "inspect_enter",
        Time = 30 / 30,
        IKTimeLine = ARC9.UC.LHIK(30 / 30, 0, nil, 0, nil, true),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-shotgun-01.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        Time = 1 / 30,
        IKTimeLine = ARC9.UC.LHIK(1 / 30, 0, nil, 0, nil, true),
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        Time = 90 / 30,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0, nil, 0, nil),
        EventTable = {
            {s = common .. "movement-shotgun-02.ogg", t = 0.3},
            {s = rottle, t = 0.18},
            {s = rottle, t = 1.0},
            {s = common .. "movement-shotgun-03.ogg", t = 1.3},
            {s = path .. "presscheck1.ogg", t = 1.6},
            {s = path .. "presscheck2.ogg", t = 2.1},
            {s = rottle, t = 2.2},
            {s = common .. "movement-shotgun-04.ogg", t = 2.25},
        },
    },
    ["exit_inspect_pump_empty"] = {
        Source = "inspect_exit_pump_empty",
        Time = 90 / 30,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0, nil, 0, nil),
        EventTable = {
            {s = common .. "movement-shotgun-02.ogg", t = 0.3},
            {s = rottle, t = 0.18},
            {s = rottle, t = 1.0},
            {s = common .. "movement-shotgun-03.ogg", t = 1.3},
            {s = path .. "presscheck1.ogg", t = 1.6},
            {s = path .. "presscheck2.ogg", t = 2.1},
            {s = rottle, t = 2.2},
            {s = common .. "movement-shotgun-04.ogg", t = 2.25},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter",
        Time = 30 / 30,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-shotgun-01.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop",
        Time = 1 / 30,
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        Time = 86 / 30,
        EventTable = {
            {s = common .. "movement-shotgun-02.ogg", t = 0.3},
            {s = rottle, t = 0.18},
            {s = rottle, t = 1.0},
            {s = common .. "movement-shotgun-03.ogg", t = 1.3},
            {s = rottle, t = 2.2},
            {s = common .. "movement-shotgun-04.ogg", t = 2.25},
        },
    },
}

SWEP.BulletBones = {[2] = "Shell_Extra"}
-- The loose reload shells use 12shell; Shell_Extra is the round inside the gun.
SWEP.HideBones = {"12shell"}

SWEP.Hook_Think = function(wep)
    ARC9.UC.NearWallThink(wep)
    if CLIENT then
        wep.UC_ADSBipod = math.Approach(wep.UC_ADSBipod or 0, wep:GetBipod() and 1 or 0, FrameTime() / 0.5)
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local amount = math.max(wep:GetSightAmount(), wep.UC_ADSBipod or 0)
    data.model:SetPoseParameter("sights", math.ease.InOutCubic(amount))
end

SWEP.AttachmentElements = {
    ["uc_manualonly"] = {
        Firemodes = {
            {
                Mode = 1,
                PrintName = ARC9:GetPhrase("uc.base.fcg.pump"),
                ManualAction = true,
                SpreadMult = 0.8,
                UC_HipDispersionMult = 0.8,
            },
        },
        Firemodes_Priority = 10,
    },
    ["uc_spas_slam"] = {
        Firemodes = {
            {
                Mode = -1,
                PrintName = ARC9:GetPhrase("fcg.slam.abbrev"),
                ManualAction = true,
                SlamFire = true,
                SpreadMult = 0.8,
                UC_HipDispersionMult = 0.8,
            },
        },
        Firemodes_Priority = 15,
    },
    ["ur_spas12_barrel_short"] = {
        Bodygroups = {{1, 1}},
        AttPosMods = {[3] = {Pos = Vector(0, 19, 0.4)}},
    },
    ["ur_spas12_stock_full"] = {Bodygroups = {{3, 1}}},
    ["ur_spas12_stock_in"] = {Bodygroups = {{3, 2}}},
    ["ur_spas12_stock_none"] = {Bodygroups = {{3, 3}}},
    ["ur_spas12_tube_reduced"] = {Bodygroups = {{2, 1}}},
    ["rail_classic"] = {Bodygroups = {{4, 2}}},
    ["rail_pump"] = {Bodygroups = {{6, 1}}},
    ["rail_modern"] = {
        Bodygroups = {{4, 1}},
        AttPosMods = {
            [1] = {
                Pos = Vector(0, -1.25, 1.8),
                UC_RailMin = Vector(0, -2.5, 1.8),
                UC_RailMax = Vector(0, 0, 1.8),
            },
        },
    },
}

SWEP.Hook_ModifyElements = function(wep, eles)
    eles["uc_spas_slam"] = eles["freeman"] and eles["needsmanual"] or nil
    -- Only one optic rail may control bodygroup 4.
    if eles["rail_modern"] then eles["rail_classic"] = nil end
    eles["nomuzzleblocking"] = wep.Attachments[2].Installed == "ur_spas12_barrel_short"
        and wep.Attachments[7].Installed != "ur_spas12_tube_reduced" or nil
    return eles
end

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic"},
        Bone = "spas_parent",
        Pos = Vector(0, -3, 1.6),
        Ang = Angle(90, -90, -90),
        UC_RailMin = Vector(0, -4.5, 1.6),
        UC_RailMax = Vector(0, -1.5, 1.6),
        InstalledElements = {"rail_classic"},
        ExcludeElements = {"spas12_foldstock"},
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = ARC9:GetPhrase("ur.spas12.default.barrel"),
        DefaultIcon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips"),
        Category = "ur_spas12_barrel",
        Bone = "spas_parent",
        Pos = Vector(0, 18, 1.2),
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"choke", "muzzle_shotgun"},
        Bone = "spas_parent",
        Pos = Vector(0, 23.5, 0.4),
        Ang = Angle(90, -90, -90),
        ExcludeElements = {"nomuzzle"},
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = "foregrip",
        Bone = "pump",
        Pos = Vector(0, -5, -0.075),
        Ang = Angle(90, -90, -90),
        InstalledElements = {"rail_pump"},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = "tac_pistol",
        Bone = "spas_parent",
        Pos = Vector(0, 20, -2.3),
        Ang = Angle(90, -90, -90),
    },
    {
        PrintName = "uc.slot.stock",
        Category = "ur_spas12_stock",
        Bone = "spas_parent",
        Pos = Vector(0, -12, -1.2),
        DefaultName = D("extended_stock"),
        DefaultIcon = Material("entities/att/ur_spas/stock_std.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.tube",
        Category = "ur_spas12_tube",
        Bone = "spas_parent",
        Pos = Vector(0, 18, -0.9),
        DefaultName = ARC9:GetPhrase("ur.spas12.default.tube"),
        DefaultIcon = Material("entities/att/ur_spas/magbig.png", "smooth mips"),
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
        Category = "uc_fg",
        DefaultName = D("standard_internals"),
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm", "ur_spas12_charm"},
        CosmeticOnly = true,
        Bone = "spas_parent",
        Pos = Vector(0.6, 0.5, -1.5),
        Ang = Angle(90, -90, -90),
    },
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
