ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_51_mlok.printname")
ATT.Description = ARC9:GetPhrase("ur_g3_hg_51_mlok.description")
ATT.CustomCons = {
    ["uc.noubs"] = "",
}

ATT.Category = "ur_g3_handguard"
ATT.SortOrder = 2
ATT.ModelOffset = Vector(-21, -2.2, 4.3)
ATT.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
ATT.NoDraw = true
ATT.LHIK = true
ATT.LHIKPriority = 0
ATT.SwayMult = .85
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = .9
ATT.RequireElements = {"g3_hk51hg"}
ATT.Ignore = true
ATT.ActivateElements = {"ur_g3_hg_51_mlok", "g3_noub"}
