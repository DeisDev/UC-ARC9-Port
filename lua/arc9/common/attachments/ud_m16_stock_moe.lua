ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_moe")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"stock_231_tube"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_moe.png", "smooth mips")
ATT.Category = {"go_stock", "ud_m16_stock"}
ATT.Model = "models/weapons/arccw/atts/stock_moe_b.mdl"
ATT.ModelOffset = Vector(-0.57, 0, 0.342)
ATT.Scale = 0.74
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.SortOrder = 6
ATT.SwayMult = 1.1
ATT.SpeedMultSights = 1.075
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ModelOffset = Vector(-1.5, 0, 0.342),
    },
    {
        PrintName = "uc.toggle.collapsed",
        ModelOffset = Vector(0, 0, 0.342),
        RecoilRandomSideMult = 1.5,
        BarrelLengthAdd = -4,
        AimDownSightsTimeMult = 0.9,
        SprintToFireTimeMult = 0.9,
        SpeedMultShooting = 1.05,
    }
}
ATT.ToggleOnF = true
