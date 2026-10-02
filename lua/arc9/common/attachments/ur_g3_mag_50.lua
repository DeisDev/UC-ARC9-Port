ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_50.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_mag_50.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_50.printname.variant1") end
ATT.Icon = Material("entities/att/ur_g3/mag50.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_g3_mag_50.description")
ATT.Category = {"ur_g3_mag"}
ATT.CustomCons = {
    ["uc.jam"] = "",
}

ATT.SortOrder = 15
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.75
ATT.UC_MalfunctionVarianceMult = 1.5
ATT.ClipSize = 50
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.2
ATT.SwayMult = 1.1
ATT.SpeedMult = 0.9
ATT.SpeedMultShooting = 0.85
ATT.UC_HipDispersionMult = 1.5
ATT.ExcludeElements = {"cal_556"}
ATT.ActivateElements = {"ur_g3_mag_50"}
