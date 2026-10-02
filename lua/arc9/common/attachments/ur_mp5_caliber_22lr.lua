ATT.PrintName = ARC9.UC.AttName("ur_mp5_caliber_22lr")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
ATT.Category = "ur_mp5_caliber"
ATT.SortOrder = -1

ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
ATT.Ammo = "plinking"

ATT.DamageMaxMult = 0.4
ATT.DamageMinMult = 0.4

ATT.RecoilMult = 0.25
ATT.VisualRecoilMult = 0.25
ATT.PenetrationMult = 0.1
ATT.SpeedMultShooting = 1.2

ATT.PhysBulletMuzzleVelocity = 320 * ARC9.UC.Meter
ATT.UC_HipDispersionMult = 0.75

ATT.ClipSizeMult = 1.2

ATT.ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.TinyShellSoundsTable

local path = "arccw_uc/common/"

local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}

local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}

local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}

ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.ActivateElements = {"ur_mp5_caliber_22lr", "receiver_lower_semi", "ur_mp5_cal_22lr"}

ATT.ShootSound = fire22
ATT.ShootSoundSilenced = fire22sup
ATT.DistantShootSound = fire22dist
ATT.DistantShootSoundIndoor = fire22distint
