ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_556")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
ATT.Category = {"ur_ak_cal"}
ATT.SortOrder = 10
ATT.Ammo = "smg1"
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.5
ATT.SpeedMultSights = 1.05
ATT.ReloadTimeMult = 0.95
ATT.RecoilMult = 0.65
ATT.SpreadMult = 0.6
ATT.UC_HipDispersionMult = .75
ATT.PenetrationMult = 12 / 16
ATT.DamageMinMult = 20 / 25
ATT.DamageMaxMult = 34 / 50
ATT.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
ATT.ShellScale = .666
ATT.ActivateElements = {"mag_556_30", "cal_556"}
ATT.TriviaHook = function(wep, trivia)
    trivia["uc.trivia.calibre2"] = "uc.calibre.5_56x45mm_nato"
    trivia["uc.trivia.country4"] = "ur.country.russia"
    return trivia
end

local path = ")weapons/arccw_ur/ak/556/"
ATT.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
local tail = ")/arccw_uc/common/556x45/"
ATT.DistantShootSound = {tail .. "fire-dist-556x45-rif-ext-01.ogg", tail .. "fire-dist-556x45-rif-ext-02.ogg", tail .. "fire-dist-556x45-rif-ext-03.ogg", tail .. "fire-dist-556x45-rif-ext-04.ogg", tail .. "fire-dist-556x45-rif-ext-05.ogg", tail .. "fire-dist-556x45-rif-ext-06.ogg"}
ATT.UC_DefaultSlots = {
    [6] = {
        Name = "uc.default.30_round_mag",
        Icon = Material("entities/att/ur_ak/magazines/556_30.png", "smooth mips")
    },
}
