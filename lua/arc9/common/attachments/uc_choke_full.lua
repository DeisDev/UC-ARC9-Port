ATT.PrintName = ARC9.UC.AttName("uc_choke_full")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.disp.100"] = "",
}

ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
ATT.Category = {"choke","muzzle"}
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.RecoilMult = 1.25
ATT.RecoilRandomSideMult = 1.5
ATT.SpreadMult = .7
ATT.UC_HipDispersionAdd = 100 * ARC9.UC.Dispersion
ATT.UC_SightsDispersionAdd = 100 * ARC9.UC.Dispersion
