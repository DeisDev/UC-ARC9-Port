ATT.PrintName = ARC9.UC.AttName("ud_m1014_barrel_sawn")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.nofs"] = "",
    ["uc.nomuzzle"] = "",
}
ATT.ActivateElements = {"ud_autoshotgun_barrel_sawnoff", "nomuzzle"}

ATT.Icon = Material("entities/att/acwatt_ud_m1014_barrel_short.png", "smooth mips")
ATT.Category = "ud_1014_barrel"
ATT.SpreadMult = 2
ATT.RecoilMult = 1.25
ATT.RangeMaxMult = 0.5
ATT.SwayMult = 0.5
ATT.AimDownSightsTimeMult = 0.6
ATT.SprintToFireTimeMult = 0.6
ATT.SpeedMult = 1.05
ATT.SpeedMultShooting = 1.2
ATT.RPMMult = 240 / 220
ATT.SpreadMultHipFire = 0.75
ATT.BarrelLengthAdd = -6
-- Imprecise in sights without an optic
ATT.SpreadHookSights = function(wep, spread)
    if !wep.Attachments[1].Installed then
        return spread + 50 * ARC9.UC.Dispersion
    end
end
ATT.Ignore = true
