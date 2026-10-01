ATT.PrintName = ARC9.UC.AttName("uc_40mm_caseless")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"40mm_caseless"}

ATT.Icon = Material("entities/att/arccw_uc_40mm_caseless.png", "mips smooth")
ATT.Category = "uc_40mm"
ATT.ReloadTimeMult = 0.78
ATT.ShootEntForceMult = 0.85
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.75
ATT.ShootPitchMult = 1.1
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_caseless"
    end
end
