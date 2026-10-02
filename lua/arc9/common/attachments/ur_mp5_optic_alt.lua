ATT.PrintName = ARC9.UC.AttName("ur_mp5_optic_alt")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/altirons.png", "smooth mips")
ATT.CustomPros = {
    ["uc.cosmetic"] = "",
}

ATT.Category = "ur_mp5_optic"
ATT.SortOrder = 9999

ATT.ExcludeElements = {"barrel_sword"}
ATT.Free = true

ATT.IronSights = {
    Pos = Vector(-3.170000, -4.851284, 0.731534),
    Ang = Angle(0, 0.100000, 0),
    Magnification = 1,
    ViewModelFOV = 80,
}

ATT.ActivateElements = {"ur_mp5_optic_alt", "ur_mp5_precision_irons"}
