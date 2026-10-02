ATT.PrintName = ARC9.UC.AttName("ur_ak_mag_762_10")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/magazines/366_10.png", "mips smooth")
ATT.Category = {"ur_ak_mag"}
ATT.SortOrder = 10
ATT.ClipSize = 10
ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.8
ATT.ReloadTimeMult = 0.85
ATT.SwayMult = 0.5
ATT.SpeedMult = 1.025
ATT.SpeedMultShooting = 1.05
ATT.UC_HipDispersionMult = 0.75
ATT.MalfunctionMeanShotsToFailMult = 1.6
ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_10rnd" end end
ATT.ActivateElements = {"mag_366"}
ATT.ExcludeElements = {"cal_545", "cal_9mm", "cal_12g", "cal_308", "cal_556"}
