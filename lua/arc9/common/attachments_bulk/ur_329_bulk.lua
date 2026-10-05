do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_barrel_m29.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_barrel_m29.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_barrel_m29.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_329_barrel_m29.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_329_barrel_m29.description")
    ATT.Category = "ur_329_barrel"
    ATT.SortOrder = 6
    ATT.SpreadMult = 0.7
    ATT.RangeMaxMult = 1.5
    ATT.RecoilMult = 0.85
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SwayMult = 1.15
    ATT.UC_HipDispersionMult = 1.1
    ATT.PhysBulletMuzzleVelocityMult = 1.15
    ATT.BarrelLengthAdd = 4
    ATT.RangeMinMult = 1.5
    ATT.ActivateElements = {"ur_329_barrel_m29"}
    ATT.DeployTimeMult = 1.15

    ARC9.LoadAttachment(ATT, "ur_329_barrel_m29")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_barrel_master.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_barrel_master.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_329_barrel_master.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_329_barrel_master.description")
    ATT.Category = "ur_329_barrel"
    ATT.SortOrder = 7
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.6
    ATT.RecoilMult = 0.75
    ATT.AimDownSightsTimeMult = 1.3
    ATT.SprintToFireTimeMult = 1.3
    ATT.SwayMult = 1.4
    ATT.UC_HipDispersionMult = 1.15
    ATT.PhysBulletMuzzleVelocityMult = 1.2
    ATT.SpeedMultSights = .8
    ATT.BarrelLengthAdd = 5
    ATT.RangeMinMult = 1.6
    ATT.ActivateElements = {"ur_329_barrel_master"}
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ur_329_barrel_master")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_barrel_pocket.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_barrel_pocket.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_barrel_pocket.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_329_barrel_m29.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_329_barrel_pocket.description")
    ATT.Category = "ur_329_barrel"
    ATT.SortOrder = 3
    ATT.SpreadMult = 1.3
    ATT.RangeMaxMult = 0.75
    ATT.RecoilMult = 1.3
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SwayMult = 0.85
    ATT.UC_HipDispersionMult = 0.9
    ATT.PhysBulletMuzzleVelocityMult = 0.85
    ATT.BarrelLengthAdd = -1
    ATT.Ignore = true
    ATT.RangeMinMult = 0.75
    ATT.ActivateElements = {"ur_329_barrel_pocket"}
    ATT.DeployTimeMult = 0.75

    ARC9.LoadAttachment(ATT, "ur_329_barrel_pocket")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_44special.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_caliber_44special.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/44special.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_329_caliber_44special.description")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_44special.printname.variant1") end
    ATT.Category = "ur_329_caliber"
    ATT.RangeMaxMult = 0.6
    ATT.RecoilMult = 0.75
    ATT.PhysBulletMuzzleVelocity = 265 * ARC9.UC.Meter
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_329_caliber_44special.calibre")
    local path = "weapons/arccw_ur/sw329/"
    local tail = ")^/arccw_uc/common/44mag/"
    ATT.RangeMinMult = 0.5 * 0.6
    ATT.ActivateElements = {"ur_329_caliber_44special"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return
        else
            return {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg",}
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return {tail .. "fire-dist-44mag-pistol-ext-01.ogg", tail .. "fire-dist-44mag-pistol-ext-02.ogg", tail .. "fire-dist-44mag-pistol-ext-03.ogg", tail .. "fire-dist-44mag-pistol-ext-04.ogg", tail .. "fire-dist-44mag-pistol-ext-05.ogg", tail .. "fire-dist-44mag-pistol-ext-06.ogg"} end
    end

    ARC9.LoadAttachment(ATT, "ur_329_caliber_44special")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_snakeshot.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_caliber_snakeshot.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/44special.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_329_caliber_snakeshot.description")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_snakeshot.printname.variant1") end
    ATT.CustomPros = {
        ["ur.329.snakeshot.1"] = "",
    }

    ATT.CustomCons = {
        ["ur.329.snakeshot.2"] = "",
        ["ur.329.snakeshot.3"] = "",
    }

    ATT.Category = "ur_329_caliber"
    ATT.SortOrder = -1
    ATT.Num = 4
    ATT.Spread = 65 * ARC9.UC.MOA
    ATT.Spread_Priority = 0
    ATT.HullSize = 0.1
    ATT.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun
    ATT.Penetration = 1
    ATT.DamageMaxMult = 70 / 60
    ATT.RangeMaxMult = 0.4
    ATT.PhysBulletMuzzleVelocityMult = 0.6
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
    ATT.RangeMinMult = 2 * 0.4
    ATT.ActivateElements = {"ur_329_caliber_snakeshot", "329_ss"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return "weapons/arccw_ud/glock/fire_supp_10.ogg"
        else
            return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"}
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.UC_DefaultSlots = {
        [6] = {
            Name = "ur_329_caliber_snakeshot.slot6",
            Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_329_caliber_snakeshot")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_329_grip_polymer.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_329_grip_polymer.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_grip_polymer.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_329_grip_polymer.description")
    ATT.Category = "ur_329_grip"
    ATT.Ignore = true
    ATT.SortOrder = 6
    ATT.RecoilMult = 1.2
    ATT.RecoilRandomSideMult = 1.1
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ActivateElements = {"ur_329_grip_polymer"}
    ATT.DeployTimeMult = 0.9

    ARC9.LoadAttachment(ATT, "ur_329_grip_polymer")
end
