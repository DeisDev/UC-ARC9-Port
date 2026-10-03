ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_ga9")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_ga9.png", "mips smooth")
ATT.Category = {"muzzle"}
ATT.SortOrder = 150
ATT.Model = "models/weapons/arccw/atts/uc_ga_revolution9.mdl"
ATT.ModelOffset = Vector(2.6, 0, 0)
ATT.Scale = 1.15
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.75
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9
ATT.BarrelLengthAdd = 5
ATT.AimDownSightsTimeMult = 1.07
ATT.SprintToFireTimeMult = 1.07
ATT.SwayMult = 1.1
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.UC_Compatible = function(wep,data)
    if !ARC9.UC.PistolAmmoTypes[ARC9.UC.GetAmmoType(wep)] then
        return false
    end
end
ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail
