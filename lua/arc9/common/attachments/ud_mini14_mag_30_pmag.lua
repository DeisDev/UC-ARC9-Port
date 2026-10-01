ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30_pmag")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_42"}
ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

ATT.SortOrder = 29
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.1
ATT.ClipSize = 30
ATT.SwayMult = 1.58
ATT.SpeedMultShooting = 0.95
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_30_tac"
    end
end
