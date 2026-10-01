ATT.PrintName = ARC9.UC.AttName("uc_40mm_buckshot")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.40mm.buckshot"] = "",
}
ATT.ActivateElements = {"40mm_buckshot"}

ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
ATT.Category = "uc_40mm"
ATT.ShootEnt = false
ATT.PhysBulletMuzzleVelocity = 200 * ARC9.UC.Meter
ATT.Num = 20
ATT.DamageMax = 18 * 20
ATT.DamageMin = 6 * 20
ATT.RangeMax = 50 * ARC9.UC.Meter
ATT.RangeMin = 5 * ARC9.UC.Meter
ATT.HullSize = 0.5
ATT.Spread = 50 * ARC9.UC.MOA
ATT.ShootSound = ")^/arccw_uc/common/gl_fire_buck.ogg"
ATT.DistantShootSound = ")^/arccw_uc/common/gl_fire_buck_dist.ogg"
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_shotgun"
    end
end
