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
    },
}
ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/reticles/uc_reddot.png", "mips smooth")
ATT.HoloSightSize = ARC9.UC.HoloSize(2)
ATT.HoloSightColorable = true
ATT.SpeedMultSights = .95
