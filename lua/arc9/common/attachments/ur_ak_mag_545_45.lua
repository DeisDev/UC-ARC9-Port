ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_545_45")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/magazines/545_45.png", "mips smooth")
ATT.Category = {"ur_ak_mag"}
ATT.CustomCons = {
    ["uc.jam"] = "",
}

ATT.SortOrder = 45
ATT.ClipSize = 45
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.ReloadTimeMult = 1.15
ATT.SwayMult = 1.5
ATT.RecoilRandomSideMult = 1.2
ATT.SpeedMult = 0.95
ATT.SpeedMultShooting = 0.9
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.85
ATT.UC_MalfunctionVarianceMult = 1.5
ATT.UC_HipDispersionMult = 1.25
ATT.ActivateElements = {"mag_545_45"}
ATT.RequireElements = {{"cal_545"}}
