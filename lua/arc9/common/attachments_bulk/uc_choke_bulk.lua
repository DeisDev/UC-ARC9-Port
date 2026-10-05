do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_choke_cyl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
    ATT.Category = {"choke","muzzle"}
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.RecoilMult = 1.1
    ATT.SpreadMult = .9

    ARC9.LoadAttachment(ATT, "uc_choke_cyl")
end

do
    local ATT = {}

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

    ARC9.LoadAttachment(ATT, "uc_choke_full")
end

do
    local ATT = {}

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

    ARC9.LoadAttachment(ATT, "uc_choke_rifled")
end

do
    local ATT = {}

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

    ARC9.LoadAttachment(ATT, "uc_choke_wide")
end
