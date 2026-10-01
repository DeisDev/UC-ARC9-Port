ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_30"}
ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

ATT.SortOrder = 30
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.15
ATT.ClipSize = 30
ATT.SwayMult = 1.5
ATT.SpeedMultShooting = 0.95
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_30"
    end
end
