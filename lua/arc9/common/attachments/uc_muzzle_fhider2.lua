ATT.PrintName = ARC9.UC.AttName("uc_muzzle_fhider2")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.flashhider"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_fhider2.png", "mips smooth")
ATT.Category = {"muzzle"}
ATT.SortOrder = 50
ATT.Model = "models/weapons/arccw/atts/uc_muzzle4.mdl"
ATT.ModelOffset = Vector(2.2, 0, 0)
ATT.Scale = 0.95
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.RecoilRandomSideMult = 0.85
ATT.SpreadMultHipFire = 0.9
ATT.SpeedMultShooting = 0.9
ATT.SwayMult = 1.15
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
