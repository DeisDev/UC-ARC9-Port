ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_sex.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_sex.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_sex.printname.variant1") end
ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_sex.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_deagle_skin_sex.description")
ATT.Category = "ur_deagle_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.Free = true
ATT.ActivateElements = {"ur_deagle_skin_sex"}
