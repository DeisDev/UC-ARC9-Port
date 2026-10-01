ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_lighthouse")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_lighthouse.png", "mips smooth")
ATT.Category = {"muzzle"}
ATT.SortOrder = 150
ATT.Model = "models/weapons/arccw/atts/ud_silencer_light.mdl"
ATT.ModelOffset = Vector(-0.25, 0, 0)
ATT.ModelAngleOffset = Angle(0, 180, 0)
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.75
ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 1.75
ATT.BarrelLengthAdd = 5
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SwayMult = 1.15
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.UC_Compatible = function(wep,data)
    if !ARC9.UC.RifleAmmoTypes[ARC9.UC.GetAmmoType(wep)] then
        return false
    end
end
ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail
