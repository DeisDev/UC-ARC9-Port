ATT.PrintName = ARC9.UC.AttName("ud_uzi_cal_45")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.subsonic"] = "",
}
ATT.ActivateElements = {"uzi_45", "cal_subsonic"}

ATT.Category = "ud_uzi_caliber"
ATT.Icon = Material("entities/att/uc_bullets/45acp.png", "smooth mips")
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.45_acp")
ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "45acp", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "45acp", "min")
ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "45acp", "pen")
ATT.PhysBulletMuzzleVelocity = 320 * ARC9.UC.Meter
ATT.RangeMinMult = 0.5
ATT.RangeMaxMult = .75
ATT.RecoilMult = 1.5
ATT.RecoilRandomSideMult = 1.5
ATT.RPMMult = 0.83
ATT.ClipSize = 16
local path = ")^weapons/arccw_ud/uzi/"
ATT.ShootSoundSilenced = "weapons/arccw_ud/glock/fire_supp.ogg"
ATT.ShootSound = {path .. "fire-45-01.ogg", path .. "fire-45-02.ogg", path .. "fire-45-03.ogg", path .. "fire-45-04.ogg", path .. "fire-45-05.ogg", path .. "fire-45-06.ogg"}
local tail = ")^/arccw_uc/common/45acp/"
ATT.DistantShootSound = { tail .. "fire-dist-45acp-pistol-ext-01.ogg", tail .. "fire-dist-45acp-pistol-ext-02.ogg", tail .. "fire-dist-45acp-pistol-ext-03.ogg", tail .. "fire-dist-45acp-pistol-ext-04.ogg", tail .. "fire-dist-45acp-pistol-ext-05.ogg", tail .. "fire-dist-45acp-pistol-ext-06.ogg" }
