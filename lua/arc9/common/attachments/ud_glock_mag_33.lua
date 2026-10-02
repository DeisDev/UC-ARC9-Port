ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_33")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_glock_33_mag"}

ATT.SortOrder = 33
ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_33.png", "smooth mips")
ATT.Category = "ud_glock_mag"
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.15
ATT.ClipSize = 33
ATT.UC_HipDispersionMult = 1.25
ATT.SwayMult = 1.5
ATT.SpeedMultShooting = 0.95
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_33"
    end
    if anim == "fix" then
        return anim .. "_33"
    end
end
