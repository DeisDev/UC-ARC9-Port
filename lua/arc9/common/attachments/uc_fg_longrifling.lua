ATT.PrintName = ARC9.UC.AttName("uc_fg_longrifling")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_longrifling.png", "mips smooth")
ATT.Category = {"uc_fg","uc_fg_singleshot"}
ATT.SortOrder = 1
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
