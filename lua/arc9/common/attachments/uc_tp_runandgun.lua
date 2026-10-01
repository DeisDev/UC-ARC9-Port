ATT.PrintName = ARC9.UC.AttName("uc_tp_runandgun")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.runandgun.jump"] = "",
    ["uc.runandgun.move"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_tp_run_and_gun.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 4
-- Remove movement penalties without removing the weapon's underlying spread.
ATT.SpreadHookMidAir = function(wep, spread)
    if wep:GetUBGL() then return end
    return spread - (wep.SpreadAddMidAir or 0)
end
ATT.SpreadHookMove = function(wep, spread)
    if wep:GetUBGL() then return end
    return spread - (wep.SpreadAddMove or 0) * 0.5 * ARC9.UC.GetMultProduct(wep, "SpreadMultMove")
end
ATT.AttNotForNPCs = true
