ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_42")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_42"}
ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

ATT.SortOrder = 30
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.ClipSize = 42
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.ReloadTimeMult = 1.25
ATT.SwayMult = 1.75
ATT.SpeedMult = 0.975
ATT.SpeedMultShooting = 0.925
ATT.DeployTimeMult = 1.15
ATT.UC_HipDispersionMult = 1.25
ATT.Ignore = true
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_30_tac"
    end
end
