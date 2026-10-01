ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_fpw")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.auto"] = "",
}
ATT.CustomCons = {
    ["uc.jam"] = "",
    ["uc.nofs"] = "",
    ["uc.overheat"] = "",
    ["ud.m16.fpw1"] = "",
    ["ud.m16.fpw2"] = "",
}
ATT.ActivateElements = {"upper_classic", "ud_m16_upper_charm2", "m16_auto", "ud_m16_retro", "ud_m16_fpw", "sight_magpul", "patr3"}
ATT.ExcludeElements = {"m16_noauto", "ud_m16_not_retro"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
ATT.Category = "ud_m16_fcg"
ATT.SortOrder = -6.5
ATT.RPMMult = 1103 / 900
ATT.RecoilMult = 1.25 / 1.1
ATT.RecoilRandomSideMult = 1.5
ATT.RangeMaxMult = 0.9
ATT.SpreadMult = 4 / 3
ATT.SpreadMultHipFire = 0.85
ATT.TriggerDelay = true
ATT.Malfunction = true
ATT.Overheat = true
ATT.HeatLockout = false
ATT.HeatCapacity = 120
ATT.HeatDissipation = 20
ATT.SpreadHookSights = function(wep, spread)
    if !wep.Attachments[1].Installed or wep.Attachments[1].Installed == "ud_m16_rs" then
        return spread + 50 * ARC9.UC.Dispersion
    end
end
ATT.Firemodes = {
    {
        Mode = -1,
    }
}
ATT.ChamberSize = 0
ATT.UC_TopMount = 3
