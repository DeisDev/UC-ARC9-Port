ATT.PrintName = ARC9.UC.AttName("ur_mp5_mag_50")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 10
ATT.Icon = Material("entities/att/ur_mp5/mag50.png", "smooth mips")
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.Category = "ur_mp5_mag"

ATT.ClipSize = 50

ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.ReloadTimeMult = 1.15
ATT.SpeedMult = 0.93
ATT.DeployTimeMult = 1.2
ATT.SwayMult = 1.7
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.85
ATT.UC_MalfunctionVarianceMult = 1.5

ATT.UC_HipDispersionMult = 1.5

ATT.ExcludeElements = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

ATT.ActivateElements = {"ur_mp5_mag_50", "ur_mp5_50_mag"}
