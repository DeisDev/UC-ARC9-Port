ATT.PrintName = ARC9.UC.AttName("ur_ak_cover_truniun_rail")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/dustcover_mount.png", "mips smooth")
ATT.Category = {"ur_ak_cover"}
ATT.Free = true
ATT.CustomCons = {
    ["ur.ak.obstructed_irons"] = "",
}

ATT.ActivateElements = {"cover_trail", "cover_rail"}
ATT.ExcludeElements = {"ak_barrelkrinkov", "ak_norail"}
