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
