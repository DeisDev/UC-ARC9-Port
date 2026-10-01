ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_20")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_mag_20"}
ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

ATT.SortOrder = 20
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 20
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.ReloadTimeMult = 0.9
ATT.SwayMult = 0.75
ATT.SpeedMult = 1.025
ATT.SpeedMultSights = 1.05
ATT.SpeedMultShooting = 1.05
ATT.MalfunctionMeanShotsToFailMult = 1.5
ATT.SpreadMultHipFire = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_20"
    end
end
