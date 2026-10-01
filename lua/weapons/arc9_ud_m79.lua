SWEP.Base = "arc9_base"
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
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

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/12.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellScale = 0

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 3
SWEP.CamQCA = 2
SWEP.CamOffsetAng = Angle(0, 90, 90)
SWEP.TracerColor = Color(255, 225, 200)

-- Names --

-- (American) Squad Grenade Launcher or something. similar to M16's fake name
SWEP.PrintName = ARC9:GetPhrase("arc9_ud_m79.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_m79.truename")
SWEP.HookP_NameChange = ARC9.UC.NameChange

SWEP.Class = "uc.class.grenade_launcher"
SWEP.Description = "arc9_ud_m79.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_m79.trivia.manufacturer.true" or "arc9_ud_m79.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.40x46mm",
    ["uc.trivia.mechanism3"] = "uc.mechanism.break_action",
    ["uc.trivia.country4"] = "uc.country.usa",
    ["uc.trivia.year5"] = 1961,
}

-- Weapon slot --

SWEP.Slot = 4

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.DefaultBodygroups = "00000000"
SWEP.ViewModelFOVBase = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 5.5, -4.5),
    Ang = Angle(-12, 0, 180),
    Scale = 1 - ( 0.35 * 0.5 )
}

-- Damage parameters --

SWEP.DamageMax = 200
SWEP.DamageMin = 200
SWEP.RangeMax = 40 * ARC9.UC.Meter
SWEP.RangeMin = 0
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true

SWEP.Num = 1
SWEP.Penetration = 0

SWEP.ShootEnt = "arc9_uc_40mm_he"
SWEP.ShootEntForce = 5000
SWEP.ShootEntInheritPlayerVelocity = true
SWEP.Hook_GetShootEntData = ARC9.UC.ShootEntDamage

-- Mag size --

SWEP.ChamberSize = 0
SWEP.ClipSize = 1

-- Recoil --

SWEP.Recoil = 4 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 1 / 4
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 4
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.RPM = 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.ShootVolume = 160
SWEP.ShootPitch = 100

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_RPG

-- Accuracy --

SWEP.Spread = 30 * ARC9.UC.MOA
SWEP.SpreadAddHipFire = 500 * ARC9.UC.Dispersion
SWEP.SpreadAddMove = 200 * ARC9.UC.Dispersion
SWEP.SpreadAddMidAir = 1000 * ARC9.UC.Dispersion
SWEP.FreeAimRadius = math.Clamp(500 / 80, 3, 10)

SWEP.Ammo = "smg1_grenade"

-- Speed multipliers --

SWEP.Speed = 0.92
SWEP.SpeedMultSights = 0.5
SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.4
SWEP.SpeedMultShooting = 0.75

-- Melee --

SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-- Length --

SWEP.BarrelLength = 48

-- Ironsights / Customization / Poses --

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

SWEP.IronSights = {
    Pos = Vector(-3.51, -5, 2.2),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    CrosshairInSights = false,
}

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes.
SWEP.RestPos = Vector(1.077572, -3.841934, -3.054240)
SWEP.RestAng = Angle(7.012951, 3.473879, -19.572934)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizeRotateAnchor = Vector(21.5, -3.51, -3)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

-- Firing sounds --

local common = ")/arccw_uc/common/"
local path = ")/arccw_uc/common/40mm/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.DistantShootSound = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}

-- Animations --

