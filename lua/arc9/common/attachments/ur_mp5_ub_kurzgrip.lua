ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_kurzgrip")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/hg_k.png", "smooth mips")
ATT.CustomCons = {
    ["uc.noubs"] = "",
}

ATT.Category = "ur_mp5_hg"

ATT.LHIK = true
ATT.LHIK_Priority = 1
-- The grip mesh is on the weapon; the source LHIK asset only supplies its MDL.
ATT.NoDraw = true

ATT.ModelOffset = Vector(-1.3, 0, -0)
ATT.Model = "models/weapons/arccw/atts/ur_kurzlhik.mdl"
ATT.HoldType = "smg"

ATT.SortOrder = 2

ATT.SwayMult = .75
ATT.AimDownSightsTimeMult = .95
ATT.SprintToFireTimeMult = .95
ATT.RecoilMult = .85

ATT.RequireElements = {"mp5_kurz"}

ATT.ActivateElements = {"ur_mp5_ub_kurzgrip", "mp5_badhg"}
