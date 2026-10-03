ATT.PrintName = ARC9.UC.AttName("ur_ak_charm_tl")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/aksidemount.png", "smooth mips")
ATT.Category = "ur_ak_charm"
ATT.Free = true
ATT.ActivateElements = {"ak_norail"}
-- Attachment elements follow weapon elements, so this mount wins over short-barrel offsets.
ATT.Element = {
    AttPosMods = {
        [8] = {
            Pos = Vector(0.95, 2.5, 4.05),
            Ang = Angle(0, -90, 125)
        },
    },
}

ATT.Sights = {
    {
        Pos = Vector(0, 20, -6),
        Ang = Angle(0, 0, -25),
        Magnification = 1
    }
}

ATT.SortOrder = 998
ATT.RequireElements = {{"tac"}}
