ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_hk33.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_rec_hk33.compactname")
if not ARC9:UseTrueNames() then
    ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_hk33.printname.variant1")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_rec_hk33.compactname.variant1")
end

ATT.Description = ARC9:GetPhrase("ur_g3_rec_hk33.description")
ATT.Icon = Material("entities/att/ur_g3/rec_33.png", "smooth mips")
ATT.Category = "ur_g3_rec"
ATT.SortOrder = 12
ATT.ClipSize = 30
ATT.Ammo = "smg1"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_g3_rec_hk33.calibre")
ATT.Class = "ur_g3_rec_hk33.class"
ATT.RPMMult = 650 / 520
ATT.SpeedMultSights = 1.05
ATT.ReloadTimeMult = .95
ATT.RecoilMult = 0.45
ATT.UC_HipDispersionMult = .75
ATT.PenetrationMult = 14 / 20
ATT.DamageMinMult = 20 / 35
ATT.DamageMaxMult = 34 / 65
ATT.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.ShellSoundsTable
ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}

local path = ")weapons/arccw_ur/g3/"
local path1 = ")weapons/arccw_ur/ak/556/"
local fire556 = {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"}
local fire556sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
local tail = ")/arccw_uc/common/556x45/"
local fire556dist = {tail .. "fire-dist-556x45-rif-ext-01.ogg", tail .. "fire-dist-556x45-rif-ext-02.ogg", tail .. "fire-dist-556x45-rif-ext-03.ogg", tail .. "fire-dist-556x45-rif-ext-04.ogg", tail .. "fire-dist-556x45-rif-ext-05.ogg", tail .. "fire-dist-556x45-rif-ext-06.ogg"}
ATT.ActivateElements = {"ur_g3_rec_hk33", "cal_556"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return fire556sup
    else
        return fire556
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return fire556dist end
end

ATT.ClipSize_Priority = 1
ATT.UC_DefaultSlots = {
    [9] = {
        Name = "ur_g3_rec_hk33.slot9",
        Icon = Material("entities/att/ur_g3/mag556_30.png", "mips smooth")
    },
}
