ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_100")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_m16_mag_100", "patr5"}
ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

ATT.SortOrder = 100
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_100.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 100
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.ReloadTimeMult = 1.5
ATT.SwayMult = 3
ATT.SpeedMult = 0.9
ATT.SpeedMultShooting = 0.8
ATT.DeployTimeMult = 1.25
ATT.SpreadMultHipFire = 1.5
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_100"
    end
end

ATT.UC_MalfunctionVarianceMult = 1.5
