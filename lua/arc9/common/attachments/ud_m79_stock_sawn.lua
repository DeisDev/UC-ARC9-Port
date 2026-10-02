ATT.PrintName = ARC9.UC.AttName("ud_m79_stock_sawn")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.sightdisp.50"] = "",
}
ATT.ActivateElements = {"m79_nostock"}

ATT.Icon = Material("entities/att/acwatt_ud_m79_stock_sawn.png", "smooth mips")
ATT.Category = "ud_m79_stock"
ATT.Free = true
ATT.UC_SightsDispersionAdd = 50 * ARC9.UC.Dispersion
ATT.RecoilMult = 1.5
ATT.RecoilRandomSideMult = 1.5
ATT.SwayMult = 3
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.UC_HipDispersionMult = 0.75
ATT.SpeedMult = 1.05
ATT.SpeedMultSights = 1.1
ATT.SpeedMultShooting = 1.1
ATT.DeployTimeMult = 0.5
ATT.ActivePos = Vector(0.5, 2, 1.5)
