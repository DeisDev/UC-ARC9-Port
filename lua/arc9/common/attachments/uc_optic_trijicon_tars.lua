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
