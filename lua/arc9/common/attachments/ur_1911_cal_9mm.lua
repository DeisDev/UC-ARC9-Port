ATT.PrintName = ARC9.UC.AttName("ur_1911_cal_9mm")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 9
ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
ATT.Category = "ur_m1911_caliber"
ATT.DamageMaxMult = 30 / 45
ATT.DamageMinMult = 17 / 15
ATT.PenetrationMult = 6 / 9
ATT.RangeMaxMult = 1.25
ATT.RPMMult = 525 / 450
ATT.ReloadTimeMult = .9
ATT.RecoilMult = 0.85
ATT.RecoilRandomSideMult = 0.75
ATT.PhysBulletMuzzleVelocityMult = 1.4
ATT.TracerNum = 1
ATT.TracerNum_Priority = 0.5
ATT.ClipSizeMult = 9 / 7
ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
ATT.ShellScale = 1
ATT.TriviaHook = function(wep, trivia)
    local result = table.Copy(trivia)
    result["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum"
    result["uc.trivia.manufacturer1"] = "ur.m1911.manufacturer.ruger"
    return result
end
local path = ")^weapons/arccw_ur/1911/"
ATT.ShootSound = {
    path .. "fire-9-01.ogg",
    path .. "fire-9-02.ogg",
    path .. "fire-9-03.ogg",
    path .. "fire-9-04.ogg",
    path .. "fire-9-05.ogg",
    path .. "fire-9-06.ogg",
}
ATT.ShootSoundSilenced = {
    path .. "fire-9-sup-01.ogg",
    path .. "fire-9-sup-02.ogg",
    path .. "fire-9-sup-03.ogg",
    path .. "fire-9-sup-04.ogg",
    path .. "fire-9-sup-05.ogg",
    path .. "fire-9-sup-06.ogg",
}
local tail = ")^/arccw_uc/common/9x19/"
ATT.DistantShootSound = {
    tail .. "fire-dist-9x19-pistol-ext-01.ogg",
    tail .. "fire-dist-9x19-pistol-ext-02.ogg",
    tail .. "fire-dist-9x19-pistol-ext-03.ogg",
    tail .. "fire-dist-9x19-pistol-ext-04.ogg",
    tail .. "fire-dist-9x19-pistol-ext-05.ogg",
    tail .. "fire-dist-9x19-pistol-ext-06.ogg",
}
