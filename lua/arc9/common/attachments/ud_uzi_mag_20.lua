ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_20")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_uzi_16_mag"}
ATT.ExcludeElements = {"uzi_45", "uzi_22"}

ATT.SortOrder = 20
ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_20.png", "smooth mips")
ATT.Category = "ud_uzi_mag"
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.ReloadTimeMult = 0.85
ATT.ClipSize = 20
ATT.SwayMult = 0.75
ATT.SpeedMultShooting = 1.1
ATT.UC_HipDispersionMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_16"
    end
end
