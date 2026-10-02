ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_chrome.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_chrome.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_chrome.printname.variant1") end
ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_chrome.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_deagle_skin_chrome.description")
ATT.Category = "ur_deagle_skin"
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.SortOrder = 2
ATT.Free = true
ATT.ActivateElements = {"ur_deagle_skin_chrome"}
