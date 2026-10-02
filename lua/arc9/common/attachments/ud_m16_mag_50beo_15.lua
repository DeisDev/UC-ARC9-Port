ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_50beo_15")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_mag_40"}
ATT.RequireElements = {{"m16_50beo"}}

ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
ATT.Category = "ud_m16_mag"
ATT.InvAtt = "ud_m16_mag_40"
ATT.SortOrder = 1
ATT.ClipSize = 15
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.ReloadTimeMult = 1.3
ATT.SwayMult = 2.25
ATT.SpeedMult = 0.95
ATT.UC_HipDispersionMult = 1.25
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_40"
    end
end
