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
