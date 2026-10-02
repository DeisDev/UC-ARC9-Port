ATT.PrintName = ARC9.UC.AttName("ur_1911_cal_10auto")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 10
ATT.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
ATT.Category = "ur_m1911_caliber"
ATT.DamageMaxMult = 35 / 45
ATT.DamageMinMult = 20 / 15
ATT.PenetrationMult = 8 / 9
ATT.RangeMinMult = 1.5
ATT.PhysBulletMuzzleVelocityMult = 1.5
ATT.TracerNum = 1
ATT.TracerNum_Priority = 0.5
ATT.ClipSizeMult = 8 / 7
ATT.ShellScale = 1
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.10mm_auto")
local path = ")^weapons/arccw_ur/1911/"
ATT.ShootSound = {
    path .. "fire-10-01.ogg",
    path .. "fire-10-02.ogg",
    path .. "fire-10-03.ogg",
    path .. "fire-10-04.ogg",
    path .. "fire-10-05.ogg",
    path .. "fire-10-06.ogg",
}
ATT.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg",
}
ATT.DistantShootSound = {
    path .. "fire-10-dist-01.ogg",
    path .. "fire-10-dist-02.ogg",
    path .. "fire-10-dist-03.ogg",
    path .. "fire-10-dist-04.ogg",
    path .. "fire-10-dist-05.ogg",
    path .. "fire-10-dist-06.ogg",
}
