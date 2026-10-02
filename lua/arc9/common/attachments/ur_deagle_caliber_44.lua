ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_44.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_44.compactname")
ATT.Icon = Material("entities/att/uc_bullets/44magnum.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_44.description")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_44.printname.variant1") end
ATT.Category = "ur_deagle_caliber"
ATT.ClipSizeMult = 1.15
ATT.RecoilMult = 0.85
ATT.DamageMaxMult = 75 / 80
ATT.DamageMinMult = 16 / 12
ATT.SpeedMultShooting = 1.1
ATT.RPMMult = 1 + (1 / 6)
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
ATT.ShellScale = 1
local path = ")^weapons/arccw_ur/sw329/"
local fire44 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
local tail = ")/arccw_uc/common/44mag/"
local fire44dist = {tail .. "fire-dist-44mag-pistol-ext-01.ogg", tail .. "fire-dist-44mag-pistol-ext-02.ogg", tail .. "fire-dist-44mag-pistol-ext-03.ogg", tail .. "fire-dist-44mag-pistol-ext-04.ogg", tail .. "fire-dist-44mag-pistol-ext-05.ogg", tail .. "fire-dist-44mag-pistol-ext-06.ogg"}
ATT.ActivateElements = {"ur_deagle_caliber_44"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return
    else
        return fire44
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return fire44dist end
end
