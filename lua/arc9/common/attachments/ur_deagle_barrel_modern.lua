ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_modern.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_modern.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_modern.printname.variant1") end
ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_modern.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_modern.description")
ATT.Category = "ur_deagle_barrel"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.SortOrder = 5.5
ATT.ActivateElements = {"ur_deagle_barrel_modern"}
