ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_ssq")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_ssq.png", "mips smooth")
ATT.Category = {"muzzle"}
ATT.SortOrder = 150
ATT.Model = "models/weapons/arccw/atts/ud_silencer_ssq.mdl"
ATT.ModelOffset = Vector(0.5, 0, 0.0)
ATT.Scale = 0.8
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.75
ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.BarrelLengthAdd = 5
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SwayMult = 1.15
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.UC_Compatible = function(wep,data)
    if !ARC9.UC.PistolAmmoTypes[ARC9.UC.GetAmmoType(wep)] or ARC9.UC.GetMuzzleVelocity(wep) > ARC9.UC.SubsonicThreshold then
        return false
    end
end
ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail
