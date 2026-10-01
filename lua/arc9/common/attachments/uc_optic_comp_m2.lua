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
    },
}
ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
ATT.HoloSightSize = ARC9.UC.HoloSize(1.5)
ATT.HoloSightColorable = true
ATT.SpeedMultSights = .9
