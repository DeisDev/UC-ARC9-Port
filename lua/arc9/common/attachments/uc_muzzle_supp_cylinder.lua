ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_cylinder")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"muzzleblocking"}
ATT.ExcludeElements = {"nomuzzleblocking"}

ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_cylinder.png", "mips smooth")
ATT.Category = {"muzzle_shotgun","muzzle"}
ATT.SortOrder = 150
ATT.Model = "models/weapons/arccw/atts/ud_silencer_870.mdl"
ATT.ModelOffset = Vector(-1, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleDevice = true
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.75
ATT.BarrelLengthAdd = 6
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.SpreadMultHipFire = 1.2
ATT.SwayMult = 1.15
ATT.RangeMaxMult = 1.1
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) then
        return false
    end
end
