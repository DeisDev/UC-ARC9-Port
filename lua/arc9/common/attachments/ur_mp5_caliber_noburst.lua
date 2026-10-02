ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_noburst")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 201
ATT.Icon = Material("entities/att/ur_mp5/sef.png", "smooth mips")
ATT.CustomCons = {
    ["ur.mp5.noburst"] = "",
}
ATT.Category = "ur_mp5_caliber"

ATT.AimDownSightsTimeMult = .95
ATT.SprintToFireTimeMult = .95

ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}

ATT.ActivateElements = {"ur_mp5_caliber_noburst", "receiver_lower"}
