ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30_762")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_30_762"}
ATT.RequireElements = {{"mini14_762"}}

ATT.SortOrder = 30
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_762.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.ReloadTimeMult = 1.2
ATT.ClipSize = 30
ATT.SwayMult = 1.5
ATT.SpeedMultShooting = 0.95
ATT.MalfunctionMeanShotsToFailMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_762"
    end
end
