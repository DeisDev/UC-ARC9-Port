ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_10auto")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 80
ATT.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.Category = "ur_mp5_caliber"

ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.10mm_auto")

ATT.DamageMaxMult = 1.15
ATT.DamageMinMult = 1.15

ATT.RecoilMult = 1.25
ATT.RecoilRandomSideMult = 1.25
ATT.ReloadTimeMult = 1.15
ATT.ShellScale = 1.1

ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFailMult = 0.4
ATT.UC_MalfunctionVarianceMult = 1.5

local path = ")weapons/arccw_ur/1911/"
local path1 = ")weapons/arccw_ur/mp5/"
local fire10 = {path .. "fire-10-01.ogg",path .. "fire-10-02.ogg",path .. "fire-10-03.ogg",path .. "fire-10-04.ogg",path .. "fire-10-05.ogg",path .. "fire-10-06.ogg"}
local fire10sup = {path1 .. "fire-40-sup-01.ogg",path1 .. "fire-40-sup-02.ogg",path1 .. "fire-40-sup-03.ogg",path1 .. "fire-40-sup-04.ogg",path1 .. "fire-40-sup-05.ogg",path1 .. "fire-40-sup-06.ogg"}

local tail = ")/arccw_uc/common/10x25/"
local fire10dist = {tail .. "fire-dist-10x25-pistol-ext-01.ogg", tail .. "fire-dist-10x25-pistol-ext-02.ogg", tail .. "fire-dist-10x25-pistol-ext-03.ogg", tail .. "fire-dist-10x25-pistol-ext-04.ogg", tail .. "fire-dist-10x25-pistol-ext-05.ogg", tail .. "fire-dist-10x25-pistol-ext-06.ogg"}
local common = ")/arccw_uc/common/"

local fire10distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

ATT.ActivateElements = {"ur_mp5_caliber_10auto", "ur_mp5_mag_waffle", "ur_mp5_cal_10mm"}

ATT.ShootSound = fire10
ATT.ShootSoundSilenced = fire10sup
ATT.DistantShootSound = fire10dist
ATT.DistantShootSoundIndoor = fire10distint
