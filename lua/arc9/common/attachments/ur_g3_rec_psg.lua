ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_psg.printname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_psg.printname.variant1") end
ATT.Description = ARC9:GetPhrase("ur_g3_rec_psg.description")
ATT.Icon = Material("entities/att/ur_g3/rec_psg.png", "smooth mips")
ATT.Category = "ur_g3_rec"
ATT.CustomCons = {
    ["uc.semionly"] = "",
}

ATT.SortOrder = 13
ATT.RPMMult = 400 / 520
ATT.RecoilMult = 0.6
ATT.SpreadMult = 0.5
ATT.RangeMaxMult = 1.25
ATT.UC_MoveDispersionMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 1.15
ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.Class = "ur_g3_rec_psg.class"
ATT.RangeMinMult = 1.25
ATT.ActivateElements = {"ur_g3_rec_psg"}
