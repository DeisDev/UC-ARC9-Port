ATT.PrintName = ARC9.UC.AttName("uc_fg_deeprifling")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_deeprifling.png", "mips smooth")
ATT.Category = "uc_fg"
ATT.SortOrder = 1
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.PenetrationMult = 1.25
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
