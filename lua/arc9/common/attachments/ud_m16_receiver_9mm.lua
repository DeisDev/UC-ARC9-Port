ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_9mm")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_m16_9mm_mag", "m16_auto", "m16_9mm"}
ATT.ExcludeElements = {"m16_noauto"}

ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
ATT.Category = "ud_m16_receiver"
ATT.UC_DefaultSlots = {
    [11] = {Name = "uc.default.20_round_mag", Icon = Material("entities/att/acwatt_ud_m16_9mm_20.png", "smooth mips")},
}
ATT.SortOrder = 3
ATT.PenetrationMult = ARC9.UC.CalConv("556", "9mm", "pen")
ATT.RPMMult = 1 / .85
ATT.DamageMaxMult = ARC9.UC.CalConv("556", "9mm", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("556", "9mm", "min")
ATT.RangeMaxMult = 0.4
ATT.RangeMinMult = 0.4
ATT.SpeedMultShooting = 1.1
ATT.RecoilMult = 0.5
ATT.UC_HipDispersionMult = 0.85
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.ClipSize_Priority = 0.5
ATT.ClipSize = 20
ATT.HeatCapacityMult = 1.5
ATT.PhysBulletMuzzleVelocity = (396 / 0.833333) * ARC9.UC.Meter
ATT.Ammo = "pistol"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.9x19mm_parabellum")
ATT.HookP_ClassChange = function(wep, class) return "uc.class.submachine_gun" end
ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.PistolShellSoundsTable
local path = ")^weapons/arccw_ud/glock/"
ATT.ShootSound = "weapons/arccw_ud/m16/fire_9.ogg"
ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
local tail = ")^/arccw_uc/common/9x19/"
ATT.DistantShootSound = { tail .. "fire-dist-9x19-pistol-ext-01.ogg", tail .. "fire-dist-9x19-pistol-ext-02.ogg", tail .. "fire-dist-9x19-pistol-ext-03.ogg", tail .. "fire-dist-9x19-pistol-ext-04.ogg", tail .. "fire-dist-9x19-pistol-ext-05.ogg", tail .. "fire-dist-9x19-pistol-ext-06.ogg" }
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload" or anim == "reload_empty" then
        return anim .. "_9mm"
    end
end
