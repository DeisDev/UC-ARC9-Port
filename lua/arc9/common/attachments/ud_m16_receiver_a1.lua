ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_a1")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"upper_classic", "ud_m16_upper_charm2", "m16_auto", "ud_m16_retro", "ud_m16_a1"}
ATT.ExcludeElements = {"m16_noauto", "ud_m16_not_retro"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
ATT.Category = "ud_m16_receiver"
ATT.SortOrder = -6
ATT.Malfunction = true
ATT.SpreadMult = 1.25
ATT.UC_HipDispersionMult = 1.125
ATT.RPMMult = 900 / 765
ATT.UC_TopMount = 3
