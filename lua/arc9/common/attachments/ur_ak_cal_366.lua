ATT.PrintName = ARC9.UC.AttName("ur_ak_cal_366")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/uc_bullets/762x39.png", "mips smooth")
ATT.CustomCons = {
    ["uc.semionly"] = "",
}

ATT.Category = "ur_ak_cal"
ATT.DamageMaxMult = 1.2
ATT.DamageMinMult = 1.2
ATT.RangeMaxMult = 1.25
ATT.PenetrationMult = 1.5
ATT.RPMMult = 0.8
ATT.RecoilMult = 1.5
ATT.ShootVolumeMult = 130 / 125
ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.ShellModel = "models/weapons/arccw/uc_shells/366tkm.mdl"
ATT.ShellScale = .666
ATT.ActivateElements = {"cal_366"}
ATT.TriviaHook = function(wep, trivia)
    trivia["uc.trivia.calibre2"] = "ur.calibre.366"
    trivia["uc.trivia.manufacturer1"] = "ur.manufacturer.molot"
    return trivia
end

local path = ")weapons/arccw_ur/ak/"
ATT.ShootSound = {path .. "fire_366_1.ogg", path .. "fire_366_2.ogg", path .. "fire_366_3.ogg"}
ATT.ShootSoundSilenced = path .. "fire_sup_1.ogg"
