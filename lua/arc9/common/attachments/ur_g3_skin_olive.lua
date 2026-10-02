ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_olive.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_olive.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_olive.printname.variant1") end
ATT.Description = ARC9:GetPhrase("ur_g3_skin_olive.description")
ATT.Icon = Material("entities/att/ur_g3/skin_oliva.png", "smooth mips")
ATT.Category = "ur_g3_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.SortOrder = 1
ATT.Free = true
ATT.ActivateElements = {"ur_g3_skin_olive"}
