ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_410.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_410.compactname")
ATT.Icon = Material("entities/att/uc_bullets/20g.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_410.description")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_410.printname.variant1") end
ATT.CustomPros = {
    ["ur.deagle.410.1"] = "",
}

ATT.CustomCons = {
    ["ur.deagle.410.2"] = "",
}

ATT.Category = "ur_deagle_caliber"
ATT.SortOrder = -1
ATT.Num = 4
ATT.RangeMaxMult = 0.5
ATT.Spread = 35 * ARC9.UC.MOA
ATT.Spread_Priority = 0
ATT.ClipSizeMult = 1.15
ATT.RecoilMult = 0.75
ATT.DamageMaxMult = 72 / 70
ATT.DamageMinMult = 20 / 17
ATT.HullSize = 0.1
ATT.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun
ATT.Penetration = 1
ATT.UC_IsShotgun = true
ATT.Ammo = "buckshot"
ATT.ShellModel = "models/weapons/arccw/uc_shells/410bore.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.ShotgunShellSoundsTable
ATT.Class = "ur_deagle_caliber_410.class"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
local tail = ")/arccw_uc/common/357mag/"
ATT.RangeMinMult = 0.5
ATT.ActivateElements = {"ur_deagle_caliber_410"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_10.ogg"
    else
        return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"}
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"} end
end

ATT.UC_DefaultSlots = {
    [6] = {
        Name = "ur_deagle_caliber_410.slot6",
        Icon = Material("entities/att/acwatt_ur_deagle_mag_7.png", "mips smooth")
    },
    [9] = {
        Name = "ur_deagle_caliber_410.slot9",
        Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    },
}
