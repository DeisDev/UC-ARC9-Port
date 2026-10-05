do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_acog")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_acog.png", "mips smooth")
    ATT.SortOrder = 4
    ATT.Category = {"optic", "ud_optic", "ud_acog"}
    ATT.Model = "models/weapons/arccw/atts/ud_acog.mdl"
    ATT.ModelOffset = Vector(0, 0, 0)
    ATT.Scale = 1.15
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Sights = {
        {
            Pos = Vector(0, 8, -1.48),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 38,
        },
        {
            Pos = Vector(-0.005, 11, -2.632),
            Ang = Angle(-1, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            ExtraSightData = {
                RTScope = false,
            },
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = 1
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(4)
    ATT.RTScopeReticle = Material("hud/scopes/uc_acog_reticle.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(11, 8)
    ATT.RTScopeColorable = true
    ATT.SpeedMultSights = 0.75

    ARC9.LoadAttachment(ATT, "uc_optic_acog")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_annihilator")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.base.con.beam"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_annihilator.png", "mips smooth")
    ATT.Category = {"ur_deagle_tritium"} -- Deagle exclusive until we figure out the problem with the model
    ATT.SortOrder = 998 -- Remove when att becomes universal
    ATT.Model = "models/weapons/arccw/atts/ur_annihilator_laser.mdl"
    ATT.ModelOffset = Vector(-6,0,-3.5) -- Will need to change when the model recompiles
    ATT.Scale = 0.933
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SpeedMult = 0.975
    ATT.Sights = {
        {
            Pos = Vector(0, 14, -5.12),
            Ang = Angle(-.2, 0, 0),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.LaserStrength = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Laser = true,
            LaserAttachment = 1,
            LaserColor = Color(50, 255, 50),
            UC_HipDispersionMult = 0.75,
            UC_MoveDispersionMult = 0.6,
            AimDownSightsTimeMult = 0.85,
            SprintToFireTimeMult = 0.85,
        },
        {
            PrintName = "uc.toggle.off",
            Laser = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_optic_annihilator")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_comp_m2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_comp_m2.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_comp_m2.mdl"
    ATT.ModelOffset = Vector(0, 0, 0)
    ATT.Scale = 0.9
    ATT.Sights = {
        {
            Pos = Vector(0, 9, -1.5),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .9

    ARC9.LoadAttachment(ATT, "uc_optic_comp_m2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_elcan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_elcan.png", "mips smooth")
    ATT.SortOrder = 2.5
    ATT.Category = {"optic", "ud_optic", "ud_acog"}
    ATT.Model = "models/weapons/arccw/atts/uc_gso_elcan.mdl"
    ATT.ModelOffset = Vector(0, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Sights = {
        {
            Pos = Vector(0, 8, -1.51577),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 38,
        },
        {
            Pos = Vector(0, 11, -2.62),
            Ang = Angle(-0.25, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            ExtraSightData = {
                RTScope = false,
            },
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = 2
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(2.5)
    ATT.RTScopeReticle = Material("hud/scopes/uc_elcan.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(11.5, 8)
    ATT.RTScopeColorable = true
    ATT.SpeedMultSights = 0.75

    ARC9.LoadAttachment(ATT, "uc_optic_elcan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_eotech552")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_eotech552.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = "optic"
    ATT.Model = "models/weapons/arccw/atts/uc_eotech552.mdl"
    ATT.ModelOffset = Vector(-0.5, 0, 0)
    ATT.Scale = 0.67
    ATT.Sights = {
        {
            Pos = Vector(0, 8.5, -1.38),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/ud_holo.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.1)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = 0.9

    ARC9.LoadAttachment(ATT, "uc_optic_eotech552")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_eotech553")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_eotech553.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = "optic"
    ATT.Model = "models/weapons/arccw/atts/uc_gso_eotech.mdl"
    ATT.ModelOffset = Vector(-0.5, 0, 0.05)
    ATT.Scale = 1.3
    ATT.Sights = {
        {
            Pos = Vector(0, 8.5, -1.48),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/ud_holo.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.1)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = 0.9

    ARC9.LoadAttachment(ATT, "uc_optic_eotech553")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_hamr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_hamr.png", "mips smooth")
    ATT.SortOrder = 3
    ATT.Category = {"optic", "ud_optic", "ud_acog"}
    ATT.Model = "models/weapons/arccw/atts/uc_gso_hamr.mdl"
    ATT.ModelOffset = Vector(0, 0, -0.1)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Sights = {
        {
            Pos = Vector(0, 8, -1.53),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 38,
        },
        {
            Pos = Vector(0, 8, -2.94738),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Reticle = Material("hud/reticles/uc_reddot.png", "mips smooth"),
            ExtraSightData = {
                RTScope = false,
            },
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = 1
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(3)
    ATT.RTScopeReticle = Material("hud/scopes/uc_hamr.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(11.5, 8)
    ATT.RTScopeColorable = true
    -- The top red dot. The scope sight sets no Reticle, so only the second sight draws it.
    ATT.HoloSight = true
    ATT.HoloSightSize = ARC9.UC.HoloSize(2)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = 0.75
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1

    ARC9.LoadAttachment(ATT, "uc_optic_hamr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_holosun1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_holosun1.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_holosun1.mdl"
    ATT.Scale = 1.5
    ATT.ModelOffset = Vector( -0.5, 0, 0 )
    ATT.Sights = {
        {
            Pos = Vector(0, 9, -1.5),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .9

    ARC9.LoadAttachment(ATT, "uc_optic_holosun1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_holosun2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_holosun2.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = {"optic","optic_lp"}
    ATT.Model = "models/weapons/arccw/atts/uc_holosun2.mdl"
    ATT.Scale = 1.5
    ATT.ModelOffset = Vector( -0.5, 0, 0 )
    ATT.Sights = {
        {
            Pos = Vector(0, 9, -1.5 + (0.3285 * 1.5)),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .9

    ARC9.LoadAttachment(ATT, "uc_optic_holosun2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_kobra")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }
    ATT.ExcludeElements = {"ak_norail", "cover_rail"}

    ATT.Icon = Material("entities/att/acwatt_uc_optic_kobra.png", "mips smooth")
    ATT.SortOrder = 299
    ATT.Category = {"ur_ak_optic"}
    ATT.Model = "models/weapons/arccw/atts/ur_kobra.mdl"
    ATT.ModelOffset = Vector(-2, 0, -4.55)
    local R1, R2, R3, R4 = Material("hud/reticles/uc_kobra1.png", "mips smooth"), Material("hud/reticles/uc_kobra2.png", "mips smooth"), Material("hud/reticles/uc_kobra3.png", "mips smooth"), Material("hud/reticles/uc_kobra4.png", "mips smooth")
    local function kobra(reticle)
        return {
            Pos = Vector(0, 11, -5.85),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Reticle = reticle,
        }
    end
    ATT.Sights = {kobra(R1), kobra(R2), kobra(R3), kobra(R4)}
    ATT.HoloSight = true
    ATT.HoloSightSize = ARC9.UC.HoloSize(2)
    ATT.DrawFunc = function(wep, model, wm)
        if wm then return end
        -- ARC9 reads the model's attachment table when drawing the selected reticle.
        model.atttbl.HoloSightSize = ARC9.UC.HoloSize(wep:GetSight().Reticle == R1 and 1.5 or 2)
    end
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = 0.925

    ARC9.LoadAttachment(ATT, "uc_optic_kobra")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_leupold_dppro")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_leupold_dppro.png", "mips smooth")
    ATT.SortOrder = 0.5
    ATT.Category = {"optic", "optic_lp"}
    ATT.Model = "models/weapons/arccw/atts/uc_leupold_dppro.mdl"
    -- ArcCW scaled this model per axis; ARC9 multiplies the model matrix by this vector.
    ATT.Scale = Vector(1.32, 1.56, 1.2)
    ATT.ModelOffset = Vector(0, -0.05, 0.15)
    ATT.Sights = {
        {
            Pos = Vector(-0.05, 9, -0.7),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(2)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .95

    ARC9.LoadAttachment(ATT, "uc_optic_leupold_dppro")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_micro_t1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_micro_t1.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_mirco_t1.mdl"
    ATT.ModelOffset = Vector(0,0,0.2)
    ATT.Scale = 1.2
    ATT.Sights = {
        {
            Pos = Vector(0, 9, -1.39),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .9

    ARC9.LoadAttachment(ATT, "uc_optic_micro_t1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_nvis")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
        ["uc.base.autostat.thermal"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_nvis.png", "mips smooth")
    ATT.SortOrder = 6
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_nvis.mdl"
    ATT.ModelOffset = Vector(0, 0, 0.18)
    local function thermalColor(contrast, brightness)
        return {
            ["$pp_colour_addr"] = 0,
            ["$pp_colour_addg"] = 0,
            ["$pp_colour_addb"] = 0,
            ["$pp_colour_brightness"] = brightness,
            ["$pp_colour_contrast"] = contrast,
            ["$pp_colour_colour"] = 0,
            ["$pp_colour_mulr"] = 0,
            ["$pp_colour_mulg"] = 0,
            ["$pp_colour_mulb"] = 0,
            ["$pp_colour_inv"] = 0,
        }
    end
    ATT.Sights = {
        {
            Pos = Vector(-0.035, 6.5, -1.07),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 25,
            Blur = false,
            ExtraSightData = {
                RTScopeFLIR = true,
                RTScopeFLIRCCHot = thermalColor(1, 1),
                RTScopeFLIRMonochrome = true,
                RTScopeFLIRCCCold = thermalColor(0.51, 0.1),
            },
        },
        {
            Pos = Vector(-0.035, 6.5, -1.07),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 25,
            Blur = false,
            ExtraSightData = {
                RTScopeFLIR = true,
                RTScopeFLIRCCHot = thermalColor(1, -1),
                RTScopeFLIRMonochrome = true,
                RTScopeFLIRCCCold = thermalColor(0.7, 0.5),
            },
        },
        {
            Pos = Vector(-0.035, 6.5, -1.07),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 25,
            Blur = false,
            ExtraSightData = {
                RTScopeCustomPPFunc = function(wep)
                    DrawColorModify({
                        ["$pp_colour_addr"] = 0,
                        ["$pp_colour_addg"] = 0,
                        ["$pp_colour_addb"] = 0,
                        ["$pp_colour_brightness"] = 0,
                        ["$pp_colour_contrast"] = 1,
                        ["$pp_colour_colour"] = 0.75,
                        ["$pp_colour_mulr"] = 0,
                        ["$pp_colour_mulg"] = 0,
                        ["$pp_colour_mulb"] = 0
                    })
                end,
            },
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then
        ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/uc_nvis_hsp.mdl")
    end
    ATT.RTScopeAdjustable = true
    ATT.RTScopeAdjustmentLevels = 3
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(1.5)
    ATT.RTScopeMagnificationMin = ARC9.UC.ScopeMag(1.5)
    ATT.RTScopeMagnificationMax = ARC9.UC.ScopeMag(6)
    ATT.RTScopeReticle = Material("hud/scopes/uc_nvis_reticle1grid.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(20, 6.5)
    ATT.RTScopeColorable = false
    ATT.RTScopeNew_FPSLock = 42
    -- ArcCW rendered this scope at 60% of the screen height; 648 matches a 1080p screen.
    ATT.RTScopeNew_Pixelation = 648
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMultSights = 0.7
    ATT.SwayMult = 1.25

    ARC9.LoadAttachment(ATT, "uc_optic_nvis")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_pso1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }
    ATT.ExcludeElements = {"ak_norail", "cover_rail"}

    ATT.Icon = Material("entities/att/acwatt_uc_optic_pso1.png", "mips smooth")
    ATT.SortOrder = 300
    ATT.Category = {"ur_ak_optic"}
    ATT.Model = "models/weapons/arccw/atts/ur_pso1.mdl"
    ATT.ModelOffset = Vector(-2, 0, -4.55)
    ATT.Sights = {
        {
            Pos = Vector(0, 11, -6.05),
            Ang = Angle(0, 0, 0),
            Magnification = 1.25,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Blur = false,
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then
        ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/ur_pso1_hsp.mdl")
    end
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(4)
    ATT.RTScopeReticle = Material("hud/scopes/uc_pso.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(10.5, 13)
    ATT.RTScopeColorable = true
    ATT.SpeedMultSights = .8

    ARC9.LoadAttachment(ATT, "uc_optic_pso1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_sureshot")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_sureshot.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_sureshot.mdl"
    ATT.ModelOffset = Vector(0,0,.2)
    ATT.Scale = 1.1
    ATT.Sights = {
        {
            Pos = Vector(0, 9, -1.5),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        },
    }
    ATT.HoloSight = true
    ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
    ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
    ATT.HoloSightColorable = true
    ATT.SpeedMultSights = .9

    ARC9.LoadAttachment(ATT, "uc_optic_sureshot")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_trijicon_tars")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_trijicon_tars.png", "mips smooth")
    ATT.SortOrder = 8
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_trijicon_tars.mdl"
    ATT.ModelOffset = Vector(0, 0, 0.1)
    ATT.Scale = 1.05
    ATT.Sights = {
        {
            Pos = Vector(0, 10.6, -1.41),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = 25,
            Blur = false,
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then
        ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/uc_trijicon_tars_hsp.mdl")
    end
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(3)
    ATT.RTScopeReticle = Material("hud/scopes/uc_tars_reticle.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(18, 10.6)
    ATT.RTScopeColorable = true
    ATT.RTScopeAdjustable = true
    ATT.RTScopeAdjustmentLevels = 5
    ATT.RTScopeMagnificationMin = ARC9.UC.ScopeMag(3)
    ATT.RTScopeMagnificationMax = ARC9.UC.ScopeMag(8)
    ATT.RTScopeCustomPPFunc = function(wep)
        DrawBloom(0, 0.3, 5, 5, 3, 0.5, 1, 1, 1)
        DrawSharpen(1, 1.65)
        DrawMotionBlur(0.45, 1, 1 / 45)
    end
    ATT.SpeedMultSights = .7
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1

    ARC9.LoadAttachment(ATT, "uc_optic_trijicon_tars")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_optic_vortex_3x")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_optic_vortex_3x.png", "mips smooth")
    ATT.SortOrder = 1.5
    ATT.Category = {"optic"}
    ATT.Model = "models/weapons/arccw/atts/uc_vortex3x.mdl"
    ATT.ModelOffset = Vector(0, 0, 0.18)
    ATT.Sights = {
        {
            Pos = Vector(0, 8.5, -1.42),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Blur = false,
        },
    }
    ATT.RTScope = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then
        ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/uc_vortex3x_hsp.mdl")
    end
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(1.5)
    ATT.RTScopeReticle = Material("hud/scopes/uc_vortex_reticle.png", "mips smooth")
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(8.5, 8.5)
    ATT.RTScopeColorable = true
    ATT.SpeedMultSights = .8

    ARC9.LoadAttachment(ATT, "uc_optic_vortex_3x")
end
