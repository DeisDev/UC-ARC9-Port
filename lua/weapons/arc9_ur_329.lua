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
SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.Hook_BlockAnimation = ARC9.UC.HoldIdleWhileCycling
SWEP.GetTrueRPM = ARC9.UC.GetTrueRPM
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
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)
SWEP.TracerColor = Color(255, 225, 200)
SWEP.TracerNum_Priority = 0
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.TracerNum = 1
SWEP.Slot = 1
SWEP.ViewModel = "models/weapons/arccw/c_ur_329pd.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_329pd.mdl"
SWEP.DefaultBodygroups = "000000000"
SWEP.ViewModelFOVBase = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.DamageMax = 75
SWEP.DamageMin = 16
SWEP.RangeMin = 10 * ARC9.UC.Meter
SWEP.RangeMax = 160 * ARC9.UC.Meter
SWEP.Penetration = 10
SWEP.PenetrationDelta = 0
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 470 * ARC9.UC.Meter
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults
SWEP.MalfunctionMeanShotsToFail = math.huge
SWEP.ChamberSize = 0
SWEP.ClipSize = 6
SWEP.RejectMagSizeChange = true
SWEP.UC_CanManualAction = true
SWEP.Recoil = 3 * ARC9.UC.Recoil
SWEP.RecoilSide = 0
SWEP.RecoilRandomSide = 1 / 3
SWEP.VisualRecoil = 1.5
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 3
SWEP.Sway = 1.1 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2
SWEP.TriggerDelay = true
SWEP.RPM = 60 / 0.25
SWEP.Num = 1
SWEP.FiremodeSound = false
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "ur.329.dact",
    },
    {
        Mode = 1,
        PrintName = "ur.329.sact",
        ManualAction = true,
        SpreadMult = 0.5,
        UC_HipDispersionMult = 1 / 3,
        UC_MoveDispersionMult = 1 / 3,
        SpeedMultShooting = 3,
        TriggerDelay = false,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120
SWEP.ReloadInSights = false
SWEP.Spread = 2 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 500 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 250 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.Ammo = "357"
SWEP.Speed = 0.95
SWEP.SpeedMultSights = 0.9
SWEP.AimDownSightsTime = 0.25
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 1
SWEP.BarrelLength = 12
SWEP.UC_ExtraSightDist = 10
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "revolver"
SWEP.HoldTypeNPC = "revolver"
SWEP.HoldTypeSights = "revolver"
SWEP.IronSights = {
    Pos = Vector(-2.700000, 2.000000, 0.733000),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    ViewModelFOV = 55,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.ActivePos = Vector(0.001745, 2.000000, -0.099985)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -1.000000)
SWEP.UC_CrouchPos = Vector(-2.037882, 1.000000, -0.920347)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -14.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng
SWEP.RestPos = Vector(-1.026770, 1.891187, -0.607581)
SWEP.RestAng = Angle(2.075420, -15.490321, -4.554519)
SWEP.NearWallPos = Vector(-1.103293, 2.158263, 0.353052)
SWEP.NearWallAng = Angle(2.075420, -15.490321, -4.554519)
SWEP.SprintVerticalOffset = false
SWEP.SprintPos = Vector(0.363541, 0.981573, -0.997172)
SWEP.SprintAng = Angle(9.012149, -2.963032, -12.469722)
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-7.5, 4, -4.5),
    Ang = Angle(-6, 0, 180),
    TPIKPos = Vector(-7.15, 3.03, -3.44),
}
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-7.71, 28.1, -0.77)

