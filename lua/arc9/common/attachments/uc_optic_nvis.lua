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
