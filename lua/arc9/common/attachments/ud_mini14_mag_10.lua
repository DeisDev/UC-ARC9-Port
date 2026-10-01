ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_10")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_10"}
ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

ATT.SortOrder = 10
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.ReloadTimeMult = 0.9
ATT.ClipSize = 10
ATT.SwayMult = 0.75
ATT.SpreadMultHipFire = 0.7
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_10"
    end
end
