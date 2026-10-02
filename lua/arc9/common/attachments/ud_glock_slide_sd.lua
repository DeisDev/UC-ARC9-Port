ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_sd")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.invistracer"] = "",
}
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
}
ATT.ActivateElements = {"ud_glock_slide_sd", "sd"}

ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_sd.png", "smooth mips")
ATT.Category = "ud_glock_slide"
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.RecoilMult = 0.85
ATT.SpreadMult = 0.75
ATT.SwayMult = 1.5
ATT.RangeMaxMult = 1.25
ATT.ShootVolumeMult = 0.65
ATT.ShootPitchMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.RPMMult = 0.55
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.BarrelLengthAdd = 8
ATT.Firemodes_Priority = 10
ATT.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 1,
        PrintName = "fcg.slidelock",
        ManualAction = true,
        ShootVolumeMult = 0.8,
        SpreadMult = 0.75,
        UC_HipDispersionMult = 0.75,
    }
}
ATT.TracerNum = 0
ATT.TracerColor = Color(0, 0, 0)
ATT.Hook_TranslateAnimation = function(wep, anim)
    if not ARC9.UC.IsManualAction(wep) then return end
    if (anim == "fire" || anim == "fire_empty") then
        return "fire_cycle"
    elseif (anim == "idle" || anim == "idle_empty") then
        if wep:GetNeedsCycle() then
            return "idle"
        end
    end
end
ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail
