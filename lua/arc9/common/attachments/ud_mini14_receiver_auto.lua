ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_auto")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.auto"] = "",
}
ATT.ActivateElements = {"ud_mini14_receiver_auto"}

ATT.Icon = Material("entities/att/acwatt_ud_mini14_receiver_auto.png", "smooth mips")
ATT.Category = "ud_mini14_receiver"
ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 3,
        RecoilHook = ARC9.UC.ShotRecoil({
            [1] = 0.9,
            [2] = 0.8,
            [3] = 0.7,
        }),
    },
    {
        Mode = 1,
    }
}
ATT.HookP_ClassChange = function(wep, class) return "uc.class.assault_rifle" end
ATT.RPMMult = 750 / 540
ATT.RecoilRandomSideMult = 1.5
ATT.SpreadMultHipFire = 1.25
ATT.SpreadMult = 2
ATT.SpeedMultShooting = 0.85
ATT.MalfunctionMeanShotsToFailMult = 0.75

ATT.UC_MalfunctionVarianceMult = 1.25
