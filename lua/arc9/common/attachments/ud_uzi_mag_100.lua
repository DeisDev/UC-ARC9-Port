ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_100")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_uzi_100_mag"}
ATT.ExcludeElements = {"uzi_45", "uzi_22"}

ATT.SortOrder = 100
ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_100.png", "smooth mips")
ATT.Category = "ud_uzi_mag"
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.ReloadTimeMult = 1.4
ATT.SpeedMult = 0.9
ATT.DeployTimeMult = 1.25
ATT.ClipSize = 100
ATT.SwayMult = 2
ATT.SpeedMultShooting = 0.85
ATT.SpreadMultHipFire = 1.5
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_100"
    end
end

ATT.UC_MalfunctionVarianceMult = 1.5
