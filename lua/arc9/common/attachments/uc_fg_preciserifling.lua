ATT.PrintName = ARC9.UC.AttName("uc_fg_preciserifling")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_precisionrifling.png", "mips smooth")
ATT.Category = {"uc_fg","uc_fg_singleshot"}
ATT.SortOrder = 1
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.SpreadMult = 0.75
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
