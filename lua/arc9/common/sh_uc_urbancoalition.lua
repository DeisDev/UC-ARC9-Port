-- Urban Coalition shared data and helpers for ARC9.

ARC9.UC = ARC9.UC or {}

hook.Add("Initialize", "ARC9_UC_Plinking", function()
    game.AddAmmoType({
        name = "plinking",
    })
end)

sound.Add({
    name = "DB_ADD",
    channel = CHAN_AUTO,
    volume = 1.0,
    level = 100,
    sound = {"^arccw_uc/common/db_add_1.ogg", "^arccw_uc/common/db_add_2.ogg", "^arccw_uc/common/db_add_3.ogg"}
})

-- Minimum seconds between custom color updates per player.
ARC9.UC.CustColorUpdateInterval = 5

CreateConVar("arc9_uc_infiniteubwammo", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Infinite underbarrel weapon ammo.")
CreateConVar("arc9_uc_apobjmult", 3, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Damage multiplier against vehicles and objects.")

game.AddParticles("particles/uc_muzzleflashes.pcf")
PrecacheParticleSystem("muzzleflash_1")
PrecacheParticleSystem("muzzleflash_shotgun")
PrecacheParticleSystem("muzzleflash_m79")
PrecacheParticleSystem("muzzleflash_suppressed")
game.AddParticles("particles/muzzleflash_dragonsbreath.pcf")
PrecacheParticleSystem("muzzleflash_dragonbreath")
game.AddParticles("particles/uo_explosions_fas2.pcf")
PrecacheParticleSystem("explosion_HE_m79_fas2")
PrecacheParticleSystem("explosion_he_grenade_fas2")
PrecacheParticleSystem("explosion_HE_claymore_fas2")
PrecacheParticleSystem("explosion_grenade_fas2")

-- Unit conversions from ArcCW values.

-- ArcCW spreads bullets up to MOA * (10 / 180 / 60) radians from the aim point.
-- ARC9 spreads them up to Spread * 45 * sqrt(2) degrees, with the same radial distribution.
ARC9.UC.MOA = (10 / 180 / 60) * (180 / math.pi) / (45 * math.sqrt(2))
-- ArcCW dispersion uses the same scale divided by 10.
ARC9.UC.Dispersion = ARC9.UC.MOA / 10

-- Meters (ArcCW range and m/s velocity) to Hammer units.
ARC9.UC.Meter = 1 / ARC9.HUToM

-- ArcCW turns the view by 1.5 * Recoil degrees per shot; ARC9 by 2.5 * Recoil * RecoilUp.
ARC9.UC.Recoil = 1.5 / 2.5

-- ARC9 drives safety and sprinting through the same pose blend.
function ARC9.UC.SprintPos(wep, value)
    if wep:GetSafe() then return wep:GetProcessedValue("RestPos", true) end
    return value
end

function ARC9.UC.SprintAng(wep, value)
    if wep:GetSafe() then return wep:GetProcessedValue("RestAng", true) end
    return value
end

ARC9.UC.BodyDamageMults = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1.15,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

ARC9.UC.BodyDamageMults_Shotgun = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

ARC9.UC.RifleAmmoTypes = {
    ["smg1"] = true,
    ["ar2"] = true,
    ["SniperPenetratedRound"] = true
}

ARC9.UC.PistolAmmoTypes = {
    ["pistol"] = true,
    ["357"] = true,
    ["plinking"] = true
}

local common = ")^/arccw_uc/common/"
ARC9.UC.DrawSounds = {
    {s = common .. "raise.ogg", t = 0},
    {s = common .. "shoulder.ogg", t = 0.15},
    {s = common .. "rattle.ogg", t = 0.2},
}

ARC9.UC.HolsterSounds = {
    {s = common .. "rattle.ogg", t = 0},
    {s = common .. "cloth_6.ogg", t = 0.2},
}

-- Muzzle velocity in m/s below which suppressed fire has no distant tail.
ARC9.UC.SubsonicThreshold = 340

-- Refer to http://www.ballisticsbytheinch.com/ for muzzle velocity per barrel length if possible
ARC9.UC.StdDmg = {
    -- Pistol/plinking calibers
    ["22lr"] = {
        max = 12,
        min = 7,
        pen = 3,
        vel = 330
    },
    ["9mm"] = {
        max = 30,
        min = 17,
        pen = 6,
        vel = 380
    },
    ["10mm"] = {
        max = 35,
        min = 20,
        pen = 8,
        vel = 400
    },
    ["380acp"] = {
        max = 30,
        min = 15,
        pen = 3,
        vel = 390
    },
    ["40sw"] = {
        max = 30,
        min = 23,
        pen = 8,
        vel = 340
    },
    ["45acp"] = {
        max = 45,
        min = 15,
        pen = 9,
        vel = 250
    },
    ["357sig"] = {
        max = 33,
        min = 17,
        pen = 6,
        vel = 440
    },
    -- Magnum calibers
    ["357"] = {
        max = 60,
        min = 20,
        pen = 9,
        vel = 430
    },
    ["44"] = {
        max = 75,
        min = 16,
        pen = 10,
        vel = 360
    },
    ["50ae"] = {
        max = 80,
        min = 12,
        pen = 12,
        vel = 450
    },
    ["50beo"] = {
        max = 80,
        min = 20,
        pen = 12,
        vel = 540
    },
    -- Carbine/rifle calibers
    ["57fn"] = {
        max = 28,
        min = 20,
        pen = 15,
        vel = 910
    }, -- 5.7x28mm FN
    ["556"] = {
        max = 34,
        min = 20,
        pen = 14,
        vel = 910
    },
    ["300blk"] = {
        max = 40,
        min = 15,
        pen = 10,
        vel = 310
    },
    ["545"] = {
        max = 40,
        min = 20,
        pen = 12,
        vel = 880
    },
    ["762_39"] = {
        max = 50,
        min = 25,
        pen = 16,
        vel = 730
    }, -- 7.62x39, not 7.62x51 NATO
    ["762_51"] = {
        max = 65,
        min = 35,
        pen = 20,
        vel = 850
    }, -- 7.62x51 NATO
    ["366"] = {
        max = 60,
        min = 30,
        pen = 18,
        vel = 600
    }, -- .366 TKM
    -- Shotgun calibers
    ["12g_p"] = {
        max = 20,
        min = 13,
        pen = 2,
        num = 8,
        vel = 400
    }, -- Pump
    ["12g_s"] = {
        max = 18,
        min = 10,
        pen = 2,
        num = 8,
        vel = 400
    }, -- Semi
    ["410b"] = {
        max = 18,
        min = 5,
        pen = 2,
        vel = 400
    },
    -- Sniper calibers
    ["338"] = {
        max = 85,
        min = 160,
        pen = 36,
        vel = 1000
    },
    ["300"] = {
        max = 44,
        min = 85,
        pen = 24,
        vel = 950
    },
    ["50bmg"] = {
        max = 104,
        min = 180,
        pen = 46,
        vel = 920
    },
}

function ARC9.UC.CalConv(from, to, stat)
    return math.Round(ARC9.UC.StdDmg[to][stat] / ARC9.UC.StdDmg[from][stat], 2)
end

-- Halve the magnification because
-- real people have like 180 degrees of vision AND
-- it's too high to be useful and
-- games like to make it shorter why shouldn't we
function ARC9.UC.HalfScope(num)
    return (num - 1) / 2 + 1
end

-- ArcCW HolosightSize is a 2D reticle of HolosightSize * 4% of the screen height.
-- ARC9 draws a quad HoloSightSize units wide, 9000 units ahead, in the viewmodel camera.
function ARC9.UC.HoloSize(size, vmfov)
    return size * 0.04 * 9000 * 2 * 0.75 * math.tan(math.rad((vmfov or 75) / 2))
end

-- ArcCW renders magnified optics at the player FOV / magnification / 1.2. ARC9 divides by RTScopeMagnification alone.
function ARC9.UC.ScopeMag(num)
    return ARC9.UC.HalfScope(num) * 1.2
end

-- ArcCW draws a magnified reticle HolosightSize * 4% of the screen height.
-- ARC9 draws a quad 4 * RTScopeReticleScale units wide in a 90 degree camera, about one eye relief ahead.
-- Approximate: ARC9 measures from the back of the scope model, not the sight position.
function ARC9.UC.ReticleScale(size, eyerelief)
    return size * 0.04 * 1.5 * eyerelief / 4
end

-- Scope models whose lens shares the body material cannot use RTScopeSubmatIndex.
-- ArcCW drew a separate lens piece model on top of the scope while aiming; this does the same with the ARC9 scope picture.
-- Pair with RTScopeSubmatIndex = ARC9.UC.NoLensIndex and Blur = false on the sights.
ARC9.UC.NoLensIndex = 31

if CLIENT then
    local rtmat = Material("effects/arc9/rt")

    function ARC9.UC.ScopePiece(piecemodel)
        return function(wep, model, wm)
            if wm or wep.RTScopeModel != model or wep:GetSightAmount() <= 0 then return end

            local piece = model.UC_Piece
            if !IsValid(piece) then
                piece = ClientsideModel(piecemodel)
                if !IsValid(piece) then return end
                piece:SetNoDraw(true)
                if model.Scale then
                    local scale = Matrix()
                    scale:Scale(model.Scale)
                    piece:EnableMatrix("RenderMultiply", scale)
                end
                model.UC_Piece = piece
                table.insert(ARC9.CSModelPile, {Model = piece, Weapon = wep, Version = wep.ModelVersion})
            end

            piece:SetPos(model:GetPos())
            piece:SetAngles(model:GetAngles())
            piece:SetupBones()

            -- ArcCW stencilled the piece over the scope regardless of depth
            cam.IgnoreZ(true)
            render.MaterialOverride(rtmat)
            piece:DrawModel()
            render.MaterialOverride()
            cam.IgnoreZ(false)
        end
    end
end

-- Attachment name at load time, used for spawn menu entities. The customize menu looks phrases up itself.
function ARC9.UC.AttName(att)
    if ARC9:UseTrueNames() then
        local truename = ARC9:GetPhrase(att .. ".printname.true")
        if truename then return truename end
    end

    return ARC9:GetPhrase(att .. ".printname") or att
end

-- ARC9's slot buttons use DefaultCompactName for uninstalled parts.
function ARC9.UC.UpdateSlotInfo(wep)
    local defaults = baseclass.Get(wep:GetClass()).Attachments
    for index, slot in ipairs(wep.Attachments) do
        local original = defaults[index]
        slot.DefaultName = original.DefaultName
        slot.DefaultCompactName = original.DefaultName
        slot.DefaultIcon = original.DefaultIcon
    end
    for _, slot in ipairs(wep.Attachments) do
        local attachment = slot.Installed and ARC9.GetAttTable(slot.Installed)
        for index, data in pairs(attachment and attachment.UC_DefaultSlots or {}) do
            local target = wep.Attachments[index]
            target.DefaultName = ARC9:GetPhrase(data.Name)
            target.DefaultCompactName = target.DefaultName
            target.DefaultIcon = data.Icon
        end
    end
end

function ARC9.UC.PostModify(wep, toggleonly)
    ARC9.UC.UpdateSlotInfo(wep)
    ARC9.UC.UpdateRailPositions(wep)
    return baseclass.Get("arc9_base").PostModify(wep, toggleonly)
end

function ARC9.UC.BuildSubAttachments(wep, tree)
    baseclass.Get("arc9_base").BuildSubAttachments(wep, tree)
    for index, slot in ipairs(wep.Attachments) do
        if !slot.UC_RailMin then continue end
        local value = tree[index] and tree[index].UC_Rail
        if value == nil then value = 0.5 end
        assert(isnumber(value) and value == value, "Invalid UC rail position")
        slot.UC_Rail = math.Clamp(value, 0, 1)
    end
    ARC9.UC.UpdateRailPositions(wep)
    ARC9.UC.UpdateSlotInfo(wep)
end

function ARC9.UC.UpdateRailPositions(wep)
    local hasRails = false
    for _, slot in ipairs(wep.Attachments) do
        if !slot.UC_RailMin then continue end
        hasRails = true
        slot.Pos = LerpVector(slot.UC_Rail or 0.5, slot.UC_RailMin, slot.UC_RailMax)
    end
    if !hasRails then return end

    if !wep.UC_RailElements then
        wep.AttachmentElements = table.Copy(wep.AttachmentElements)
        wep.UC_RailElements = true
    end
    for _, element in pairs(wep.AttachmentElements) do
        for index, mod in pairs(element.AttPosMods or {}) do
            if mod.UC_RailMin then
                mod.Pos = LerpVector(wep.Attachments[index].UC_Rail or 0.5, mod.UC_RailMin, mod.UC_RailMax)
            end
        end
    end
end

-- Rail weapons append the position to each node in ARC9's attachment message.
function ARC9.UC.SendRailTree(wep, tree)
    baseclass.Get("arc9_base").SendAttachmentTree(wep, tree)
    net.WriteUInt(math.Round(math.Clamp(tree and tree.UC_Rail or 0.5, 0, 1) * 10000), 16)
end

function ARC9.UC.ReceiveRailTree(wep)
    local tree = baseclass.Get("arc9_base").ReceiveAttachmentTree(wep)
    tree.UC_Rail = math.min(net.ReadUInt(16), 10000) / 10000
    return tree
end

function ARC9.UC.ToggleSound(wep, toggleSound)
    local slot = wep.AttInfoBarAttSlot
    local attachment = slot and slot.Installed and ARC9.GetAttTable(slot.Installed)
    if attachment and attachment.UC_ToggleSound then return attachment.UC_ToggleSound end
end

function ARC9.UC.ToggleSoundThink(wep)
    if !CLIENT or wep.UC_LastToggleSelection == wep.AttInfoBarAtt then return end
    wep.UC_LastToggleSelection = wep.AttInfoBarAtt
    wep:ClearLongCache()
end

function ARC9.UC.SetupDataTables(wep)
    baseclass.Get("arc9_base").SetupDataTables(wep)
    wep:NetworkVar("Int", "UCJamCount")
    wep:NetworkVar("Int", "UCJamDeviation")
end

-- ArcCW samples a normal deviation once per malfunction cycle, then counts shots.
-- Keep that distribution instead of ARC9's independent chance on every shot.
function ARC9.UC.RollJam(wep)
    if !wep:GetProcessedValue("Malfunction", true) then return end
    if wep:Clip1() == 0 and wep.MalfunctionNeverLastShoot then return end

    local mean = wep:GetProcessedValue("MalfunctionMeanShotsToFail")
    local count = wep:GetUCJamCount()
    if count == 0 then
        local frequency = GetConVar("arc9_mod_malfunction"):GetFloat()
        local variance = mean * math.Clamp(wep:GetProcessedValue("UC_MalfunctionVariance") * math.max(1, math.sqrt(math.max(0, frequency))), 0, 1)
        local radius = util.SharedRandom("uc_jam_radius", 0.00000001, 1, wep:EntIndex())
        local angle = util.SharedRandom("uc_jam_angle", 0, 2 * math.pi, wep:EntIndex())
        wep:SetUCJamDeviation(math.ceil(math.sqrt(-2 * variance * math.log(radius)) * math.cos(angle)))
    end

    if count < mean + wep:GetUCJamDeviation() then
        wep:SetUCJamCount(count + 1)
        return false
    end

    wep:SetUCJamCount(0)
    wep:SetUCJamDeviation(0)
    if wep:GetProcessedValue("MalfunctionJam", true) then wep:SetJammed(true) end
    if wep:GetProcessedValue("MalfunctionExitSights", true) then wep:ExitSights() end
    wep:PlayAnimation("jam", 1, true)
    wep:PlayTranslatedSound({
        name = "jam",
        sound = wep:RandomChoice(wep:GetProcessedValue("MalfunctionSound", true)),
        channel = ARC9.CHAN_FIDDLE,
    })
    wep:SetNextPrimaryFire(CurTime() + wep:GetProcessedValue("MalfunctionWait", true))
    wep:SetNeedsCycle(false)
    return true
end

-- IKTimeLine from ArcCW's LHIK timings for an animation lasting `time` seconds.
-- ArcCW blends the left hand off the gun over LHIKEaseIn until LHIKIn, and back on over
-- LHIKEaseOut until LHIKOut before the end. A zero LHIKIn or LHIKOut means an instant switch.
-- ArcCW puts the hand back once the animation ends; ARC9 keeps the last value, so end at 1
-- unless `hold` is set for animations that chain into another one (shotgun reload stages).
function ARC9.UC.LHIK(time, lhikin, easein, lhikout, easeout, hold)
    lhikin = lhikin or 0.1
    lhikout = lhikout or 0.1
    easein = easein or lhikin
    easeout = easeout or lhikout

    local tl = {}

    if lhikin == 0 then
        table.insert(tl, {t = 0, lhik = 0})
    else
        table.insert(tl, {t = 0, lhik = 1})
        table.insert(tl, {t = (lhikin - easein) / time, lhik = 1})
        table.insert(tl, {t = lhikin / time, lhik = 0})
    end

    if lhikout == 0 and hold then
        table.insert(tl, {t = 1, lhik = 0})
    elseif lhikout == 0 then
        table.insert(tl, {t = 0.999, lhik = 0})
        table.insert(tl, {t = 1, lhik = 1})
    else
        table.insert(tl, {t = (time - lhikout) / time, lhik = 0})
        table.insert(tl, {t = (time - (lhikout - easeout)) / time, lhik = 1})
    end

    return tl
end

-- Move the support hand out of view, with the original animation timeline restoring it for reloads.
function ARC9.UC.HideLeftHand(wep, data)
    if !CLIENT or data.model != wep:GetVM() then return end
    local model = data.model
    model.UC_LeftHandWeapon = wep
    if model.UC_LeftHandCallback then return end

    model.UC_LeftHandCallback = model:AddCallback("BuildBonePositions", function(vm)
        local weapon = vm.UC_LeftHandWeapon
        if !IsValid(weapon) or !weapon:GetValue("UC_HideLeftHand") then
            vm:RemoveCallback("BuildBonePositions", vm.UC_LeftHandCallback)
            vm.UC_LeftHandCallback = nil
            vm.UC_LeftHandWeapon = nil
            return
        end
        local owner = weapon:GetOwner()
        if !IsValid(owner) or owner:GetActiveWeapon() != weapon then return end

        local delta = 1
        local animation = weapon.Animations[weapon:GetIKAnimation()]
        local timeline = animation and animation.IKTimeLine
        local duration = weapon:GetIKTime()
        if timeline and #timeline > 0 and duration > 0 then
            local cycle = math.Clamp((CurTime() - weapon:GetIKTimeLineStart()) / duration, 0, 1)
            local previous = {t = 0, lhik = 0}
            delta = timeline[#timeline].lhik or 0
            for _, stage in ipairs(timeline) do
                if stage.t > cycle then
                    local fraction = (cycle - previous.t) / (stage.t - previous.t)
                    delta = Lerp(1 - (1 - fraction) ^ 2, previous.lhik or 0, stage.lhik or 0)
                    break
                end
                previous = stage
            end
        end

        local angles = owner:EyeAngles()
        local offset = (angles:Up() * -12 - angles:Forward() * 12 - angles:Right() * 4) * delta
        for _, name in ipairs(ARC9.LHIKBones) do
            local bone = vm:LookupBone(name)
            if !bone then continue end
            local matrix = vm:GetBoneMatrix(bone)
            if !matrix then continue end
            matrix:SetTranslation(matrix:GetTranslation() + offset)
            vm:SetBoneMatrix(bone, matrix)
        end
    end)
end

-- RecoilHook from an ArcCW ShotRecoilTable: recoil multiplier keyed by the burst count when
-- the shot fires (0 for the first shot, so [1] is the second shot, as in ArcCW).
function ARC9.UC.ShotRecoil(tbl)
    return function(wep, recoil)
        local mult = tbl[wep:GetBurstCount()]
        if mult then return recoil * mult end
    end
end

-- TriviaHook that replaces one trivia line, e.g. the calibre of a conversion kit.
function ARC9.UC.TriviaHook(key, value)
    return function(wep, trivia)
        local t = table.Copy(trivia)
        t[key] = value
        return t
    end
end

-- HookP_NameChange: ARC9 resets the name to the base PrintName after applying attachments,
-- so read the processed names here to keep TrueNames and element name overrides.
function ARC9.UC.NameChange(wep, name)
    if ARC9:UseTrueNames() then
        return wep:GetValue("TrueName") or name
    end

    return wep:GetValue("PrintName") or name
end

-- ArcCW treats a gun as a shotgun when it fires several projectiles or says so explicitly.
function ARC9.UC.IsShotgun(wep)
    local shotgun = wep:GetValue("UC_IsShotgun")
    if shotgun != nil then return shotgun end

    return (wep.Num or 1) > 1
end

function ARC9.UC.IsManualAction(wep)
    return wep:GetValue("ManualAction") == true
end

function ARC9.UC.GetAmmoType(wep)
    return wep:GetValue("Ammo")
end

-- Muzzle velocity in m/s.
function ARC9.UC.GetMuzzleVelocity(wep)
    return wep:GetValue("PhysBulletMuzzleVelocity") * ARC9.HUToM
end

-- Product of every affector's value for a multiplier key, so a hook can undo it.
function ARC9.UC.GetMultProduct(wep, key)
    local mult = 1

    for _, affector in ipairs(wep:GetAllAffectors()) do
        local v = affector[key]
        if isnumber(v) then mult = mult * v end
    end

    return mult
end

-- Hook_GetShootEntData: records the weapon's damage on fired grenades, as ArcCW did for rockets.
function ARC9.UC.ShootEntDamage(wep, data)
    local dmg = wep:GetProcessedValue("DamageMax")
    local rand = wep:GetProcessedValue("DamageRand", true) or 0

    if rand > 0 then
        dmg = dmg * math.Rand(1 - rand, 1 + rand)
    end

    data.UC_Damage = dmg
end

-- Underbarrel shots keep their own tails; ArcCW played them outside the weapon's sound logic.
local function IsDistantSound(wep, data)
    return !wep:GetUBGL() and (data.name == "shootdistant" or data.name == "shootdistantindoor")
end

-- HookP_TranslateSound: suppressed subsonic fire has no distant tail.
function ARC9.UC.SubsonicTail(wep, data)
    if !IsDistantSound(wep, data) then return end

    if wep:GetProcessedValue("Silencer", true) and ARC9.UC.GetMuzzleVelocity(wep) < ARC9.UC.SubsonicThreshold then
        data.sound = nil
        return data
    end
end

-- HookP_TranslateSound: no distant tail at all.
function ARC9.UC.NoDistantTail(wep, data)
    if !IsDistantSound(wep, data) then return end

    data.sound = nil
    return data
end

local infiniteubwammo = GetConVar("arc9_uc_infiniteubwammo")

-- InfiniteAmmoHookUBGL: underbarrel weapons take no reserve ammo while arc9_uc_infiniteubwammo is on.
function ARC9.UC.InfiniteUBWAmmo(wep, infinite)
    return infiniteubwammo:GetBool()
end

-- ArcCW underbarrel shots use their own fixed spread, without primary-weapon dispersion.
function ARC9.UC.UBGLSpread(wep, spread)
    if wep:GetUBGL() then return wep:GetValue("Spread", nil, "UBGL") end
end

-- ARC9's hitscan callback omits the secondary flag; physical bullets retain it in flight.
function ARC9.UC.AfterShotFunction(wep, tr, dmg, range, penleft, alreadypenned, secondary)
    local current = wep:GetUBGL()
    if secondary == nil then secondary = current end
    if secondary != current then wep:ClearLongCache() end
    baseclass.Get("arc9_base").AfterShotFunction(wep, tr, dmg, range, penleft, alreadypenned, secondary)
    if secondary != current then wep:ClearLongCache() end
end

-- ARC9's stock input gate only checks its global infinite-ammo convar.
-- Keep the same switch behavior while honoring the UC underbarrel option.
function ARC9.UC.ThinkUBGL(wep)
    if !wep:GetValue("UBGL") or wep:GetProcessedValue("UBGLInsteadOfSights", true) then return end

    local ucInfinite = infiniteubwammo:GetBool()
    if wep.UC_InfiniteUBWAmmo != ucInfinite then
        wep.UC_InfiniteUBWAmmo = ucInfinite
        wep:ClearLongCache()
    end

    local owner = wep:GetOwner()
    local infinite = ucInfinite or GetConVar("arc9_infinite_ammo"):GetBool()
    if wep:Clip2() == 0 and !infinite and owner:GetAmmoCount(wep.Secondary.Ammo) == 0 then
        if wep:GetUBGL() then wep:ToggleUBGL(false) end
        return
    end

    if !(owner:KeyDown(IN_USE) and owner:KeyPressed(IN_ATTACK2)) and !owner:KeyPressed(ARC9.IN_UBGL) then return end
    if wep.NextUBGLSwitch and wep.NextUBGLSwitch > CurTime() then return end

    wep.NextUBGLSwitch = CurTime() + (wep.UBGLToggleTime or 1)
    wep:ToggleUBGL(!wep:GetUBGL())
end

-- DrawFunc: underbarrel launchers switch to their classic mount (bodygroup 1) when the weapon asks for it.
function ARC9.UC.ClassicMount(key)
    return function(wep, model)
        model:SetBodygroup(1, wep:GetValue(key) and 1 or 0)
    end
end

local cachepaths = {
    "sound/weapons/arccw/",
    "sound/weapons/arccw_ud/",
    "sound/weapons/arccw_ur/",
    "sound/weapons/arccw_uo/",
    "sound/weapons/arccw_uc_ar57/",
    "sound/weapons/arccw_uc_galil/",
    "sound/weapons/arccw_uc_lynx/",
    "sound/weapons/arccw_uc_usp/",
    "sound/arccw_uc/",
    "models/weapons/arccw/",
    "models/items/arccw/",
    "models/uc/",
    "sound/uc/",
}

local cacheexts = {
    ["ogg"] = true,
    ["wav"] = true,
    ["mp3"] = true,
    ["mdl"] = true,
}

-- Every Urban Coalition sound and model file, for the asset caching commands.
function ARC9.UC.FindCacheAssets()
    local list = {}

    local function recurse(path)
        local files, directories = file.Find(path .. "*", "GAME")
        for _, fie in ipairs(files) do
            if cacheexts[string.GetExtensionFromFilename(fie)] then
                table.insert(list, path .. fie)
            end
        end
        for _, dir in ipairs(directories) do
            recurse(path .. dir .. "/")
        end
    end

    for _, path in ipairs(cachepaths) do
        recurse(path)
    end

    return list
end

-- Armor-piercing rounds deal extra damage to objects and metal. ARC9 sets bullet damage after
-- Hook_BulletImpact, so the hit is tagged here and the damage scaled when it lands this tick.
local apconvar = GetConVar("arc9_uc_apobjmult")

function ARC9.UC.APBulletImpact(wep, data)
    if wep:GetUBGL() then return end
    local tr = data.tr
    local ent = tr.Entity
    if !IsValid(ent) then return end
    if tr.MatType != MAT_METAL and (ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) then return end

    ent.UC_APHit = {mult = apconvar:GetFloat(), time = CurTime()}

    local eff = EffectData()
    eff:SetOrigin(tr.HitPos)
    util.Effect("cball_bounce", eff)
end

hook.Add("EntityTakeDamage", "ARC9_UC_APDamage", function(ent, dmginfo)
    local hit = ent.UC_APHit
    if !hit then return end

    ent.UC_APHit = nil
    if hit.time == CurTime() then
        dmginfo:ScaleDamage(hit.mult)
    end
end)

-- Lets an attachment reject a weapon with ATT.UC_Compatible(wep, data) returning false.
hook.Add("ARC9_Hook_BlockAttachment", "ARC9_UC_Compatible", function(wep, data)
    if !istable(data) or !data.att then return end

    local atttbl = ARC9.GetAttTable(data.att)
    if atttbl and atttbl.UC_Compatible and atttbl.UC_Compatible(wep, data) == false then
        return false
    end
end)
