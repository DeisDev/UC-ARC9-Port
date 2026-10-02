ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_75")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/magazines/762_75.png", "mips smooth")
ATT.Category = {"ur_ak_mag"}
ATT.CustomCons = {
    ["uc.jam"] = "",
}

ATT.SortOrder = 75
ATT.ClipSize = 75
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3
ATT.ReloadTimeMult = 1.25
ATT.SwayMult = 2.5
ATT.SpeedMult = 0.9
ATT.SpeedMultShooting = 0.8
ATT.DeployTimeMult = 1.2
ATT.RecoilRandomSideMult = 1.1
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.7
ATT.UC_MalfunctionVarianceMult = 1.5
ATT.UC_HipDispersionMult = 1.5
ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_75" end end
ATT.ActivateElements = {"mag_762_75", "mag_drum"}
ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_366", "cal_556"}
