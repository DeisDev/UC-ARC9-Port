ATT.PrintName = ARC9.UC.AttName("uc_fg_sg_rifled")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"uc_fg_sg_rifled"}
ATT.ExcludeElements = {"uc_choke_rifled"}
ATT.RequireElements = {{"uc_slug"}}

ATT.Icon = Material("entities/att/arccw_uc_precisionrifling.png", "mips smooth")
ATT.Category = {"uc_fg","uc_fg_singleshot"}
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then -- or wep:GetValue("Num") > 1
        return false
    end
end
ATT.SpreadMult = 0.5
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.UC_HipDispersionMult = 1.25
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
