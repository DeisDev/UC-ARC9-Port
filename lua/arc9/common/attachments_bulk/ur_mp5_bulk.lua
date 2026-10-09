do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_eod")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/upper_eod.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
        ["uc.nohg"] = "",
    }

    ATT.Category = "ur_mp5_barrel"

    ATT.SortOrder = 11

    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.RecoilMult = 0.8
    ATT.SpreadMult = 0.75
    ATT.UC_HipDispersionMult = 1.2
    ATT.BarrelLengthAdd = 4

    ATT.ActivateElements = {"ur_mp5_barrel_eod", "barrel_eod"}

    ATT.Hook_PrimaryAttack = function(wep)
        if wep:GetUBGL() or !IsFirstTimePredicted() then return end
        wep:EmitSound("weapons/arccw_ur/mp5/eod" .. math.random(1, 5) .. ".ogg", 70, math.Rand(98, 102), 1, CHAN_STATIC)
        wep:EmitSound("weapons/arccw_ur/mp5/eo2" .. math.random(1, 6) .. ".ogg", 70, 100, 0.5, CHAN_STATIC)
    end

    ARC9.LoadAttachment(ATT, "ur_mp5_barrel_eod")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_kurz")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/upper_k.png", "smooth mips")

    ATT.Category = "ur_mp5_barrel"

    ATT.SortOrder = 4.5

    ATT.LHIK = true
    -- Negative stat priorities prevent ARC9 from applying the reload IK timeline.
    ATT.LHIK_Priority = 0
    ATT.NoDraw = true

    ATT.ModelOffset = Vector(6.5, -0.5, -1)
    ATT.Model = "models/weapons/arccw/atts/lhik_kurz.mdl"

    ATT.BarrelLengthAdd = -4
    ATT.SwayMult = .5
    ATT.AimDownSightsTimeMult = .75
    ATT.SprintToFireTimeMult = .75
    ATT.RPMMult = 1.125

    ATT.RecoilMult = 1.25
    ATT.SpreadMult = 3
    ATT.RangeMaxMult = .5
    ATT.RangeMinMult = .5

    ATT.UC_HipDispersionMult = 0.85

    ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end

    ATT.PhysBulletMuzzleVelocityMult = 0.9375

    ATT.ActivateElements = {"ur_mp5_barrel_kurz", "mp5_kurz"}

    ARC9.LoadAttachment(ATT, "ur_mp5_barrel_kurz")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_long")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/upper_fish.png", "smooth mips")

    ATT.Category = "ur_mp5_barrel"

    ATT.SortOrder = 13

    ATT.SpreadMult = 0.75
    ATT.RecoilMult = 0.85
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25

    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SwayMult = 1.5
    ATT.BarrelLengthAdd = 7

    ATT.PhysBulletMuzzleVelocityMult = 1.15

    ATT.Ignore = true

    ATT.ActivateElements = {"ur_mp5_barrel_long"}

    ARC9.LoadAttachment(ATT, "ur_mp5_barrel_long")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_sd")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/upper_sd.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
        ["uc.nohg"] = "",
    }
    ATT.CustomPros = {
        ["uc.supptail"] = "",
    }

    ATT.Category = "ur_mp5_barrel"

    ATT.SortOrder = 13

    ATT.Silencer = true
    ATT.ShootVolumeMult = 0.55
    ATT.RecoilMult = 0.9
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.TracerNum = 0

    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SwayMult = 1.25
    ATT.RangeMaxMult = 0.65
    ATT.RangeMinMult = 0.65
    ATT.BarrelLengthAdd = 4

    ATT.PhysBulletMuzzleVelocityMult = 0.7

    ATT.ShootPitchMult = 1.15

    ATT.ActivateElements = {"ur_mp5_barrel_sd", "barrel_sd"}

    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "ur_mp5_barrel_sd")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_sword")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/upper_fish.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
    }

    ATT.Category = "ur_mp5_barrel"

    ATT.SortOrder = 9

    ATT.RecoilMult = 0.7

    ATT.SpeedMultSights = 0.8
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.5
    ATT.BarrelLengthAdd = 3

    ATT.PhysBulletMuzzleVelocityMult = 1.15

    ATT.IronSights = {
        Pos = Vector(-3.170000, -4.000000, -0.220000),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ViewModelFOV = 74,
    }

    ATT.ActivateElements = {"ur_mp5_barrel_sword", "ur_mp5_barrel_swordfish", "barrel_sword"}

    ARC9.LoadAttachment(ATT, "ur_mp5_barrel_sword")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_10auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 80
    ATT.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.Category = "ur_mp5_caliber"

    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.10mm_auto")

    ATT.DamageMaxMult = 1.15
    ATT.DamageMinMult = 1.15

    ATT.RecoilMult = 1.25
    ATT.RecoilRandomSideMult = 1.25
    ATT.ReloadTimeMult = 1.15
    ATT.ShellScale = 1.1

    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.4
    ATT.UC_MalfunctionVarianceMult = 1.5

    local path = ")weapons/arccw_ur/1911/"
    local path1 = ")weapons/arccw_ur/mp5/"
    local fire10 = {path .. "fire-10-01.ogg",path .. "fire-10-02.ogg",path .. "fire-10-03.ogg",path .. "fire-10-04.ogg",path .. "fire-10-05.ogg",path .. "fire-10-06.ogg"}
    local fire10sup = {path1 .. "fire-40-sup-01.ogg",path1 .. "fire-40-sup-02.ogg",path1 .. "fire-40-sup-03.ogg",path1 .. "fire-40-sup-04.ogg",path1 .. "fire-40-sup-05.ogg",path1 .. "fire-40-sup-06.ogg"}

    local tail = ")/arccw_uc/common/10x25/"
    local fire10dist = {tail .. "fire-dist-10x25-pistol-ext-01.ogg", tail .. "fire-dist-10x25-pistol-ext-02.ogg", tail .. "fire-dist-10x25-pistol-ext-03.ogg", tail .. "fire-dist-10x25-pistol-ext-04.ogg", tail .. "fire-dist-10x25-pistol-ext-05.ogg", tail .. "fire-dist-10x25-pistol-ext-06.ogg"}
    local common = ")/arccw_uc/common/"

    local fire10distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

    ATT.ActivateElements = {"ur_mp5_caliber_10auto", "ur_mp5_mag_waffle", "ur_mp5_cal_10mm"}

    ATT.ShootSound = fire10
    ATT.ShootSoundSilenced = fire10sup
    ATT.DistantShootSound = fire10dist
    ATT.DistantShootSoundIndoor = fire10distint

    ARC9.LoadAttachment(ATT, "ur_mp5_caliber_10auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_22lr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
    ATT.Category = "ur_mp5_caliber"
    ATT.SortOrder = -1

    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
    ATT.Ammo = "plinking"

    ATT.DamageMaxMult = 0.4
    ATT.DamageMinMult = 0.4

    ATT.RecoilMult = 0.25
    ATT.VisualRecoilMult = 0.25
    ATT.PenetrationMult = 0.1
    ATT.SpeedMultShooting = 1.2

    ATT.PhysBulletMuzzleVelocity = 320 * ARC9.UC.Meter
    ATT.UC_HipDispersionMult = 0.75

    ATT.ClipSizeMult = 1.2

    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/22lr.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.TinyShellSoundsTable

    local path = "arccw_uc/common/"

    local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
    local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}

    local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}

    local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}

    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 1,
        },
    }

    ATT.ActivateElements = {"ur_mp5_caliber_22lr", "receiver_lower_semi", "ur_mp5_cal_22lr"}

    ATT.ShootSound = fire22
    ATT.ShootSoundSilenced = fire22sup
    ATT.DistantShootSound = fire22dist
    ATT.DistantShootSoundIndoor = fire22distint

    ARC9.LoadAttachment(ATT, "ur_mp5_caliber_22lr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_40sw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 100
    ATT.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
    ATT.Category = "ur_mp5_caliber"

    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur.calibre.40_sw")

    ATT.DamageMinMult = 1.35
    ATT.RangeMinMult = 0.75
    ATT.RecoilMult = 1.15
    ATT.ShellScale = 1.1

    local path = ")weapons/arccw_ur/mp5/"
    local fire40 = {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
    local fire40sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}

    local tail = ")/arccw_uc/common/40sw/"
    local fire40dist = {tail .. "fire-dist-40sw-pistol-ext-01.ogg", tail .. "fire-dist-40sw-pistol-ext-02.ogg", tail .. "fire-dist-40sw-pistol-ext-03.ogg", tail .. "fire-dist-40sw-pistol-ext-04.ogg", tail .. "fire-dist-40sw-pistol-ext-05.ogg", tail .. "fire-dist-40sw-pistol-ext-06.ogg"}
    local common = ")/arccw_uc/common/"

    local fire40distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

    ATT.ActivateElements = {"ur_mp5_caliber_40sw", "ur_mp5_mag_waffle", "ur_mp5_cal_40sw"}

    ATT.ShootSound = fire40
    ATT.ShootSoundSilenced = fire40sup
    ATT.DistantShootSound = fire40dist
    ATT.DistantShootSoundIndoor = fire40distint

    ARC9.LoadAttachment(ATT, "ur_mp5_caliber_40sw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_noburst")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 201
    ATT.Icon = Material("entities/att/ur_mp5/sef.png", "smooth mips")
    ATT.CustomCons = {
        ["ur.mp5.noburst"] = "",
    }
    ATT.Category = "ur_mp5_caliber"

    ATT.AimDownSightsTimeMult = .95
    ATT.SprintToFireTimeMult = .95

    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = -1,
        },
        {
            Mode = 1,
        },
    }

    ATT.ActivateElements = {"ur_mp5_caliber_noburst", "receiver_lower"}

    ARC9.LoadAttachment(ATT, "ur_mp5_caliber_noburst")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_semi")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/grip.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }
    ATT.Category = "ur_mp5_caliber"
    ATT.SortOrder = -1

    ATT.RPMMult = 600 / 900
    ATT.RecoilMult = 0.8
    ATT.SpreadMult = 0.75
    ATT.RangeMaxMult = 1.15
    ATT.RangeMinMult = 1.15
    ATT.UC_MoveDispersionMult = 0.5

    ATT.PhysBulletMuzzleVelocityMult = 1.15

    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 1,
        },
    }

    ATT.HookP_ClassChange = function(wep, class) return "uc.class.pistol" end

    ATT.ActivateElements = {"ur_mp5_caliber_semi", "receiver_lower_semi"}

    ARC9.LoadAttachment(ATT, "ur_mp5_caliber_semi")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_mag_15")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/ur_mp5/mag20.png", "smooth mips")
    ATT.Category = "ur_mp5_mag"

    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ReloadTimeMult = 0.85
    ATT.ClipSize = 15
    ATT.SwayMult = 0.75
    ATT.SpeedMultShooting = 1.1

    ATT.UC_HipDispersionMult = 0.75

    ATT.ExcludeElements = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

    ATT.ActivateElements = {"ur_mp5_mag_15"}

    ARC9.LoadAttachment(ATT, "ur_mp5_mag_15")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_mag_40")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 20
    ATT.Icon = Material("entities/att/acwatt_ur_mp5_mag_40.png", "smooth mips")
    ATT.Category = "ur_mp5_mag"

    ATT.AimDownSightsTimeMult = 1.08
    ATT.SprintToFireTimeMult = 1.08
    ATT.ClipSize = 50
    ATT.SwayMult = 1.15

    ATT.ExcludeElements = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

    ATT.Ignore = true

    ATT.ActivateElements = {"ur_mp5_mag_40"}

    ARC9.LoadAttachment(ATT, "ur_mp5_mag_40")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_mag_50")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/ur_mp5/mag50.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.Category = "ur_mp5_mag"

    ATT.ClipSize = 50

    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.ReloadTimeMult = 1.15
    ATT.SpeedMult = 0.93
    ATT.DeployTimeMult = 1.2
    ATT.SwayMult = 1.7
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.85
    ATT.UC_MalfunctionVarianceMult = 1.5

    ATT.UC_HipDispersionMult = 1.5

    ATT.ExcludeElements = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

    ATT.ActivateElements = {"ur_mp5_mag_50", "ur_mp5_50_mag"}

    ARC9.LoadAttachment(ATT, "ur_mp5_mag_50")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_optic_alt")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/altirons.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Category = "ur_mp5_optic"
    ATT.SortOrder = 9999

    ATT.ExcludeElements = {"barrel_sword"}

    ATT.IronSights = {
        Pos = Vector(-3.170000, -4.851284, 0.731534),
        Ang = Angle(0, 0.100000, 0),
        Magnification = 1,
        ViewModelFOV = 80,
    }

    ATT.ActivateElements = {"ur_mp5_optic_alt", "ur_mp5_precision_irons"}

    ARC9.LoadAttachment(ATT, "ur_mp5_optic_alt")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_optic_mount")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/somemount.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Category = "mp5_charm"
    ATT.SortOrder = 9999

    ATT.ExcludeElements = {"barrel_sword"}
    ATT.Free = true

    ATT.ActivateElements = {"ur_mp5_optic_mount", "ur_mp5_rail_optic"}

    ARC9.LoadAttachment(ATT, "ur_mp5_optic_mount")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_a2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Ignore = true

    ATT.Icon = Material("entities/att/acwatt_ur_mp5_stock_solid.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.SortOrder = 4

    ATT.RecoilMult = 0.75
    ATT.RecoilRandomSideMult = 0.5
    ATT.VisualRecoilMult = 0.5
    ATT.SwayMult = 0.5

    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SpeedMultSights = 0.9
    ATT.SpeedMultShooting = 0.9

    ATT.DeployTimeMult = 1.25

    ATT.ActivateElements = {"ur_mp5_stock_a2", "ur_mp5_stock_wood"}

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_a2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_a3")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/stock_colap.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

    ATT.RecoilRandomSideMult = 1.25
    ATT.AimDownSightsTimeMult = 0.90
    ATT.SprintToFireTimeMult = 0.90

    ATT.DeployTimeMult = 0.85

    ATT.UC_HipDispersionMult = 0.8

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_a3"},
        },
        {
            PrintName = "uc.toggle.collapsed",
            ActivateElements = {"stock_a3_folded"},
            BarrelLengthAdd = -9,

            RecoilMult = 1.75,
            SwayMult = 2,
            SpeedMultShooting = 1.12,
            SpeedMultSights = 1.12,
        }
    }

    ATT.ActivateElements = {"ur_mp5_stock_a3"}

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_a3")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_future")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/stock_fish.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

    ATT.UC_MoveDispersionMult = .85
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.RecoilRandomSideMult = 1.15
    ATT.UC_HipDispersionMult = 0.85

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_future"},
        },
        {
            PrintName = "uc.toggle.collapsed",
            ActivateElements = {"stock_future_folded"},
            SpeedMultShooting = 1.15,
            BarrelLengthAdd = -4
        }
    }

    ATT.ActivateElements = {"ur_mp5_stock_future"}

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_future")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_none")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/stock_cap.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.Free = true
    ATT.SortOrder = -1

    ATT.RecoilMult = 2
    ATT.RecoilRandomSideMult = 1.25
    ATT.SwayMult = 3

    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.SpeedMult = 1.1
    ATT.SpeedMultSights = 1.25
    ATT.SpeedMultShooting = 1.2

    ATT.DeployTimeMult = 0.6
    ATT.BarrelLengthAdd = -12

    ATT.ActivateElements = {"ur_mp5_stock_none", "ur_mp5_stock_remove"}

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_none")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_pdw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/stock_pdw.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

    ATT.UC_MoveDispersionMult = .85
    ATT.RecoilMult = 1.15
    ATT.RecoilRandomSideMult = 1.25

    ATT.UC_HipDispersionMult = 0.75
    ATT.DeployTimeMult = 0.85

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_pdw"},
        },
        {
            PrintName = "ur.toggle.folded",
            ActivateElements = {"stock_pdw_folded"},
            BarrelLengthAdd = -12,
            RecoilMult = 1.15 * 1.75,
            SpeedMultShooting = 1.20,
            SpeedMultSights = 1.20,
            SwayMult = 3,
        }
    }

    ATT.ActivateElements = {"ur_mp5_stock_pdw"}

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_pdw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_ump")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/stock_ump.png", "smooth mips")
    ATT.Category = "ur_mp5_stock"
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

    ATT.DeployTimeMult = 1.1
    ATT.SpeedMultSights = 0.85
    ATT.SpeedMultShooting = 0.85
    ATT.RecoilRandomSideMult = 0.75

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_ump"},
            UC_HipDispersionMult = .75,
        },
        {
            PrintName = "ur.toggle.folded",
            ActivateElements = {"stock_ump_folded"},
            BarrelLengthAdd = -12,
            RecoilMult = 1.75,
            SwayMult = 2.5,
        }
    }

    ATT.ActivateElements = {"ur_mp5_stock_ump"}

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_mp5_stock_ump")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_classic")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_slim.png", "smooth mips")

    ATT.Category = "ur_mp5_hg"

    ATT.SortOrder = 999

    ATT.SwayMult = .75
    ATT.AimDownSightsTimeMult = .95
    ATT.SprintToFireTimeMult = .95
    ATT.RecoilMult = 1.15

    ATT.ExcludeElements = {"barrel_sd","mp5_kurz"}

    ATT.ActivateElements = {"ur_mp5_ub_classic"}

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_classic")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_kurzgrip")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_k.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }

    ATT.Category = "ur_mp5_hg"

    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    -- The grip mesh is on the weapon; the source LHIK asset only supplies its MDL.
    ATT.NoDraw = true

    ATT.ModelOffset = Vector(-1.3, 0, -0)
    ATT.Model = "models/weapons/arccw/atts/ur_kurzlhik.mdl"
    ATT.HoldType = "smg"

    ATT.SortOrder = 2

    ATT.SwayMult = .75
    ATT.AimDownSightsTimeMult = .95
    ATT.SprintToFireTimeMult = .95
    ATT.RecoilMult = .85

    ATT.RequireElements = {"mp5_kurz"}

    ATT.ActivateElements = {"ur_mp5_ub_kurzgrip", "mp5_badhg"}

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_kurzgrip")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_mlok")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_moe.png", "smooth mips")

    ATT.Category = {"ur_mp5_hg","ur_g3_handguard"}

    ATT.SortOrder = 1

    ATT.AimDownSightsTimeMult = .90
    ATT.SprintToFireTimeMult = .90
    ATT.RecoilMult = 1.15
    ATT.SwayMult = 1.25

    ATT.ExcludeElements = {"g3_not8"}

    ATT.ActivateElements = {"ur_mp5_ub_mlok", "ur_mp5_ub_kurzmlok"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_mlok")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_ris")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_pica.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Category = "ur_mp5_hg"
    ATT.SortOrder = 997

    ATT.ExcludeElements = {"barrel_sd","mp5_kurz"}

    ATT.ActivateElements = {"ur_mp5_ub_ris", "ur_mp5_rail_fg"}

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_ris")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_surefire")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_flash.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
        ["uc.noubs"] = "",
    }

    ATT.Category = {"ur_mp5_hg","ur_g3_handguard"}
    ATT.SortOrder = 998

    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.ModelOffset = Vector(0,0,.1)
    ATT.UC_ModelAngleOffset = Angle(0,0,180)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
    ATT.Scale = 0.01

    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024
    ATT.FlashlightColor = Color(255, 242, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 3

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }

    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9

    ATT.ExcludeElements = {"barrel_sd","mp5_kurz","g3_not8"}

    ATT.ActivateElements = {"ur_mp5_ub_surefire", "hg_surefire", "mp5_badhg"}

    ATT.FlashlightAttachment = 1
    ATT.ToggleOnF = true
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_surefire")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_surefire_mlok")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_mp5/hg_flash_mlok.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
        ["uc.noubs"] = "",
    }

    ATT.Category = "ur_mp5_hg"
    ATT.SortOrder = 998

    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.ModelOffset = Vector(0,0,.1)
    ATT.UC_ModelAngleOffset = Angle(0,0,180)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
    ATT.Scale = 0.01

    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024
    ATT.FlashlightColor = Color(255, 242, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 3

    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }

    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9

    ATT.ExcludeElements = {"barrel_sd","mp5_kurz"}

    ATT.ActivateElements = {"ur_mp5_ub_surefire_mlok", "ur_mp5_ub_surelock", "hg_surefire", "mp5_badhg"}

    ATT.FlashlightAttachment = 1
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "ur_mp5_ub_surefire_mlok")
end
