ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_kac")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
ATT.ExcludeElements = {"ud_m16_retro"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth")
ATT.Category = "ud_m16_rs"
ATT.SortOrder = 1000
ATT.Free = true
ATT.UC_IronSight = true
ATT.IronSights = {
    Pos = Vector(-2.8, 0, 0.9),
    Ang = Angle(0.9, 0, 0),
    Magnification = 1.1
}
ATT.Model = "models/weapons/arccw/atts/kac_rs.mdl"
ATT.ModelOffset = Vector(-1.5, -0.01, -0.09)
ATT.Scale = 0.9
