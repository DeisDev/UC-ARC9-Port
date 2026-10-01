ATT.PrintName = ARC9.UC.AttName("uc_40mm_airburst")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.40mm.airburst"] = "",
    ["uc.40mm.proximity"] = "",
}
ATT.CustomCons = {
    ["uc.40mm.mindmg"] = "",
    ["uc.40mm.arm"] = "",
    ["uc.40mm.drag.high"] = "",
}
ATT.ActivateElements = {"40mm_airburst"}

ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
ATT.Category = "uc_40mm"
ATT.ShootEnt = "arc9_uc_40mm_airburst"
ATT.ShootEntForceMult = 0.75
ATT.ShootPitchMult = 0.9
