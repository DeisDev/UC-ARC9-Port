ATT.PrintName = ARC9.UC.AttName("uc_choke_rifled")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"uc_choke_rifled"}
ATT.ExcludeElements = {"uc_fg_sg_rifled"}
ATT.RequireElements = {{"uc_slug"}}

ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
ATT.Category = {"choke","muzzle"}
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.SpreadMult = .7
ATT.UC_HipDispersionMult = 1.15
ATT.RecoilMult = 1.05
