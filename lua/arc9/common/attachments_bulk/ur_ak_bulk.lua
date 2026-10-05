do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_105")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/105.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 12
    ATT.SwayMult = .85
    ATT.AimDownSightsTimeMult = .8
    ATT.SprintToFireTimeMult = .8
    ATT.BarrelLengthAdd = -3
    ATT.SpeedMultSights = 1.05
    ATT.RecoilMult = 1.3
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = .75
    ATT.RangeMinMult = .75
    ATT.RPMMult = 625 / 600
    ATT.ShootPitchMult = 105 / 100
    ATT.ActivateElements = {"barrel_105", "ak_barrelchange", "nodong"}

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_105")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_krinkov")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/aksu.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 8
    ATT.ShootPitchMult = 115 / 100
    ATT.BarrelLengthAdd = -6
    ATT.RPMMult = 1.131
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.UC_HipDispersionMult = 0.8
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMult = 1.02
    ATT.SwayMult = 0.75
    ATT.RecoilMult = 1.5
    ATT.SpreadMult = 2
    ATT.RangeMaxMult = .5
    ATT.RangeMinMult = .5
    ATT.ActivateElements = {"barrel_krinkov", "ak_barrelchange", "barrel_carbine", "ak_barrelkrinkov"}
    ATT.LHIK = true
    ATT.ModelOffset = Vector(-24, -3.1, 3.6)
    ATT.Model = "models/weapons/arccw/ak_lhik_u.mdl"
    ATT.UC_ModelAngleOffset = Angle(10, 0, 0)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_krinkov")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_rpk")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/rpk.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 23
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.SpeedMult = .95
    ATT.SpeedMultSights = 0.8
    ATT.SwayMult = 1.5
    ATT.RecoilMult = .8
    ATT.SpreadMult = .7
    ATT.RangeMaxMult = 1.5
    ATT.RangeMinMult = 1.5
    ATT.MalfunctionMeanShotsToFailMult = 2
    ATT.UC_HipDispersionMult = 1.5
    ATT.Bipod = true
    ATT.RecoilMultBipod = .25
    ATT.RecoilRandomSideMultBipod = .25
    ATT.UC_BipodDispersionMult = .2
    ATT.SwayMultBipod = .2
    ATT.ActivateElements = {"barrel_rpk", "ak_barrelchange", "uc_noubgl"}

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_rpk")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_t56")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/type.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 16
    ATT.SpeedMultSights = .95
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"barrel_t56_ext", "ak_bayonet1"},
            BashRangeAdd = 16,
            BashDamageMult = 3,
            UC_MeleeWaitTimeMult = 2,
            UC_Bayonet = true,
            BarrelLengthAdd = 10,
            SwayMult = 1.2,
            Hook_TranslateAnimation = function(wep, anim) if anim == "bash" then return "bash_bayonet" end end
        },
        {
            PrintName = "ur.toggle.folded",
            ActivateElements = {"barrel_t56", "ak_bayonet1"},
        },
    }

    -- ARC9 replaces an attachment's own elements with its toggle's, so each toggle carries ak_bayonet1.
    ATT.ExcludeElements = {"ak_bayonet2"}

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_t56")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_vepr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/vepr.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 20
    ATT.BarrelLengthAdd = 4
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SpeedMult = .97
    ATT.SpeedMultSights = 0.85
    ATT.RecoilMult = 0.85
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.5
    ATT.RangeMinMult = 1.5
    ATT.UC_HipDispersionMult = 1.25
    ATT.ShootPitchMult = 0.9
    ATT.RPMMult = 0.8
    ATT.ActivateElements = {"barrel_vepr", "ak_barrelchange"}

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_vepr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_vityaz")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/barrel/smg.png", "mips smooth")
    ATT.Category = {"ur_ak_barrel"}
    ATT.SortOrder = 9
    ATT.BarrelLengthAdd = -5
    ATT.ShootPitchMult = 115 / 100
    ATT.RPMMult = 1.131
    ATT.AimDownSightsTimeMult = 0.7
    ATT.SprintToFireTimeMult = 0.7
    ATT.UC_HipDispersionMult = 0.7
    ATT.SpeedMultSights = 1.12
    ATT.SpeedMult = 1.03
    ATT.SwayMult = 0.85
    ATT.RecoilMult = 1.4
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.65
    ATT.RangeMinMult = 0.65
    ATT.ActivateElements = {"barrel_vityaz", "ak_barrelchange", "barrel_carbine", "ak_railedguard"}
    ATT.LHIK = true
    ATT.ModelOffset = Vector(-24, -3.4, 3.3)
    ATT.Model = "models/weapons/arccw/ak_lhik_u.mdl"
    ATT.UC_ModelAngleOffset = Angle(10, 0, 0)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)

    ARC9.LoadAttachment(ATT, "ur_ak_barrel_vityaz")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_366")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/uc_bullets/762x39.png", "mips smooth")
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }

    ATT.Category = "ur_ak_cal"
    ATT.DamageMaxMult = 1.2
    ATT.DamageMinMult = 1.2
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.PenetrationMult = 1.5
    ATT.RPMMult = 0.8
    ATT.RecoilMult = 1.5
    ATT.ShootVolumeMult = 130 / 125
    ATT.Firemodes = {
        {
            Mode = 1,
        },
    }

    ATT.ShellModel = "models/weapons/arccw/uc_shells/366tkm.mdl"
    ATT.ShellScale = .666
    ATT.ActivateElements = {"cal_366"}
    ATT.TriviaHook = function(wep, trivia)
        trivia["uc.trivia.calibre2"] = "ur.calibre.366"
        trivia["uc.trivia.manufacturer1"] = "ur.manufacturer.molot"
        return trivia
    end

    local path = ")weapons/arccw_ur/ak/"
    ATT.ShootSound = {path .. "fire_366_1.ogg", path .. "fire_366_2.ogg", path .. "fire_366_3.ogg"}
    ATT.ShootSoundSilenced = path .. "fire_sup_1.ogg"

    ARC9.LoadAttachment(ATT, "ur_ak_cal_366")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_545")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/uc_bullets/545x39.png", "mips smooth")
    ATT.Category = {"ur_ak_cal"}
    ATT.SortOrder = 10
    ATT.Ammo = "smg1"
    ATT.RangeMaxMult = 1.2
    ATT.RangeMinMult = 1.2
    ATT.RPMMult = 1.083
    ATT.SpeedMultSights = 1.05
    ATT.ReloadTimeMult = .95
    ATT.RecoilMult = .85
    ATT.SpreadMult = .85
    ATT.UC_HipDispersionMult = .75
    ATT.PenetrationMult = .65
    ATT.DamageMinMult = .8
    ATT.DamageMaxMult = .8
    ATT.ShellModel = "models/weapons/arccw/uc_shells/545x39.mdl"
    ATT.ShellScale = 0.666
    ATT.ActivateElements = {"mag_545_30", "cal_545"}
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur.calibre.545")
    local path = ")weapons/arccw_ur/ak/545_39/"
    ATT.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
    ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/556x45/"
    ATT.DistantShootSound = {tail .. "fire-dist-556x45-rif-ext-01.ogg", tail .. "fire-dist-556x45-rif-ext-02.ogg", tail .. "fire-dist-556x45-rif-ext-03.ogg", tail .. "fire-dist-556x45-rif-ext-04.ogg", tail .. "fire-dist-556x45-rif-ext-05.ogg", tail .. "fire-dist-556x45-rif-ext-06.ogg"}
    ATT.UC_DefaultSlots = {
        [6] = {
            Name = "uc.default.30_round_mag",
            Icon = Material("entities/att/ur_ak/magazines/545_30.png", "smooth mips")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_ak_cal_545")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_556")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
    ATT.Category = {"ur_ak_cal"}
    ATT.SortOrder = 10
    ATT.Ammo = "smg1"
    ATT.RangeMaxMult = 1.5
    ATT.RangeMinMult = 1.5
    ATT.SpeedMultSights = 1.05
    ATT.ReloadTimeMult = 0.95
    ATT.RecoilMult = 0.65
    ATT.SpreadMult = 0.6
    ATT.UC_HipDispersionMult = .75
    ATT.PenetrationMult = 12 / 16
    ATT.DamageMinMult = 20 / 25
    ATT.DamageMaxMult = 34 / 50
    ATT.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
    ATT.ShellScale = .666
    ATT.ActivateElements = {"mag_556_30", "cal_556"}
    ATT.TriviaHook = function(wep, trivia)
        trivia["uc.trivia.calibre2"] = "uc.calibre.5_56x45mm_nato"
        trivia["uc.trivia.country4"] = "ur.country.russia"
        return trivia
    end

    local path = ")weapons/arccw_ur/ak/556/"
    ATT.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
    ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/556x45/"
    ATT.DistantShootSound = {tail .. "fire-dist-556x45-rif-ext-01.ogg", tail .. "fire-dist-556x45-rif-ext-02.ogg", tail .. "fire-dist-556x45-rif-ext-03.ogg", tail .. "fire-dist-556x45-rif-ext-04.ogg", tail .. "fire-dist-556x45-rif-ext-05.ogg", tail .. "fire-dist-556x45-rif-ext-06.ogg"}
    ATT.UC_DefaultSlots = {
        [6] = {
            Name = "uc.default.30_round_mag",
            Icon = Material("entities/att/ur_ak/magazines/556_30.png", "smooth mips")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_ak_cal_556")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_9mm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "mips smooth")
    ATT.Category = {"ur_ak_cal"}
    ATT.SortOrder = 9
    ATT.RangeMaxMult = 0.6
    ATT.RangeMinMult = 0.6
    ATT.RPMMult = 1.178
    ATT.ReloadTimeMult = .95
    ATT.RecoilMult = .35
    ATT.SpreadMult = .85
    ATT.UC_HipDispersionMult = .75
    ATT.ShootPitchMult = 90 / 100
    ATT.PenetrationMult = 0.125
    ATT.DamageMinMult = 0.85
    ATT.DamageMaxMult = 0.64
    ATT.Ammo = "pistol"
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.PistolShellSoundsTable
    ATT.ActivateElements = {"mag_9mm", "cal_9mm"}
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.submachine_gun" end
    ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_9mm" end end
    ATT.TriviaHook = function(wep, trivia)
        trivia["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum"
        trivia["uc.trivia.mechanism3"] = "ur.mechanism.blowback"
        return trivia
    end

    local path = ")weapons/arccw_ur/ak/9mm/"
    local firepath = ")weapons/arccw_ur/1911/"
    ATT.ShootSound = {firepath .. "fire-9-01.ogg", firepath .. "fire-9-02.ogg", firepath .. "fire-9-03.ogg", firepath .. "fire-9-04.ogg", firepath .. "fire-9-05.ogg", firepath .. "fire-9-06.ogg"}
    ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/9x19/"
    ATT.DistantShootSound = {tail .. "fire-dist-9x19-pistol-ext-01.ogg", tail .. "fire-dist-9x19-pistol-ext-02.ogg", tail .. "fire-dist-9x19-pistol-ext-03.ogg", tail .. "fire-dist-9x19-pistol-ext-04.ogg", tail .. "fire-dist-9x19-pistol-ext-05.ogg", tail .. "fire-dist-9x19-pistol-ext-06.ogg"}
    ATT.UC_DefaultSlots = {
        [6] = {
            Name = "uc.default.30_round_mag",
            Icon = Material("entities/att/ur_ak/magazines/9_30.png", "smooth mips")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_ak_cal_9mm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_charm_tl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/aksidemount.png", "smooth mips")
    ATT.Category = "ur_ak_charm"
    ATT.Free = true
    ATT.ActivateElements = {"ak_norail"}
    -- Attachment elements follow weapon elements, so this mount wins over short-barrel offsets.
    ATT.Element = {
        AttPosMods = {
            [8] = {
                Pos = Vector(0.95, 2.5, 4.05),
                Ang = Angle(0, -90, 125)
            },
        },
    }

    ATT.Sights = {
        {
            Pos = Vector(0, 20, -6),
            Ang = Angle(0, 0, -25),
            UC_GlobalAng = true,
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    }

    ATT.SortOrder = 998
    ATT.RequireElements = {{"tac"}}

    ARC9.LoadAttachment(ATT, "ur_ak_charm_tl")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cover_alpha")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/dustcover_alpha.png", "mips smooth")
    ATT.Category = {"ur_ak_cover"}
    ATT.Free = true
    ATT.ActivateElements = {"cover_alpha", "cover_rail"}
    ATT.ExcludeElements = {"ak_barrelkrinkov", "ak_norail"}

    ARC9.LoadAttachment(ATT, "ur_ak_cover_alpha")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cover_smooth")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/dustcover_ribbed.png", "mips smooth")
    ATT.Category = {"ur_ak_cover"}
    ATT.Free = true
    ATT.ActivateElements = {"cover_ribbed"}

    ARC9.LoadAttachment(ATT, "ur_ak_cover_smooth")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_cover_truniun_rail")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/dustcover_mount.png", "mips smooth")
    ATT.Category = {"ur_ak_cover"}
    ATT.Free = true
    ATT.CustomCons = {
        ["ur.ak.obstructed_irons"] = "",
    }

    ATT.ActivateElements = {"cover_trail", "cover_rail"}
    ATT.ExcludeElements = {"ak_barrelkrinkov", "ak_norail"}

    ARC9.LoadAttachment(ATT, "ur_ak_cover_truniun_rail")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_grip_alpha")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/grip_helix.png", "mips smooth")
    ATT.Category = {"ur_ak_grip"}
    ATT.RecoilMult = 1.05
    ATT.SpeedMultSights = 1.05
    ATT.ActivateElements = {"grip_alpha"}

    ARC9.LoadAttachment(ATT, "ur_ak_grip_alpha")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_grip_type3")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/grip_3.png", "mips smooth")
    ATT.Category = {"ur_ak_grip"}
    ATT.RecoilMult = 0.95
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.ActivateElements = {"grip_akm"}

    ARC9.LoadAttachment(ATT, "ur_ak_grip_type3")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_74m")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/handguards/poly.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.SortOrder = 16
    ATT.SwayMult = 0.9
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.RecoilMult = 1.1
    ATT.ToggleStats = {
        {
            PrintName = "ur.toggle.black",
            ActivateElements = {"barrel_74m"},
        },
        {
            PrintName = "ur.toggle.plum",
            ActivateElements = {"barrel_74m_red"},
        },
        {
            PrintName = "ur.toggle.olive",
            ActivateElements = {"barrel_74m_green"},
        },
    }

    ARC9.LoadAttachment(ATT, "ur_ak_hg_74m")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_alpha")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/handguards/alpha.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.SortOrder = 15.9
    ATT.SwayMult = 1.15
    ATT.SpeedMultSights = 1.15
    ATT.RecoilMult = 1.08
    ATT.ActivateElements = {"barrel_alpha", "ak_railedguard", "nodong"}
    ATT.LHIK = true
    ATT.ModelOffset = Vector(-22, -3.4, 3.3)
    ATT.Model = "models/weapons/arccw/ak_lhik_u.mdl"
    ATT.UC_ModelAngleOffset = Angle(5, 0, 0)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)

    ARC9.LoadAttachment(ATT, "ur_ak_hg_alpha")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_dong")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/dong.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }

    ATT.SortOrder = 16
    ATT.RecoilMult = .82
    ATT.AimDownSightsTimeMult = 1.12
    ATT.SprintToFireTimeMult = 1.12
    ATT.UC_MoveDispersionMult = 1.25
    ATT.ActivateElements = {"barrel_dong", "ak_noubs"}
    ATT.LHIK = true
    ATT.ModelOffset = Vector(-23, -2.6, 3.8)
    ATT.Model = "models/weapons/arccw/ak_lhik_dong.mdl"
    ATT.HoldType = "smg"

    ARC9.LoadAttachment(ATT, "ur_ak_hg_dong")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_rpk74m")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/handguards/rpk.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.SortOrder = 16
    ATT.SwayMult = .8
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.RecoilMult = 0.9
    ATT.ActivateElements = {"barrel_rpk74m"}

    ARC9.LoadAttachment(ATT, "ur_ak_hg_rpk74m")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_type3")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/handguards/vintage.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.SortOrder = 16
    ATT.RecoilMult = 1.05
    ATT.SpeedMultSights = 1.08
    ATT.ActivateElements = {"barrel_akm"}

    ARC9.LoadAttachment(ATT, "ur_ak_hg_type3")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_hg_vepr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/handguards/vepr.png", "mips smooth")
    ATT.Category = {"ur_ak_hg"}
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }

    ATT.SpeedMultSights = 0.75
    ATT.UC_HipDispersionMult = 1.25
    ATT.SwayMult = 0.7
    ATT.RecoilMult = 0.75
    ATT.ActivateElements = {"ur_ak_hg_vepr", "ak_noubs"}
    ATT.ExcludeElements = {"ur_ak_barrel_rpk"}

    ARC9.LoadAttachment(ATT, "ur_ak_hg_vepr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_545_45")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/545_45.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }

    ATT.SortOrder = 45
    ATT.ClipSize = 45
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.5
    ATT.RecoilRandomSideMult = 1.2
    ATT.SpeedMult = 0.95
    ATT.SpeedMultShooting = 0.9
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.85
    ATT.UC_MalfunctionVarianceMult = 1.5
    ATT.UC_HipDispersionMult = 1.25
    ATT.ActivateElements = {"mag_545_45"}
    ATT.RequireElements = {{"cal_545"}}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_545_45")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_545_black")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/545_30_b.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.SortOrder = 99
    ATT.ActivateElements = {"mag_545_black"}
    ATT.RequireElements = {{"cal_545"}}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_545_black")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_10")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/366_10.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.SortOrder = 10
    ATT.ClipSize = 10
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.ReloadTimeMult = 0.85
    ATT.SwayMult = 0.5
    ATT.SpeedMult = 1.025
    ATT.SpeedMultShooting = 1.05
    ATT.UC_HipDispersionMult = 0.75
    ATT.MalfunctionMeanShotsToFailMult = 1.6
    ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_10rnd" end end
    ATT.ActivateElements = {"mag_366"}
    ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_12g", "cal_308", "cal_556"}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_762_10")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_75")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/762_75.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }

    ATT.SortOrder = 75
    ATT.ClipSize = 75
    ATT.AimDownSightsTimeMult = 1.3
    ATT.SprintToFireTimeMult = 1.3
    ATT.ReloadTimeMult = 1.25
    ATT.SwayMult = 2.5
    ATT.SpeedMult = 0.9
    ATT.SpeedMultShooting = 0.8
    ATT.DeployTimeMult = 1.2
    ATT.RecoilRandomSideMult = 1.1
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.7
    ATT.UC_MalfunctionVarianceMult = 1.5
    ATT.UC_HipDispersionMult = 1.5
    ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_75" end end
    ATT.ActivateElements = {"mag_762_75", "mag_drum"}
    ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_366", "cal_556"}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_762_75")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_bakelite")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/762_b.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.SortOrder = 30
    ATT.ActivateElements = {"mag_762_bakelite"}
    ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_12g", "cal_308", "cal_556"}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_762_bakelite")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_pmag")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/magazines/762_p.png", "mips smooth")
    ATT.Category = {"ur_ak_mag"}
    ATT.SortOrder = 30
    ATT.ActivateElements = {"mag_762_pmag"}
    ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_12g", "cal_308", "cal_556"}

    ARC9.LoadAttachment(ATT, "ur_ak_mag_762_pmag")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_muzzle_ak74")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/muzzle_74m.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.RecoilMult = .95
    ATT.RecoilRandomSideMult = .65
    ATT.BarrelLengthAdd = 2.5
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SwayMult = 1.25
    ATT.SortOrder = 999
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.ActivateElements = {"muzzle_ak74"}
    ATT.ExcludeElements = {"ak_barrelchange", "cal_545", "cal_556"}

    ARC9.LoadAttachment(ATT, "ur_ak_muzzle_ak74")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_muzzle_akm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/muzzle_m.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.RecoilMult = .9
    ATT.RecoilRandomSideMult = .95
    ATT.BarrelLengthAdd = 1
    ATT.AimDownSightsTimeMult = 1.025
    ATT.SprintToFireTimeMult = 1.025
    ATT.SwayMult = 1.05
    ATT.ShootVolumeMult = 1.1
    ATT.SortOrder = 998
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.ActivateElements = {"muzzle_akm"}
    ATT.ExcludeElements = {"ak_barrelchange"}
    ATT.RequireElements = {{"cal_default"}}
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "ur_ak_muzzle_akm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_muzzle_bayonet")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/acwatt_ur_ak_muzzle_bayonet.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.SortOrder = 997
    ATT.BashRangeAdd = 16
    ATT.BashDamageMult = 3.5
    ATT.UC_MeleeWaitTimeMult = 2
    ATT.BarrelLengthAdd = 10
    ATT.SwayMult = 1.4
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.UC_MeleeTimeMult = 1.1
    ATT.UC_Bayonet = true
    ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "bash" then return "bash_bayonet" end end
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.ActivateElements = {"muzzle_bayonet", "ak_bayonet2"}
    ATT.ExcludeElements = {"ak_barrelchange", "ak_bayonet1"}

    ARC9.LoadAttachment(ATT, "ur_ak_muzzle_bayonet")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_ak74m")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/n.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 1
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ExcludeElements = {"mag_drum"}
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            AimDownSightsTimeMult = 0.95,
            SprintToFireTimeMult = 0.95,
            SwayMult = 1.2,
            ActivateElements = {"stock_ak74m"},
        },
        {
            PrintName = "ur.toggle.folded",
            AimDownSightsTimeMult = 0.85,
            SprintToFireTimeMult = 0.85,
            DeployTimeMult = 0.9,
            RecoilMult = 1.25,
            RecoilRandomSideMult = 1.75,
            SpeedMultSights = 1.05,
            SpeedMultShooting = 1.05,
            BarrelLengthAdd = -9,
            SwayMult = 2.5,
            ActivateElements = {"stock_ak74m_folded"},
        }
    }

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_ak_stock_ak74m")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_aks")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/fold.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 1
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ExcludeElements = {"mag_drum"}
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            AimDownSightsTimeMult = .8,
            SprintToFireTimeMult = .8,
            RecoilRandomSideMult = 1.25,
            SwayMult = 1.2,
            SpeedMultSights = 1.05,
            ActivateElements = {"stock_aks"},
        },
        {
            PrintName = "ur.toggle.folded",
            AimDownSightsTimeMult = 0.6,
            SprintToFireTimeMult = 0.6,
            DeployTimeMult = 0.85,
            RecoilMult = 1.5,
            RecoilRandomSideMult = 2,
            SpeedMultSights = 1.2,
            SpeedMultShooting = 1.15,
            BarrelLengthAdd = -9,
            SwayMult = 3,
            ActivateElements = {"stock_aks_folded"},
        }
    }

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_ak_stock_aks")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_alpha")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/helix.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 2
    ATT.SpeedMultShooting = 1.1
    ATT.SpeedMultSights = 1.15
    ATT.RecoilRandomSideMult = 1.5
    ATT.SwayMult = 1.25
    ATT.BarrelLengthAdd = -2
    ATT.ActivateElements = {"stock_alpha"}

    ARC9.LoadAttachment(ATT, "ur_ak_stock_alpha")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_none")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("arccw/hud/atts/default.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.Free = true
    ATT.SortOrder = -1
    ATT.AimDownSightsTimeMult = 0.5
    ATT.SprintToFireTimeMult = 0.5
    ATT.DeployTimeMult = 0.6
    ATT.RecoilMult = 1.65
    ATT.RecoilRandomSideMult = 1.95
    ATT.SpeedMultSights = 1.25
    ATT.SpeedMult = 1.1
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -9
    ATT.SwayMult = 3
    ATT.ActivateElements = {"stock_none"}

    ARC9.LoadAttachment(ATT, "ur_ak_stock_none")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_rpk")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/rpk.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 3
    ATT.RecoilMult = .85
    ATT.SwayMult = .75
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMult = .9
    ATT.ActivateElements = {"stock_rpk"}

    ARC9.LoadAttachment(ATT, "ur_ak_stock_rpk")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_skeletal")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/saiga.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 2
    ATT.AimDownSightsTimeMult = .8
    ATT.SprintToFireTimeMult = .8
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMult = 1.05
    ATT.SwayMult = 1.1
    ATT.RecoilMult = 1.35
    ATT.RecoilRandomSideMult = 1.15
    ATT.ActivateElements = {"stock_skeletal"}
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "ur_ak_stock_skeletal")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_type3")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/3.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 4
    ATT.RecoilMult = .9
    ATT.AimDownSightsTimeMult = .95
    ATT.SprintToFireTimeMult = .95
    ATT.SwayMult = 1.25
    ATT.UC_HipDispersionMult = 1.05
    ATT.ActivateElements = {"stock_akn"}

    ARC9.LoadAttachment(ATT, "ur_ak_stock_type3")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_underfolder")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/under.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.SortOrder = 1
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            AimDownSightsTimeMult = .8,
            SprintToFireTimeMult = .8,
            RecoilRandomSideMult = 1.35,
            SwayMult = 1.25,
            SpeedMultSights = 1.1,
            SpeedMult = 1.025,
            ActivateElements = {"stock_underfolder"},
        },
        {
            PrintName = "ur.toggle.folded",
            AimDownSightsTimeMult = 0.6,
            SprintToFireTimeMult = 0.6,
            DeployTimeMult = 0.85,
            RecoilMult = 1.5,
            RecoilRandomSideMult = 2,
            SpeedMultSights = 1.2,
            SpeedMultShooting = 1.15,
            BarrelLengthAdd = -9,
            SwayMult = 3,
            ActivateElements = {"stock_underfolder_folded"},
        }
    }

    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_ak_stock_underfolder")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_vepr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_ak/stock/vepr.png", "mips smooth")
    ATT.Category = {"ur_ak_stock"}
    ATT.CustomCons = {
        ["uc.nogrip"] = "",
    }

    ATT.SortOrder = 3
    ATT.RecoilMult = 0.85
    ATT.SwayMult = 0.5
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SpeedMult = 0.95
    ATT.SpeedMultSights = 0.8
    ATT.ActivateElements = {"stock_vepr"}

    ARC9.LoadAttachment(ATT, "ur_ak_stock_vepr")
end
