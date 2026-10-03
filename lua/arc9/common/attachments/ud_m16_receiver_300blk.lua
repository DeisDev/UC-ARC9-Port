ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_300blk")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"cal_subsonic"}

ATT.Icon = Material("entities/att/uc_bullets/300blackout.png", "smooth mips")
ATT.Category = "ud_m16_receiver"
ATT.SortOrder = 4
ATT.DamageMaxMult = ARC9.UC.CalConv("556", "300blk", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("556", "300blk", "min")
ATT.PenetrationMult = ARC9.UC.CalConv("556", "300blk", "pen")
ATT.ShootVolumeMult = 105 / 120
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9
ATT.HeatDissipationMult = 1.5
ATT.PhysBulletMuzzleVelocity = 310 * ARC9.UC.Meter
ATT.ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
ATT.ShellScale = 1
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.300_aac_blackout")
ATT.HookP_NameChange = function(wep, name)
    return ARC9:GetPhrase("ud.m16.name_300blk", {name = name})
end
local path = "weapons/arccw_ud/m16/"
ATT.ShootSound = { path .. "fire-300-01.ogg", path .. "fire-300-02.ogg", path .. "fire-300-03.ogg", path .. "fire-300-04.ogg", path .. "fire-300-05.ogg", path .. "fire-300-06.ogg" }
ATT.DistantShootSound = { path .. "fire-dist-300-01.ogg", path .. "fire-dist-300-02.ogg", path .. "fire-dist-300-03.ogg", path .. "fire-dist-300-04.ogg", path .. "fire-dist-300-05.ogg", path .. "fire-dist-300-06.ogg" }
