ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_ch")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
ATT.ExcludeElements = {"ud_m16_retro"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_ch.png", "mips smooth")
ATT.Category = "ud_m16_rs"
ATT.UC_RailPosition = 0.64
ATT.SortOrder = 1000
ATT.Free = true
ATT.UC_IronSight = true
ATT.IronSights = {
    Pos = Vector(-2.80, 0, 1.11),
    Ang = Angle(0.4, 0, 0),
    Magnification = 1.1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}
ATT.Model = "models/weapons/arccw/atts/colt_ch.mdl"
ATT.ModelOffset = Vector(-2.2, -0.004, 0)
ATT.Scale = 0.78
