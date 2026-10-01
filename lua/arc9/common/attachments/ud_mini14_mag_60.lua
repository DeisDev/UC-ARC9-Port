ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_60")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_mini14_mag_60"}
ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

ATT.SortOrder = 30
ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_60.png", "smooth mips")
ATT.Category = "ud_mini14_mag"
ATT.ClipSize = 60
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.ReloadTimeMult = 1.5
ATT.SwayMult = 2
ATT.SpeedMult = 0.95
ATT.SpeedMultShooting = 0.9
ATT.DeployTimeMult = 1.25
ATT.SpreadMultHipFire = 1.5
ATT.Malfunction = true
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_60"
    end
end
