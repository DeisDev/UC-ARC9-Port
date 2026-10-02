ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_auto")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.auto"] = "",
}
ATT.ActivateElements = {"m16_auto"}
ATT.ExcludeElements = {"m16_noauto"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
ATT.Category = "ud_m16_fcg"
ATT.SortOrder = 5
ATT.SpreadMult = 1.25
ATT.RPMMult = 0.85
ATT.UC_HipDispersionMult = 1.125
ATT.SpeedMultShooting = 0.85
ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    }
}
