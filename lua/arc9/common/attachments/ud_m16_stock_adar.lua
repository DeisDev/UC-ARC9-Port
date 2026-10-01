ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_adar")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.nogrip"] = "",
}
ATT.ActivateElements = {"stock_adar", "m16_adar"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_adar.png", "smooth mips")
ATT.Category = "ud_m16_stock"
ATT.UC_DefaultSlots = {
    [9] = {Name = "uc.default.integral_grip", Icon = ATT.Icon},
}
ATT.SortOrder = 10
ATT.SwayMult = 0.5
ATT.RecoilMult = 0.8
ATT.RecoilRandomSideMult = 0.75
ATT.SpeedMult = 0.95
ATT.SpeedMultSights = .8
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
