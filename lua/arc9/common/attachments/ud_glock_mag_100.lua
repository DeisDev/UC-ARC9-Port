ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_100")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_glock_100_mag"}

ATT.SortOrder = 100
ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_100.png", "smooth mips")
ATT.Category = "ud_glock_mag"
ATT.SpeedMult = 0.95
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.ReloadTimeMult = 1.5
ATT.ClipSize = 100
ATT.UC_HipDispersionMult = 1.5
ATT.SwayMult = 3
ATT.SpeedMultShooting = 0.9
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_100"
    end
    if anim == "fix" then
        return anim .. "_100"
    end
end

ATT.UC_MalfunctionVarianceMult = 1.5
