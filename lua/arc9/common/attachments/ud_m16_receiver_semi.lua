ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_semi")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.semionly"] = "",
}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
ATT.Category = "ud_m16_fcg"
ATT.SortOrder = -1
ATT.RPMMult = 600 / 900
ATT.RecoilMult = 0.8
ATT.SpreadMult = 0.75
ATT.RangeMaxMult = 1.15
ATT.UC_MoveDispersionMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 1.15
ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 1,
    }
}
ATT.HookP_ClassChange = function(wep, class) return "uc.class.semi_automatic_rifle" end
