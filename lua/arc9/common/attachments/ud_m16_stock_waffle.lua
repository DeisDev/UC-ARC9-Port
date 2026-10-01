ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_waffle")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"stock_231_tube"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_waffle.png", "smooth mips")
ATT.Category = {"go_stock", "ud_m16_stock"}
ATT.Model = "models/weapons/arccw/atts/fesiug_stock_waffle.mdl"
ATT.ModelOffset = Vector(4.25, 0, 1.7)
ATT.Scale = 1.14
ATT.SortOrder = 6
ATT.SwayMult = 1.25
ATT.SpeedMultSights = 1.1
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ModelOffset = Vector(3.0, 0, 1.7),
    },
    {
        PrintName = "uc.toggle.collapsed",
        ModelOffset = Vector(5.0, 0, 1.7),
        RecoilRandomSideMult = 1.25,
        BarrelLengthAdd = -4,
        AimDownSightsTimeMult = 0.9,
        SprintToFireTimeMult = 0.9,
    }
}
ATT.ToggleOnF = true
