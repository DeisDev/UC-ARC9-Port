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
    },
}
ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/reticles/ud_holo.png", "mips smooth")
ATT.HoloSightSize = ARC9.UC.HoloSize(1.1)
ATT.HoloSightColorable = true
ATT.SpeedMultSights = 0.9
