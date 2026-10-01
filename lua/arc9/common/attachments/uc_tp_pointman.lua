ATT.PrintName = ARC9.UC.AttName("uc_tp_pointman")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.pointman"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_tp_pointman.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 7
ATT.BarrelLengthAdd = -10
ATT.RPMHook = function(wep, rpm)
    if wep:GetCurrentFiremodeTable().Mode == 1 then
        return rpm * 1.15
    end
end
ATT.AttNotForNPCs = true
