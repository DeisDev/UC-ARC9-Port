ATT.PrintName = ARC9.UC.AttName("uc_tp_strafe")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.neverflinch"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_tp_strafe.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 2
-- The weapon's own shooting slowdown is removed; other attachments still apply.
ATT.SpeedHookShooting = function(wep, speed)
    return speed / (wep:GetTable().SpeedMultShooting or 1)
end
ATT.SpeedMultSights = 1.2
ATT.AttNotForNPCs = true