local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 20 / 30,
        EventTable = {{ s = mech, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 20 / 30,
        EventTable = {{ s = mech, t = 0}},
    },
    ["reload"] = {
        Source = "reload",
        Time = 101 / 30,
        IKTimeLine = ARC9.UC.LHIK(101 / 30, 0.6, 0.2, 0.5, 0.2),
        MagSwapTime = 1.5,
        MinProgressTime = 2.2,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = common .. "gl_remove.ogg",  t = 0.9},
            {s = rottle, t = 1.0},
            {s = common .. "magpouch.ogg", t = 1.4},
            {s = common .. "40mm_casing_1.ogg",  t = 1.6},
            {s = common .. "gl_insert.ogg",  t = 2.0},
            {s = rottle, t = 2.25},
            {s = common .. "breaker_close.ogg",  t = 2.5},
        },
    },
    ["reload_shotgun"] = {
        Source = "reload",
        Time = 101 / 30,
        IKTimeLine = ARC9.UC.LHIK(101 / 30, 0.6, 0.2, 0.5, 0.2),
        MagSwapTime = 1.5,
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = common .. "gl_remove.ogg",  t = 0.9},
            {s = rottle, t = 1.0},
            {s = common .. "40mm_casing_1.ogg",  t = 1.6},
            {s = common .. "gl_insert.ogg",  t = 2.0},
            {s = rottle, t = 2.25},
            {s = common .. "breaker_close.ogg",  t = 2.5},
            {
                t = 1, ind = 1, bg = 2, -- Empty shell bodygroup
            },
            {
                t = 1.5, ind = 1, bg = 1,
            }
        },
    },
    ["reload_caseless"] = {
        Source = "reload_caseless",
        Time = 101 / 30,
        IKTimeLine = ARC9.UC.LHIK(101 / 30, 0.74, 0.2, 0.6, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = rottle, t = 0.75},
            {s = common .. "gl_insert.ogg",  t = 1.5},
            {s = rottle, t = 2.0},
            {s = common .. "breaker_close.ogg",  t = 2.25},
        },
    },
}

SWEP.BulletBones = {
    [1] = "m79_grenade",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["m79_pirategun"] = {
        Bodygroups = {{0, 1}},
    },
    ["m79_nostock"] = {
        Bodygroups = {{2, 1}},
    },
    ["m79_rail"] = {
        Bodygroups = {{3, 1}},
    },

    ["40mm_buckshot"] = {
        Bodygroups = {{1, 1}},
    },
    ["40mm_buckshot_empty"] = {
        Bodygroups = {{1, 2}},
    },
    ["40mm_caseless"] = {
        Bodygroups = {{1, 3}},
    },
    ["40mm_hornetnest"] = {
        Bodygroups = {{1, 4}},
    },
    ["40mm_incendiary"] = {
        Bodygroups = {{1, 5}},
    },
    ["40mm_napalm"] = {
        Bodygroups = {{1, 5}},
    },
}

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        Category = {"optic_lp", "optic", "optic_sniper"},
        Bone = "m79_front",
        Pos = Vector(0, -3.6, 1),
        Ang = Angle(88, 89.906, -179.906),
        InstalledElements = {"m79_rail"},
        ExcludeElements = {"m79_pirategun"},
        ExtraSightDistance = 2,
    },
    {
        PrintName = "uc.slot.tube",
        DefaultName = D("standard_tube"),
        DefaultIcon = Material("entities/att/acwatt_ud_m79_barrel.png", "smooth mips"),
        Category = "ud_m79_barrel",
        Bone = "m79_front",
        Pos = Vector(3.45, -5.3, -22),
        Ang = Angle(88, 89.906, -179.906),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip"},
        Bone = "m79_front",
        Pos = Vector(0, 0.4, 1.25),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"m79_rail"},
        ExcludeElements = {"m79_pirategun"},
        MergeSlots = {10},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac_pistol"},
        Bone = "m79_front",
        Pos = Vector(0.25, 0, 5),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"m79_pirategun"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ud_m79_stock"},
        DefaultName = D("wooden_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_m79_stock.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.grenade",
        DefaultName = D("high_explosive"),
        DefaultIcon = Material("entities/att/arccw_uc_40mm_generic.png", "smooth mips"),
        Category = "uc_40mm",
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = D("basic_training"),
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg_singleshot", -- Fire group
        DefaultName = D("standard_internals"),
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "m79_front",
        Pos = Vector(0.8, -1, 0),
        Ang = Angle(90, 0, -90),
    },
    {
        -- Merged into the underbarrel slot.
        PrintName = "uc.slot.ubgl",
        Category = "uc_ubgl",
        Bone = "m79_front",
        Pos = Vector(0, -1.1, 0.9),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"m79_rail"},
        ExcludeElements = {"m79_pirategun"},
    }
}
