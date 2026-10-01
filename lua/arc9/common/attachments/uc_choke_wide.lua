ATT.PrintName = ARC9.UC.AttName("uc_choke_wide")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
ATT.Category = {"choke","muzzle"}
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.RecoilMult = 0.75
ATT.SpreadMult = 1.25
