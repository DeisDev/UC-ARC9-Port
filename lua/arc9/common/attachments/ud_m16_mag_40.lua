ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_40")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_mag_40"}
ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

ATT.SortOrder = 40
ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 40
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.15
ATT.SwayMult = 1.5
ATT.SpeedMult = 0.975
ATT.SpeedMultShooting = 0.95
ATT.SpreadMultHipFire = 1.15
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_40"
    end
end
