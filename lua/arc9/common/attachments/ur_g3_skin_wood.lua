ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_wood.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_wood.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_wood.printname.variant1") end
ATT.Icon = Material("entities/att/ur_g3/skin_wood.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_g3_skin_wood.description")
ATT.Category = "ur_g3_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.SortOrder = 1
ATT.ActivateElements = {"ur_g3_skin_wood"}
