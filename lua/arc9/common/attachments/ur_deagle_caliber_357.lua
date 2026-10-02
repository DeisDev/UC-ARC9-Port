ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_357.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_357.compactname")
ATT.Icon = Material("entities/att/uc_bullets/357magnum.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_357.description")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_357.printname.variant1") end
local path = ")^weapons/arccw_ur/sw586/"
local fire357 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
local tail = ")/arccw_uc/common/357mag/"
local fire357dist = {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"}
ATT.Category = "ur_deagle_caliber"
ATT.ClipSizeMult = 1.3
ATT.RecoilMult = 0.7
ATT.DamageMaxMult = 60 / 80
ATT.DamageMinMult = 20 / 12
ATT.SpeedMultShooting = 1.2
ATT.RPMMult = 1 + (1 / 3)
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
ATT.ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
ATT.ShellScale = 1
ATT.ActivateElements = {"ur_deagle_caliber_357"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return
    else
        return fire357
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return fire357dist end
end
