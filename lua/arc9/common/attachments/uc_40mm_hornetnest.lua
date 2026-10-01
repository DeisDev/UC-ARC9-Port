ATT.PrintName = ARC9.UC.AttName("uc_40mm_hornetnest")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.40mm.hornet"] = "",
}
ATT.ActivateElements = {"40mm_hornetnest"}

ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
ATT.Category = "uc_40mm"
ATT.ShootEnt = false
ATT.Num = 16
ATT.DamageMax = 12 * 16
ATT.DamageMin = 5 * 16
ATT.RangeMax = 60 * ARC9.UC.Meter
ATT.RangeMin = 15 * ARC9.UC.Meter
ATT.HullSize = 0.1
ATT.Spread = 25 * ARC9.UC.MOA
ATT.RecoilMult = 0.4
ATT.ShootSound = ")^/arccw_uc/common/gl_fire_hornet.ogg"
ATT.DistantShootSound = ")^/arccw_uc/common/gl_fire_hornet_dist.ogg"
