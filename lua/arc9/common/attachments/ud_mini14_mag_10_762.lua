ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_10_762")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_10"}
ATT.RequireElements = {{"mini14_762"}}

ATT.SortOrder = 10
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.ReloadTimeMult = 0.9
ATT.ClipSize = 10
ATT.SwayMult = 0.75
ATT.MalfunctionMeanShotsToFailMult = 1.5
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_10"
    end
end
