ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_9mm")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "mips smooth")
ATT.Category = {"ur_ak_cal"}
ATT.SortOrder = 9
ATT.RangeMaxMult = 0.6
ATT.RangeMinMult = 0.6
ATT.RPMMult = 1.178
ATT.ReloadTimeMult = .95
ATT.RecoilMult = .35
ATT.SpreadMult = .85
ATT.UC_HipDispersionMult = .75
ATT.ShootPitchMult = 90 / 100
ATT.PenetrationMult = 0.125
ATT.DamageMinMult = 0.85
ATT.DamageMaxMult = 0.64
ATT.Ammo = "pistol"
ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.PistolShellSoundsTable
ATT.ActivateElements = {"mag_9mm", "cal_9mm"}
ATT.HookP_ClassChange = function(wep, class) return "uc.class.submachine_gun" end
ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "reload" or anim == "reload_empty" then return anim .. "_9mm" end end
ATT.TriviaHook = function(wep, trivia)
    trivia["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum"
    trivia["uc.trivia.mechanism3"] = "ur.mechanism.blowback"
    return trivia
end

local path = ")weapons/arccw_ur/ak/9mm/"
local firepath = ")weapons/arccw_ur/1911/"
ATT.ShootSound = {firepath .. "fire-9-01.ogg", firepath .. "fire-9-02.ogg", firepath .. "fire-9-03.ogg", firepath .. "fire-9-04.ogg", firepath .. "fire-9-05.ogg", firepath .. "fire-9-06.ogg"}
ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
local tail = ")/arccw_uc/common/9x19/"
ATT.DistantShootSound = {tail .. "fire-dist-9x19-pistol-ext-01.ogg", tail .. "fire-dist-9x19-pistol-ext-02.ogg", tail .. "fire-dist-9x19-pistol-ext-03.ogg", tail .. "fire-dist-9x19-pistol-ext-04.ogg", tail .. "fire-dist-9x19-pistol-ext-05.ogg", tail .. "fire-dist-9x19-pistol-ext-06.ogg"}
ATT.UC_DefaultSlots = {
    [6] = {
        Name = "uc.default.30_round_mag",
        Icon = Material("entities/att/ur_ak/magazines/9_30.png", "smooth mips")
    },
}
