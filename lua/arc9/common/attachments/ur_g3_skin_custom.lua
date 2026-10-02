ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_custom.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_custom.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_custom.printname.variant1") end
ATT.Description = ARC9:GetPhrase("ur_g3_skin_custom.description")
ATT.Icon = Material("entities/att/ur_g3/skin_cust.png", "smooth mips")
ATT.Category = "ur_g3_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
    ["uc.custcolor"] = "",
}

ATT.SortOrder = 1
ATT.Free = true
ATT.ActivateElements = {"ur_g3_skin_custom"}
