ATT.PrintName = ARC9.UC.AttName("uc_charm_sgmanual")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.manualonly"] = "",
}
ATT.ActivateElements = {"uc_manualonly", "needsmanual"}

ATT.SortOrder = 1
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = "charm"
ATT.UC_Compatible = function(wep)
    if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) then return false end
end
ATT.Ignore = true
