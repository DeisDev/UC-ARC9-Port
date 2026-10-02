ATT.PrintName = ARC9.UC.AttName("uc_muzzle_fhider1")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.flashhider"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_fhider1.png", "mips smooth")
ATT.Category = {"muzzle"}
ATT.SortOrder = 50
ATT.Model = "models/weapons/arccw/atts/uc_muzzle1.mdl"
ATT.ModelOffset = Vector(2.05, 0, 0)
ATT.Scale = 0.8
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.UC_HipDispersionMult = 0.9
ATT.UC_MoveDispersionMult = 0.9
ATT.SpeedMultShooting = 0.9
ATT.SwayMult = 1.15
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
