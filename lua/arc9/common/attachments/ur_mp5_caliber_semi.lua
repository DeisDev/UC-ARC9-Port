ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_semi")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/grip.png", "smooth mips")
ATT.CustomCons = {
    ["uc.semionly"] = "",
}
ATT.Category = "ur_mp5_caliber"
ATT.SortOrder = -1

ATT.RPMMult = 600 / 900
ATT.RecoilMult = 0.8
ATT.SpreadMult = 0.75
ATT.RangeMaxMult = 1.15
ATT.RangeMinMult = 1.15
ATT.UC_MoveDispersionMult = 0.5

ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.HookP_ClassChange = function(wep, class) return "uc.class.pistol" end

ATT.ActivateElements = {"ur_mp5_caliber_semi", "receiver_lower_semi"}
