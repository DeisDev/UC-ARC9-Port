ATT.PrintName = ARC9.UC.AttName("ud_870_barrel_sawnoff")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.nofs"] = "",
}
ATT.ActivateElements = {"ud_870_barrel_sawnoff"}

ATT.Icon = Material("entities/att/acwatt_ud_870_barrel_sawnoff.png", "smooth mips")
ATT.Category = "ud_870_barrel"
ATT.SortOrder = -1
ATT.SpreadMult = 1.5
ATT.RecoilMult = 1.25
ATT.RangeMaxMult = 0.8
ATT.SwayMult = 0.5
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.SpeedMult = 1.05
ATT.SpreadMultHipFire = 0.75
ATT.BarrelLengthAdd = -4
-- Imprecise in sights without an optic
ATT.SpreadHookSights = function(wep, spread)
    if !wep.Attachments[1].Installed then
        return spread + 250 * ARC9.UC.Dispersion
    end
end