local path1 = ")weapons/arccw_ur/sw586/"
local path2 = ")weapons/arccw_ur/1911/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
SWEP.ShootSound = {path1 .. "fire-01.ogg", path1 .. "fire-02.ogg", path1 .. "fire-03.ogg", path1 .. "fire-04.ogg", path1 .. "fire-05.ogg", path1 .. "fire-06.ogg"}
SWEP.ShootSoundSilenced = {path1 .. "fire-01.ogg", path1 .. "fire-02.ogg", path1 .. "fire-03.ogg", path1 .. "fire-04.ogg", path1 .. "fire-05.ogg", path1 .. "fire-06.ogg"}
SWEP.DryFireSound = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}
local tail = ")/arccw_uc/common/357mag/"
SWEP.DistantShootSound = {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {common .. "fire-dist-int-shotgun-01.ogg", common .. "fire-dist-int-shotgun-02.ogg", common .. "fire-dist-int-shotgun-03.ogg", common .. "fire-dist-int-shotgun-04.ogg", common .. "fire-dist-int-shotgun-05.ogg", common .. "fire-dist-int-shotgun-06.ogg"}
SWEP.DistantShootSoundSilenced = {
    common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg",
}

local hamr = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 3,
    },
    ["idle_cocked"] = {
        Source = "idle_cocked",
        Time = 3,
    },
    ["ready"] = {
        Source = "deploy",
        Time = 86 / 60,
        EventTable = {
            {s = path2 .. "draw.ogg", t = 0},
            {s = path1 .. "cylinder_in.ogg", t = 0.2},
            {s = common .. "raise.ogg", t = 0.55},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
        MinProgressTime = .4,
        EventTable = {
            {s = path2 .. "draw.ogg", t = 0},
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_cocked"] = {
        Source = "draw_cocked",
        Time = 0.7,
        MinProgressTime = .4,
        EventTable = {
            {s = path2 .. "draw.ogg", t = 0},
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.5,
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path2 .. "holster.ogg", t = 0.12},
        },
    },
    ["holster_cocked"] = {
        Source = "holster_cocked",
        Time = 0.5,
        EventTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path2 .. "holster.ogg", t = 0.12},
        },
    },
    ["fire"] = {
        Source = "fire",
        EventTable = {
            {s = hamr, t = 0, v = .25},
            {s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0, v = 0.75},
        },
        MinProgressTime = .2,
    },
    ["fire_iron"] = {
        Source = "fire",
        EventTable = {
            {s = hamr, t = 0, v = 1},
            {s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0},
        },
        MinProgressTime = .2,
    },
    ["dryfire"] = {
        Source = "dryfire",
        EventTable = {
            {s = hamr, t = 0},
        },
    },
    ["dryfire_sact"] = {
        Source = "dryfire_sact",
        EventTable = {
            {s = hamr, t = 0},
            {s = common .. "revolver_cock.ogg", t = 0.35},
        },
    },
    ["trigger"] = {
        Source = "trigger",
        Time = 0.1,
        EventTable = {
            {s = {common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-02.ogg", common .. "revolver_trigger-03.ogg"}, t = 0},
        },
    },
    ["cycle"] = {
        Source = "cocking",
        Time = 1,
        MinProgressTime = 0.25,
        EventTable = {
            {s = common .. "revolver_cock.ogg", t = 0.1},
        }
    },
    ["fix"] = {
        Source = "cocking",
        Time = 1,
        MinProgressTime = 0.5,
        EventTable = {
            {s = common .. "revolver_cock.ogg", t = 0.1},
        }
    },
    ["firemode_1"] = {
        Source = "cocking",
        Time = 1,
        EventTable = {
            {s = common .. "revolver_cock.ogg", t = 0.1},
        }
    },
    ["firemode_2"] = {
        Source = "decocking",
        EventTable = {
            {s = common .. "revolver_trigger-02.ogg", t = 0.1},
        }
    },
    ["safety"] = {
        Source = "decocking",
        Time = 0.8,
        EventTable = {
            {s = common .. "revolver_trigger-02.ogg", t = 0.1},
        }
    },
    ["reload"] = {
        Source = "reload",
        Time = 3.0,
        MinProgressTime = 1.8,
        EjectAt = 1,
        IKTimeLine = ARC9.UC.LHIK(3.0, 0.2, 0.2, 0.62, 0.6),
        EventTable = {
            {s = rottle, t = 0},
            {s = path1 .. "cylinder_out.ogg", t = 0.1},
            {s = path1 .. "cylinder_out.ogg", t = 0.2},
            {s = path1 .. "extractor1.ogg", t = 0.65},
            {s = path1 .. "extract1.ogg", t = 0.65, p = 110, v = 0.25},
            {s = path1 .. "extractor2.ogg", t = 0.75, p = 110},
            {s = path1 .. "cylinder_extract.ogg", t = 0.75},
            {s = path1 .. "extractor2.ogg", t = 0.825},
            {s = common .. "magpouch_pull_small.ogg", t = 1.2, v = 0.2},
            {s = path1 .. "speedloader.ogg", t = 1.65},
            {s = path1 .. "cylinder_in.ogg", t = 2.15},
            {s = rottle, t = 2.4},
        },
    },
    ["reload_cocked"] = {
        Source = "reload_cocked",
        Time = 3.0,
        MinProgressTime = 1.8,
        EjectAt = 1,
        IKTimeLine = ARC9.UC.LHIK(3.0, 0.2, 0.2, 0.62, 0.6),
        EventTable = {
            {s = rottle, t = 0},
            {s = path1 .. "cylinder_out.ogg", t = 0.1},
            {s = path1 .. "cylinder_out.ogg", t = 0.2},
            {s = path1 .. "extractor1.ogg", t = 0.65},
            {s = path1 .. "extract1.ogg", t = 0.65, p = 110, v = 0.25},
            {s = path1 .. "extractor2.ogg", t = 0.75, p = 110},
            {s = path1 .. "cylinder_extract.ogg", t = 0.75},
            {s = path1 .. "extractor2.ogg", t = 0.825},
            {s = common .. "magpouch_pull_small.ogg", t = 1.2, v = 0.2},
            {s = path1 .. "speedloader.ogg", t = 1.65},
            {s = path1 .. "cylinder_in.ogg", t = 2.15},
            {s = rottle, t = 2.4},
        },
    },
}

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.Attachments = {
    {
        PrintName = "ur.329.printname3",
        Category = {"optic_lp"},
        DefaultName = ARC9:GetPhrase("ur.329.defaultname1"),
        Bone = "Body",
        Pos = Vector(3, -3.6, 0),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "ur.329.printname4",
        Category = {"ur_329_barrel"},
        DefaultIcon = Material("entities/att/acwatt_ur_329_barrel.png", "mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.329.defaultname2"),
        Bone = "Body",
        Pos = Vector(6, -4, 0),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.329.printname5",
        Category = {"ur_329_caliber"},
        DefaultIcon = Material("entities/att/uc_bullets/44magnum.png", "mips smooth"),
        DefaultName = ARC9:GetPhrase("ur.329.defaultname3"),
        Bone = "Body",
        Pos = Vector(2.7, -2, 0),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "ur.329.printname6",
        InstalledElements = {"tac_rail"},
        Category = {"tac_pistol"},
        Bone = "Body",
        Pos = Vector(6.75, -2.5, 0),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "ur.329.printname7",
        Category = {"ur_329_grip", "uc_stock", "go_stock_pistol_bt"},
        Bone = "Body",
        Pos = Vector(-2, 2, 0),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "ur.329.printname8",
        DefaultName = ARC9:GetPhrase("ur.329.defaultname4"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
        ExcludeElements = {"329_ss"}
    },
    {
        PrintName = "ur.329.printname9",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("ur.329.defaultname5"),
    },
    {
        PrintName = "ur.329.printname10",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("ur.329.defaultname6"),
    },
    {
        PrintName = "ur.329.printname11",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("ur.329.defaultname7"),
    },
    {
        PrintName = "ur.329.printname12",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "Body",
        Pos = Vector(7.1, -2.4, -0.1),
        Ang = Angle(0, 0, -90),
        Scale = .75,
    },
}

SWEP.AttachmentElements = {
    ["ur_329_barrel_m29"] = {
        Bodygroups = {{1, 1}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ur_329.name.m29"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ur_329.name.m29.true"),
    },
    ["ur_329_barrel_master"] = {
        Bodygroups = {{1, 2}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ur_329.name.master"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ur_329.name.m29.true"),
    },
    ["ur_329_barrel_pocket"] = {
        Bodygroups = {{1, 3}},
        PrintNameOverride = ARC9:GetPhrase("arc9_ur_329.name.pocket"),
        TrueNameOverride = ARC9:GetPhrase("arc9_ur_329.name.pocket.true"),
    },
}

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_329.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_329.truename")
SWEP.Description = "arc9_ur_329.description"
SWEP.Class = "arc9_ur_329.trivia_class"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_329.trivia_manufacturer.true" or "arc9_ur_329.trivia_manufacturer",
    ["uc.trivia.calibre2"] = "arc9_ur_329.trivia_calibre",
    ["uc.trivia.mechanism3"] = "arc9_ur_329.trivia_mechanism",
    ["uc.trivia.country4"] = "arc9_ur_329.trivia_country",
    ["uc.trivia.year5"] = "arc9_ur_329.trivia_year",
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
SWEP.HookP_NameChange = ARC9.UC.NameChange
SWEP.SprintToFireTime = 0.25
SWEP.FreeAimRadius = math.Clamp(500 / 80, 3, 10)
SWEP.ARC9WeaponCategory = ARC9.WEAPON_PISTOL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.TriggerDelayTime = 0.1
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true
SWEP.HideBones = {"speedreloader"}
SWEP.BulletBones = {}
SWEP.FiremodeAnimLock = true
function SWEP:SwitchFiremode()
    local previous = self:GetFiremode()
    baseclass.Get("arc9_base").SwitchFiremode(self)
    if self:GetFiremode() ~= previous then self:SetNeedsCycle(false) end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if not wep:GetValue("ManualAction") then return end
    if anim == "dryfire" then return "dryfire_sact" end
    if anim == "fire" or anim == "fire_iron" then return end
    if anim == "reload" and wep:GetNeedsCycle() then return end
    if wep.Animations[anim .. "_cocked"] then return anim .. "_cocked" end
end

function SWEP:DoEject(index, attachment)
    for _ = 1, self:GetCapacity() - self:Clip1() do
        baseclass.Get("arc9_base").DoEject(self, index, attachment)
    end
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

function SWEP:ToggleSafety(onoff)
    local previous = self:GetSafe()
    baseclass.Get("arc9_base").ToggleSafety(self, onoff)
    if previous or not self:GetSafe() or self:GetFiremode() ~= 2 then return end
    self:SetFiremode(1)
    self:SetNeedsCycle(false)
    self:InvalidateCache()
    self:PlayAnimation("safety", 1, true)
end

SWEP.RPMHookNPC = function(wep, rpm)
    if wep:GetValue("ManualAction") then return 60 / (wep.Animations.cycle.Time * wep:GetProcessedValue("CycleTime", true)) end
    return rpm
end

function SWEP:GetNPCBurstSettings()
    if self:GetValue("ManualAction") then
        return 1, 1, self.Animations.cycle.Time * self:GetProcessedValue("CycleTime", true)
    end
    return baseclass.Get("arc9_base").GetNPCBurstSettings(self)
end

ARC9.UC.ConvertAttachmentAngles(SWEP)
