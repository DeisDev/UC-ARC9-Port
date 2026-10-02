ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_gold.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_gold.compactname")
ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_gold.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_deagle_skin_gold.description")
if not ARC9:UseTrueNames() then
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_gold.printname.variant1")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_gold.description.variant1")
end

ATT.Category = "ur_deagle_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.SortOrder = 1
ATT.Free = true
ATT.ActivateElements = {"ur_deagle_skin_gold"}
