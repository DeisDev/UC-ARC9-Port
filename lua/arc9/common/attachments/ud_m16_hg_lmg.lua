ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_lmg")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.noubs"] = "",
}
ATT.ActivateElements = {"hg_lmg", "m16_lmg", "hg_no11"}
ATT.ExcludeElements = {"blen_11"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_lmg.png", "smooth mips")
ATT.Category = "ud_m16_hg"
ATT.SpeedMult = 0.95
ATT.SpeedMultSights = 0.8
ATT.SwayMult = 1.5
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.RPMMult = 0.915
ATT.RecoilMult = 0.7
ATT.RecoilRandomSideMult = 0.5
ATT.MalfunctionMeanShotsToFailMult = 2
ATT.Bipod = true
ATT.UC_BipodDispersionMult = 0.2
ATT.SwayMultBipod = 0.2
ATT.RecoilMultBipod = 0.15
ATT.RecoilRandomSideMultBipod = 0.15
ATT.LHIK = true
ATT.Model = "models/weapons/arccw/atts/lmg_lhik.mdl"
ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2)) + Vector(-0.1, 0, 0)
