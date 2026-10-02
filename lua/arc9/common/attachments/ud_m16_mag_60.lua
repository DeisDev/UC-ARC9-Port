ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_60")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_m16_mag_60"}
ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

ATT.SortOrder = 60
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_60.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 60
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.ReloadTimeMult = 1.3
ATT.SwayMult = 2
ATT.SpeedMult = 0.95
ATT.SpeedMultShooting = 0.9
ATT.DeployTimeMult = 1.15
ATT.UC_HipDispersionMult = 1.25
ATT.Malfunction = true
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_60"
    end
end

ATT.UC_MalfunctionVarianceMult = 1.25
