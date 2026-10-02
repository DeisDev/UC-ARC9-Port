ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_10")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_glock_10_mag"}
ATT.RequireElements = {{"ud_glock_frame_subcompact"}}

ATT.SortOrder = 10
ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_10.png", "smooth mips")
ATT.Category = "ud_glock_mag"
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.ReloadTimeMult = 0.9
ATT.ClipSize = 10
ATT.SpeedMult = 1.05
ATT.SwayMult = 0.5
ATT.UC_HipDispersionMult = 0.75
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_10"
    end
    if anim == "fix" then
        return anim .. "_10"
    end
end
