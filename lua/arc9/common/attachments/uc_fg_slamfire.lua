ATT.PrintName = ARC9.UC.AttName("uc_fg_slamfire")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.slam"] = "",
}

ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
ATT.Category = "uc_fg"
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then
        return false
    end
    if ARC9.UC.IsManualAction(wep) then return end
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode and v.ManualAction then
            return
        end
    end
    return false
end
ATT.RecoilMult = 1.2
ATT.RecoilRandomSideMult = 1.5
ATT.Firemodes = {
    {
        Mode = -1,
        PrintName = ARC9:GetPhrase("fcg.slam"),
        ManualAction = true,
    }
}
ATT.Firemodes_Priority = 11 -- higher than spas-12 manual
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
