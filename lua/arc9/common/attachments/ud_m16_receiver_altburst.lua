ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_altburst")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["ud.m16_altburst.1"] = "",
}

ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips")
ATT.Category = "ud_m16_fcg"
ATT.Free = true
ATT.SortOrder = 10
ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 3,
        PostBurstDelay = 0.08,
        RecoilMult = 0.9,
        RunawayBurst = true,
    },
    {
        Mode = 1,
    }
}
