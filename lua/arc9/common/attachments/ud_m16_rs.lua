ATT.PrintName = ARC9.UC.AttName("ud_m16_rs")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
ATT.ExcludeElements = {"ud_m16_retro"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "smooth mips")
ATT.Category = "ud_m16_rs"
ATT.SortOrder = 1000
ATT.Free = true
ATT.UC_IronSight = true
ATT.IronSights = {
    Pos = Vector(-2.80, 0, 0.85),
    Ang = Angle(1.05, 0, 0),
    Magnification = 1.1
}
ATT.Model = "models/weapons/arccw/atts/sig_rs.mdl"
ATT.ModelOffset = Vector(-2, -0.002, 0)
ATT.Scale = 0.86
