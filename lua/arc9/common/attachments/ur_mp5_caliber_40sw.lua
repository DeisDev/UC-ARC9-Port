ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_40sw")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.SortOrder = 100
ATT.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
ATT.Category = "ur_mp5_caliber"

ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur.calibre.40_sw")

ATT.DamageMinMult = 1.35
ATT.RangeMinMult = 0.75
ATT.RecoilMult = 1.15
ATT.ShellScale = 1.1

local path = ")weapons/arccw_ur/mp5/"
local fire40 = {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
local fire40sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}

local tail = ")/arccw_uc/common/40sw/"
local fire40dist = {tail .. "fire-dist-40sw-pistol-ext-01.ogg", tail .. "fire-dist-40sw-pistol-ext-02.ogg", tail .. "fire-dist-40sw-pistol-ext-03.ogg", tail .. "fire-dist-40sw-pistol-ext-04.ogg", tail .. "fire-dist-40sw-pistol-ext-05.ogg", tail .. "fire-dist-40sw-pistol-ext-06.ogg"}
local common = ")/arccw_uc/common/"

local fire40distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

ATT.ActivateElements = {"ur_mp5_caliber_40sw", "ur_mp5_mag_waffle", "ur_mp5_cal_40sw"}

ATT.ShootSound = fire40
ATT.ShootSoundSilenced = fire40sup
ATT.DistantShootSound = fire40dist
ATT.DistantShootSoundIndoor = fire40distint
