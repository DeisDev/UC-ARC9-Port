ATT.PrintName = ARC9.UC.AttName("ur_1911_mag_ext")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_1911/mag11.png","mips smooth")
ATT.Category = "ur_m1911_mag"
ATT.ClipSize = 11
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.ReloadTimeMult = 1.15
ATT.SwayMult = 1.25
ATT.SpeedMult = 0.98
ATT.SpeedMultShooting = 0.95
ATT.UC_HipDispersionMult = 1.25
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then return anim .. "_10" end
end
