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
