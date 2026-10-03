ATT.PrintName = ARC9.UC.AttName("ud_mini14_barrel_stub")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.nofs"] = "",
    ["uc.nomuzzle"] = "",
}
ATT.ActivateElements = {"nomuzzle"}

ATT.Icon = Material("entities/att/acwatt_ud_mini14_barrel_stub.png", "smooth mips")
ATT.SortOrder = 15
ATT.Category = "ud_mini14_barrel"
ATT.AimDownSightsTimeMult = 0.65
ATT.SprintToFireTimeMult = 0.65
ATT.RecoilMult = 1.25
ATT.SpreadMult = 3
ATT.RangeMaxMult = 0.25
ATT.RangeMinMult = 0.25
ATT.SwayMult = 0.5
ATT.SpeedMultSights = 1.25
ATT.BarrelLengthAdd = -8
-- Imprecise in sights without an optic
ATT.UC_SightsDispersionHook = function(wep, spread)
    if !wep.Attachments[1].Installed then
        return spread + 50 * ARC9.UC.Dispersion
    end
end
