ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_usas_20")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_usas_mag_20"}
ATT.RequireElements = {{"m16_usas"}}

ATT.SortOrder = -1
ATT.Icon = Material("entities/att/obsolete.png", "mips smooth")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 20
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.ReloadTimeMult = 1.25
ATT.SpeedMult = 0.95
ATT.SwayMult = 3
ATT.Ignore = true
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_usas_20"
    end
    if string.StartsWith(anim, "fire") then
        return anim .. "_usas"
    end
end
