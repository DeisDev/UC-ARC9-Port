ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_9mm_32")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_9mm_mag_32"}
ATT.RequireElements = {{"m16_9mm"}}

ATT.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.ClipSize = 32
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.15
ATT.SwayMult = 1.25
ATT.SpeedMultShooting = 0.95
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_9mm"
    end
end
