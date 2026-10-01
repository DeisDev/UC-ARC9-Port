ATT.PrintName = ARC9.UC.AttName("uc_40mm_dummy")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.infiniteammo"] = "",
}
ATT.CustomCons = {
    ["uc.40mm.nodmg"] = "",
}
ATT.ActivateElements = {"40mm_dummy"}

ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
ATT.Category = "uc_40mm"
ATT.SortOrder = -9001
ATT.ShootEnt = "arc9_uc_40mm_dummy"
ATT.VisualRecoilMult = 0.5
ATT.RecoilMult = 0.5
ATT.ReloadTimeMult = 0.8
ATT.InfiniteAmmo = true
