ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_pbs1")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_pbs1.png", "mips smooth")
ATT.Category = {"ur_ak_muzzle"}
ATT.SortOrder = 149
ATT.Model = "models/weapons/arccw/atts/uc_pbs1.mdl"
ATT.ModelOffset = Vector(2.9, 0, 0)
ATT.Scale = 1.3
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.75
ATT.RecoilRandomSideMult = 0.75
ATT.BarrelLengthAdd = 5
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SwayMult = 1.15
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.UC_Compatible = function(wep)
    if wep.Primary.Ammo != "ar2" then
        return false
    end
end
ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail
