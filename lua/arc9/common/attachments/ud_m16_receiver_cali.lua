ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_cali")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.manual"] = "",
}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_cali.png", "smooth mips")
ATT.Category = "ud_m16_fcg"
ATT.SortOrder = -5
ATT.CaseEffectQCA = 6
ATT.PhysBulletMuzzleVelocityMult = 1.3
ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.bolt",
    }
}
ATT.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fire" || anim == "fire_empty") then
        return "fire_cycle"
    end
end
ATT.ManualAction = true
ATT.SpreadMult = 0.5
ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.MalfunctionMeanShotsToFailMult = 1.5
