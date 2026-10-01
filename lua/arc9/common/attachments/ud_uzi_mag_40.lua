ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_40")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_uzi_41_mag"}
ATT.ExcludeElements = {"uzi_45", "uzi_22"}

ATT.SortOrder = 40
ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_40.png", "smooth mips")
ATT.Category = "ud_uzi_mag"
ATT.AimDownSightsTimeMult = 1.08
ATT.SprintToFireTimeMult = 1.08
ATT.ReloadTimeMult = 1.12
ATT.ClipSize = 40
ATT.SwayMult = 1.15
ATT.SpreadMultHipFire = 1.25
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_41"
    end
end
