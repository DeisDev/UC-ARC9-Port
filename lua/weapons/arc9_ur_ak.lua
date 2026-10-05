SWEP.Base = "arc9_base"
SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.VisualRecoilDoingFunc = ARC9.UC.VisualRecoilDoing
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.BarrelLengthHook = ARC9.UC.BarrelLengthHook
SWEP.SprintLock = ARC9.UC.SprintLock
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.PostModify = ARC9.UC.PostModify
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam
SWEP.SendAttachmentTree = ARC9.UC.SendRailTree
SWEP.ReceiveAttachmentTree = ARC9.UC.ReceiveRailTree
SWEP.UC_MalfunctionVariance = 0.25
if CLIENT then
    function SWEP:ClientInitialize()
        self.CustomizeButtonsOriginal = table.Copy(baseclass.Get("arc9_base").CustomizeButtonsOriginal)
        table.insert(self.CustomizeButtonsOriginal, 3, {
            title = "uc.rails",
            func = ARC9.UC.CreateRailPanel
        })

        self.CustomizeButtons = table.Copy(self.CustomizeButtonsOriginal)
        baseclass.Get("arc9_base").ClientInitialize(self)
    end

    function SWEP:PruneUnnecessaryAttachmentDataRecursive(tree)
        local rail = tree.UC_Rail
        baseclass.Get("arc9_base").PruneUnnecessaryAttachmentDataRecursive(self, tree)
        tree.UC_Rail = rail
    end

    function SWEP:WriteAttachmentTree(tree)
        local result = baseclass.Get("arc9_base").WriteAttachmentTree(self, tree)
        result.UC_Rail = tree and tree.UC_Rail
        return result
    end
end

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ur.title"
SWEP.PrintName = ARC9:GetPhrase("arc9_ur_ak.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_ak.truename")
SWEP.Class = "uc.class.assault_rifle"
SWEP.Description = "arc9_ur_ak.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = "ur.manufacturer.izhmash",
    ["uc.trivia.calibre2"] = "uc.calibre.7_62x39mm_soviet",
    ["uc.trivia.mechanism3"] = "uc.mechanism.gas_operated_rotating_bolt",
    ["uc.trivia.country4"] = "ur.country.soviet_union",
    ["uc.trivia.year5"] = 1959,
}

SWEP.Slot = 2
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.ViewModelFOVBase = 70
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 4, -4),
    Ang = Angle(-12, 0, 180),
    TPIKPos = Vector(-6.9, 4.13, -6.42)
}

SWEP.DefaultBodygroups = "01000080012000"
SWEP.HideBones = {"vm_mag2", "tag_mag2"}
SWEP.BulletBones = {"tag_mag2"}
SWEP.DamageMax = 50
SWEP.DamageMin = 25
SWEP.RangeMin = 30 * ARC9.UC.Meter
SWEP.RangeMax = 300 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true
SWEP.Penetration = 16
SWEP.PenetrationDelta = 0
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 715 * ARC9.UC.Meter
SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults
SWEP.ChamberSize = 1
SWEP.ClipSize = 30
SWEP.ClipSize_Priority = 0
SWEP.Ammo = "ar2"
SWEP.Recoil = 0.75 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.3 / 0.75
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1
SWEP.VisualRecoilUp = 0.75
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1
SWEP.Sway = 0.6 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2
SWEP.RPM = 600
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = -1
    },
    {
        Mode = 1
    }
}

SWEP.Firemodes_Priority = 0
SWEP.ShootPitch = 100
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch
SWEP.ShootVolume = 120
SWEP.ShootPitchVariation = 5
SWEP.ReloadInSights = true
SWEP.ARC9WeaponCategory = ARC9.WEAPON_AR
SWEP.Spread = 5 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 800 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 250 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.FreeAimRadius = 10
SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3
SWEP.MalfunctionMeanShotsToFail = 200
SWEP.MalfunctionWait = 0.5
SWEP.RecoilMultBipod = 1
SWEP.SwayMultBipod = 1
SWEP.Speed = 0.9
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.35
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
SWEP.BarrelLength = 24
SWEP.UC_BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.UC_BarrelOffsetHip = Vector(0, 0, 0)
SWEP.UC_ExtraSightDist = 2
SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3
SWEP.UC_MeleeTime = 1
SWEP.UC_MeleeWaitTime = 1
SWEP.PreBashTimeHook = ARC9.UC.PreBashTime
SWEP.PostBashTimeHook = ARC9.UC.PostBashTime
SWEP.HasAnimation = function(wep, anim, lq)
    if anim == "bash" and wep:GetValue("UC_Bayonet") then anim = "bash_bayonet" end
    return baseclass.Get("arc9_base").HasAnimation(wep, anim, lq)
end
SWEP.UC_DrawTime = 1
SWEP.Hook_TranslateAnimSpeed = ARC9.UC.AnimationSpeed
SWEP.Hook_Think = function(wep)
    ARC9.UC.NearWallThink(wep)
    ARC9.UC.LoopSprintIdle(wep)
end
SWEP.MuzzleParticle = "uc_muzzleflash_6"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
SWEP.ShellScale = 0.666
SWEP.ShellPitch = 90
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.TracerNum = 1
SWEP.TracerColor = Color(255, 225, 200)
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSprint = "passive"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.ActivePos = Vector(0.500000, 0.000000, -1.000000)
SWEP.ActiveAng = Angle(0.000000, 0.000000, 0.000000)
SWEP.SprintPos = Vector(0.000000, 0.000000, -1.000000)
SWEP.SprintAng = Angle(0.000000, 0.000000, 0.000000)
SWEP.CustomizeRotateAnchor = Vector(16, -2.61, -3)
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-4.47, 123.9, 0.77)
SWEP.RestPos = Vector(-0.928419, -1.044439, 0.295272)
SWEP.RestAng = Angle(8.278363, -14.850644, -12.135646)
SWEP.NearWallPos = Vector(-1.131624, -0.788138, 1.240268)
SWEP.NearWallAng = Angle(8.278363, -14.850644, -12.135646)
-- ArcCW drops procedural bob while a sprint animation plays.
SWEP.BobSprintMult = 0
SWEP.SprintVerticalOffset = false
SWEP.UC_CrouchPos = Vector(-1.553516, -2.000000, -2.036317)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -14.000000)
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng
SWEP.IronSights = {
    Pos = Vector(-2.546937, -2.017061, 0.677626),
    Ang = Angle(0.274015, 0.599993, 5.532869),
    Magnification = 1.1,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
}

local path = ")weapons/arccw_ur/ak/"
local path1 = ")weapons/arccw_ur/mp5/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
SWEP.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
SWEP.DryFireSound = path .. "dryfire.ogg"
local tail = ")/arccw_uc/common/762x39/"
SWEP.DistantShootSound = {tail .. "fire-dist-762x39-rif-ext-01.ogg", tail .. "fire-dist-762x39-rif-ext-02.ogg", tail .. "fire-dist-762x39-rif-ext-03.ogg", tail .. "fire-dist-762x39-rif-ext-04.ogg", tail .. "fire-dist-762x39-rif-ext-05.ogg", tail .. "fire-dist-762x39-rif-ext-06.ogg"}
SWEP.DistantShootSoundIndoor = {tail .. "fire-dist-762x39-rif-int-01.ogg", tail .. "fire-dist-762x39-rif-int-02.ogg", tail .. "fire-dist-762x39-rif-int-03.ogg", tail .. "fire-dist-762x39-rif-int-04.ogg", tail .. "fire-dist-762x39-rif-int-05.ogg", tail .. "fire-dist-762x39-rif-int-06.ogg"}
SWEP.DistantShootSoundSilenced = {common .. "sup-tail-01.ogg", common .. "sup-tail-02.ogg", common .. "sup-tail-03.ogg", common .. "sup-tail-04.ogg", common .. "sup-tail-05.ogg", common .. "sup-tail-06.ogg", common .. "sup-tail-07.ogg", common .. "sup-tail-08.ogg", common .. "sup-tail-09.ogg", common .. "sup-tail-10.ogg"}
SWEP.DistantShootSoundSilencedIndoor = {common .. "fire-dist-int-pistol-light-01.ogg", common .. "fire-dist-int-pistol-light-02.ogg", common .. "fire-dist-int-pistol-light-03.ogg", common .. "fire-dist-int-pistol-light-04.ogg", common .. "fire-dist-int-pistol-light-05.ogg", common .. "fire-dist-int-pistol-light-06.ogg"}
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound
SWEP.AttachmentElements = {
    ["barrel_74m"] = {
        Bodygroups = {{1, 3}}
    },
    ["barrel_74m_red"] = {
        Bodygroups = {{1, 10}}
    },
    ["barrel_74m_green"] = {
        Bodygroups = {{1, 11}}
    },
    ["barrel_akm"] = {
        Bodygroups = {{1, 0}}
    },
    ["barrel_alpha"] = {
        Bodygroups = {{1, 7},},
    },
    ["barrel_rpk"] = {
        Bodygroups = {{7, 1}, {8, 2}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 32.2, 2.6),
                Ang = Angle(0, 270, 0),
            }
        },
        IronSights = {
            Pos = Vector(-2.537373, -2.011341, 0.932348),
            Ang = Angle(0.274000, -0.099999, 5.529522),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["barrel_rpk74m"] = {
        Bodygroups = {{1, 5},},
    },
    ["barrel_krinkov"] = {
        Bodygroups = {{1, 6}, {7, 5}, {8, 2}, {4, 1}, {5, 1}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 15, 2.85),
                Ang = Angle(0, 270, 0),
            },
            [7] = {
                Pos = Vector(0, 10, 1.7),
                Ang = Angle(90, -90, -90),
                UC_RailMin = Vector(0, 10, 1.7),
                UC_RailMax = Vector(0, 10, 1.7),
            },
            [8] = {
                Pos = Vector(-0.8, 11.75, 2.9),
                Ang = Angle(-90, 270, 0),
            }
        },
        IronSights = {
            Pos = Vector(-2.531500, -1.989509, 1.184232),
            Ang = Angle(0.120018, -0.999998, 5.527905),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["barrel_vityaz"] = {
        Bodygroups = {{1, 8}, {7, 5}, {8, 2}, {5, 1}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 16.5, 2.85),
                Ang = Angle(0, 270, 0),
            },
            [7] = {
                Pos = Vector(0, 11, 1.7),
                Ang = Angle(90, -90, -90),
                UC_RailMin = Vector(0, 10, 1.7),
                UC_RailMax = Vector(0, 11, 1.7),
            },
            [8] = {
                Pos = Vector(-0.8, 11.75, 2.9),
                Ang = Angle(-90, 270, 0),
            }
        },
        IronSights = {
            Pos = Vector(-2.527175, -2.003582, 1.012891),
            Ang = Angle(0.200005, -0.419997, 5.528534),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["barrel_t56"] = {
        Bodygroups = {{7, 3}, {11, 2}, {8, 2}},
    },
    ["barrel_t56_ext"] = {
        Bodygroups = {{7, 3}, {11, 3}, {8, 2}},
    },
    ["barrel_vepr"] = {
        Bodygroups = {{7, 4}, {8, 2}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 28.5, 2.7),
                Ang = Angle(0, 270, -0),
            }
        },
        IronSights = {
            Pos = Vector(-2.537258, -2.004246, 1.019715),
            Ang = Angle(0.180002, -0.299999, 5.529058),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["ur_ak_hg_vepr"] = {
        Bodygroups = {{1, 9},},
    },
    ["barrel_105"] = {
        Bodygroups = {{7, 2}, {8, 2}},
        AttPosMods = {
            [4] = {
                Pos = Vector(0, 19.9, 2.7),
                Ang = Angle(0, 270, 0),
            }
        },
        IronSights = {
            Pos = Vector(-2.534406, -2.016921, 0.706551),
            Ang = Angle(0.265015, 0.599994, 5.532775),
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    },
    ["barrel_dong"] = {
        Bodygroups = {{1, 2}}
    },
    ["muzzle_akm"] = {
        Bodygroups = {{8, 1}}
    },
    ["muzzle_ak74"] = {
        Bodygroups = {{8, 3}}
    },
    ["muzzle_bayonet"] = {
        Bodygroups = {{11, 1}}
    },
    ["stock_alpha"] = {
        Bodygroups = {{6, 4}, {3, 1},}
    },
    ["stock_aks"] = {
        Bodygroups = {{6, 3}, {3, 1},}
    },
    ["stock_aks_folded"] = {
        Bodygroups = {{6, 10}, {3, 1},}
    },
    ["stock_underfolder"] = {
        Bodygroups = {{6, 2}}
    },
    ["stock_underfolder_folded"] = {
        Bodygroups = {{6, 1}}
    },
    ["stock_ak74m"] = {
        Bodygroups = {{3, 1}, {6, 12}}
    },
    ["stock_ak74m_folded"] = {
        Bodygroups = {{3, 1}, {6, 13}}
    },
    ["stock_rpk"] = {
        Bodygroups = {{6, 5}}
    },
    ["stock_akn"] = {
        Bodygroups = {{6, 0}}
    },
    ["stock_skeletal"] = {
        Bodygroups = {{6, 6}, {3, 1},}
    },
    ["stock_vepr"] = {
        Bodygroups = {{6, 7}, {9, 4}}
    },
    ["stock_none"] = {
        Bodygroups = {{6, 9}, {3, 1},}
    },
    ["mag_762_75"] = {
        Bodygroups = {{2, 1}}
    },
    ["mag_762_bakelite"] = {
        Bodygroups = {{2, 11}}
    },
    ["mag_762_pmag"] = {
        Bodygroups = {{2, 12}}
    },
    ["mag_545_30"] = {
        Bodygroups = {{2, 2}}
    },
    ["mag_556_30"] = {
        Bodygroups = {{2, 10}}
    },
    ["mag_545_45"] = {
        Bodygroups = {{2, 3}}
    },
    ["mag_9mm"] = {
        Bodygroups = {{2, 4}}
    },
    ["mag_366"] = {
        Bodygroups = {{2, 6}}
    },
    ["grip_akm"] = {
        Bodygroups = {{9, 0}}
    },
    ["grip_alpha"] = {
        Bodygroups = {{9, 2}}
    },
    ["cover_ribbed"] = {
        Bodygroups = {{10, 0}}
    },
    ["cover_alpha"] = {
        Bodygroups = {{10, 1}},
        AttPosMods = {
            [1] = {
                Pos = Vector(0, 3.5, 4.68),
                Ang = Angle(0, -90, 0),
            }
        }
    },
    ["mag_545_black"] = {
        Bodygroups = {{2, 9}}
    },
    ["cover_trail"] = {
        Bodygroups = {{4, 4}},
        AttPosMods = {
            [1] = {
                Pos = Vector(0, 8.2, 5.20),
                Ang = Angle(0, -90, 0),
            }
        }
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    if not IsValid(mdl) then return end
    local atts = wep.Attachments
    local optic = atts[1].Installed
    local barrel = atts[2].Installed
    local handguard = atts[3].Installed
    local muzzle = atts[4].Installed
    local cal = atts[5].Installed
    local nativeOptic = optic == "uc_optic_kobra" or optic == "uc_optic_pso1"
    local railedCover = wep:HasElement("cover_rail")
    -- ARC9 applies element bodygroups without slot ordering; magazine choices win over the receiver.
    if atts[6].Installed == "ur_ak_mag_545_45" then
        mdl:SetBodygroup(2, 3)
    elseif atts[6].Installed == "ur_ak_mag_545_black" then
        mdl:SetBodygroup(2, 9)
    end

    if not muzzle or muzzle == "ur_ak_muzzle_bayonet" then
        if barrel == "ur_ak_barrel_krinkov" then
            mdl:SetBodygroup(8, 4)
        elseif not barrel or barrel == "ur_ak_barrel_t56" then
            local intermediate = cal == "ur_ak_cal_545" or cal == "ur_ak_cal_556"
            mdl:SetBodygroup(8, not cal and 1 or (intermediate and 3 or 0))
        end
    elseif muzzle == "ur_ak_muzzle_ak74" then
        mdl:SetBodygroup(8, 3)
    else
        mdl:SetBodygroup(8, barrel and 2 or 0)
    end

    if atts[16].Installed == "ur_ak_charm_tl" and not nativeOptic then
        mdl:SetBodygroup(12, 2)
    else
        mdl:SetBodygroup(12, optic and not railedCover and not nativeOptic and 1 or 0)
    end

    local underbarrel = atts[7].Installed
    if underbarrel and not wep:HasElement("ak_noubs") and barrel ~= "ur_ak_barrel_vityaz" then
        if barrel == "ur_ak_barrel_krinkov" then
            mdl:SetBodygroup(13, 2)
        elseif not handguard or handguard == "ur_ak_hg_type3" then
            mdl:SetBodygroup(1, 13)
        else
            mdl:SetBodygroup(13, 1)
        end
    else
        mdl:SetBodygroup(13, 0)
    end

    if barrel == "ur_ak_barrel_rpk" then
        local deployed = wep:GetBipod() and wep:GetEnterBipodTime() + wep:GetAnimationTime("enter_bipod") * 0.8 <= CurTime()
        mdl:SetBodygroup(7, deployed and 7 or 1)
    end
end

local function Variant(wep)
    local atts = wep.Attachments
    local barrel = string.Replace(atts[2].Installed or "default", "ur_ak_barrel_", "")
    local handguard = string.Replace(atts[3].Installed or "default", "ur_ak_hg_", "")
    local cal = string.Replace(atts[5].Installed or "762", "ur_ak_cal_", "")
    local stock = string.Replace(atts[10].Installed or "default", "ur_ak_stock_", "")
    local fake = not ARC9:UseTrueNames()
    local prefix = fake and "KF" or "AK"
    local middle = ""
    local suffix = fake and "-67" or "M"
    local noNight = wep:HasElement("cover_rail")
    local short = barrel == "krinkov" or barrel == "vityaz"
    local polymer = handguard == "74m" or handguard == "rpk74m"
    local desc = "ur.ak.desc." .. cal
    if atts[14].Installed == "uc_fg_civvy" then
        prefix = fake and "Amur" or "Vepr"
        if cal == "545" then
            suffix = " 5.45"
        elseif cal == "762" then
            suffix = " 7.62"
        elseif cal == "9mm" then
            prefix, suffix = "Saiga", "-9"
        else
            suffix = " ." .. cal
        end
    else
        if cal == "9mm" then
            prefix = fake and "Bogatyr" or "PP"
            suffix = fake and " SMG" or "-19 Vityaz"
        elseif cal == "366" then
            if barrel == "vepr" or string.find(atts[14].Installed or "", "rifling") then
                prefix, suffix = fake and "Amur" or "Vepr", " .366"
            else
                prefix, suffix = fake and "KFN" or "VPO", "-209"
            end
        elseif barrel == "rpk" then
            prefix = fake and "PKF" or "RPK"
            if not fake and cal == "762" then
                suffix = polymer and "-203" or ""
                noNight = noNight or polymer
            elseif not fake and cal == "556" then
                suffix, noNight = "-201", true
            end
        elseif cal == "762" then
            if barrel == "t56" then
                prefix, suffix = fake and "Yucha" or "Type ", fake and " 7" or "56"
                noNight = true
            elseif polymer and stock == "ak74m" then
                suffix, noNight = "-103", true
            end
        elseif cal == "556" then
            suffix = fake and "-45" or (barrel == "105" and "-102" or "-101")
        end

        local akCaliber = cal == "762" or cal == "545"
        if (stock == "underfolder" or stock == "aks") and akCaliber and barrel ~= "105" then
            if cal == "762" and barrel == "t56" then
                suffix = suffix .. "-1"
            elseif cal == "762" and not fake then
                suffix = "MS"
            else
                middle = "S"
            end
        end

        if cal == "545" then
            if polymer and (stock == "ak74m" or barrel == "rpk") then
                suffix, noNight = fake and "-76M" or "-74M", true
            elseif short then
                suffix = fake and "-76" or "-74U"
                if fake then middle = middle .. "U" end
                desc = "ur.ak.desc.74u"
            else
                suffix = fake and "-76" or "-74"
            end
        end

        if akCaliber then
            if barrel == "105" then
                suffix = cal == "545" and "-105" or "-104"
            elseif not noNight and atts[1].Installed then
                suffix = suffix .. "N"
            end
        end
    end

    -- Resolve the complete variant name through one phrase, including stock and optic suffixes.
    local key = string.lower(prefix .. middle .. suffix):gsub("[^%w]", "_")
    return ARC9:GetPhrase("ur.ak.name." .. key), desc
end

SWEP.HookP_NameChange = function(wep, name) return Variant(wep) end
SWEP.HookP_DescriptionChange = function(wep, desc)
    local _, description = Variant(wep)
    return description
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = ARC9:GetPhrase("uc.default.iron_sights"),
        Category = {"optic", "optic_sniper", "ur_ak_optic"},
        Bone = "tag_weapon",
        Pos = Vector(0, 2, 4.92),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = ARC9:GetPhrase("uc.default.16in_standard_barrel"),
        DefaultIcon = Material("entities/att/ur_ak/barrel/std.png", "mips smooth"),
        Category = "ur_ak_barrel",
        Bone = "tag_weapon",
        Pos = Vector(0, 12, 1.9),
        Ang = Angle(90, -90, -90),
        Icon_Offset = Vector(4.5, 0, 1.5),
    },
    {
        PrintName = "uc.slot.handguard",
        DefaultName = ARC9:GetPhrase("ur.default.handguard"),
        DefaultIcon = Material("entities/att/ur_ak/handguards/std.png", "mips smooth"),
        Bone = "tag_weapon",
        Pos = Vector(0, 12, 1.9),
        Ang = Angle(90, -90, -90),
        Icon_Offset = Vector(-0.5, 0, 2.4),
        Category = "ur_ak_hg",
        ExcludeElements = {"barrel_carbine"},
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = ARC9:GetPhrase("uc.default.standard_muzzle"),
        Category = {"muzzle", "ur_ak_muzzle"},
        Bone = "tag_weapon",
        Pos = Vector(0, 24.1, 2.7),
        Ang = Angle(0, 270, 0),
        ExcludeElements = {"ur_ak_nomuzzle"},
    },
    {
        PrintName = "uc.slot.receiver",
        DefaultName = ARC9:GetPhrase("ur.default.receiver"),
        DefaultIcon = Material("entities/att/uc_bullets/762x39.png", "mips smooth"),
        Category = {"ur_ak_cal"},
        Bone = "tag_weapon",
        Pos = Vector(0, 5.8, 2.6),
        Ang = Angle(90, 0, -90),
        UnInstalledElements = {"cal_default"}
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ur_ak_mag"},
        Bone = "vm_mag",
        Pos = Vector(0, 3.37, 1.28),
        DefaultName = ARC9:GetPhrase("uc.default.30_round_mag"),
        DefaultIcon = Material("entities/att/ur_ak/magazines/762_30.png", "mips smooth"),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip", "ur_ak_ub"},
        Bone = "tag_weapon",
        Pos = Vector(0, 12, 1.9),
        Ang = Angle(90, -90, -90),
        UC_RailMin = Vector(0, 10.5, 1.8),
        UC_RailMax = Vector(0, 13.5, 1.8),
        InstalledElements = {"rail_fg"},
        ExcludeElements = {"ak_noubs"},
        MergeSlots = {17},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac"},
        Bone = "tag_weapon",
        Pos = Vector(0, 19.6, 2.1),
        Ang = Angle(0, 270, 0),
        InstalledElements = {"tac"},
    },
    {
        PrintName = "uc.slot.grip",
        Category = {"ur_ak_grip"},
        Bone = "tag_weapon",
        Pos = Vector(0, -1.7, -1.3),
        DefaultName = ARC9:GetPhrase("ur.default.grip"),
        DefaultIcon = Material("entities/att/ur_ak/grip_modern.png", "mips smooth"),
        ExcludeElements = {"stock_vepr"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ur_ak_stock"},
        Bone = "tag_weapon",
        Pos = Vector(0.14, -9.69, 1.38),
        DefaultName = ARC9:GetPhrase("ur.default.stock"),
        DefaultIcon = Material("entities/att/ur_ak/stock/n.png", "mips smooth"),
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = ARC9:GetPhrase("uc.default.fmj"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "uc.slot.powder",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("uc.default.standard_load")
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("uc.default.basic_training")
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("uc.default.standard_internals")
    },
    {
        PrintName = "ur.slot.cover",
        DefaultName = ARC9:GetPhrase("ur.default.cover"),
        DefaultIcon = Material("entities/att/ur_ak/dustcover_stock.png", "mips smooth"),
        Category = {"ur_ak_cover"},
        Bone = "tag_weapon",
        Pos = Vector(0, 1.5, 4.3),
        CosmeticOnly = true,
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm", "ur_ak_charm"},
        CosmeticOnly = true,
        Bone = "tag_weapon",
        Pos = Vector(0.6, 6.7, 2.2),
        Ang = Angle(90, -90, -90),
    },
    {
        Hidden = true,
        PrintName = "uc.slot.ubgl",
        Category = "uc_ubgl",
        Bone = "tag_weapon",
        Pos = Vector(0, 9.9, 2.9),
        Ang = Angle(90, -90, -90),
        InstalledElements = {"rail_fg"},
        ExcludeElements = {"ak_noubs", "uc_noubgl"},
    }
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.733333,
        EventTable = {
            {
                s = ratel,
                t = 0
            },
            {
                s = common .. "raise.ogg",
                t = 0.2
            },
            {
                s = common .. "shoulder.ogg",
                t = 0.2
            },
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.733333,
        EventTable = {
            {
                s = ratel,
                t = 0
            },
        },
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.200000,
        EventTable = {
            {
                s = ratel,
                t = 0
            },
            {
                s = path .. "chback.ogg",
                t = 0.2
            },
            {
                s = path .. "chamber.ogg",
                t = 0.3
            },
            {
                s = common .. "shoulder.ogg",
                t = .6
            },
        },
        IKTimeLine = ARC9.UC.LHIK(1.200000, 0, nil, 0.6, 0.25),
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 0.5,
        EventTable = {
            {
                s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"},
                t = 0,
                v = 0.25
            }
        },
    },
    ["fire_iron"] = {
        Source = {"fire"},
        Time = 0.5,
        EventTable = {
            {
                s = common .. "common_mech_light.ogg",
                t = 0,
                v = 0.5
            },
            {
                s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"},
                t = 0
            }
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.666667,
        MinProgressTime = 1.3,
        EventTable = {
            {
                s = common .. "magpouch.ogg",
                t = 0.0,
                v = 0.45
            },
            {
                s = path .. "reload_start.ogg",
                t = 0.025
            },
            {
                s = rottle,
                t = 0.05
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magrelease.ogg",
                t = 0.4
            },
            {
                s = path .. "magout.ogg",
                t = 0.45
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path .. "magin.ogg",
                t = 0.95
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = rottle,
                t = 1.15
            },
            {
                s = path .. "scrape.ogg",
                t = 1.35
            },
            {
                s = common .. "magpouchin.ogg",
                t = 1.38
            },
            {
                s = path .. "grab.ogg",
                t = 1.9,
                v = 0.45
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.0
            },
            {
                s = path .. "shoulder.ogg",
                t = 2.15
            },
        },
        IKTimeLine = ARC9.UC.LHIK(2.666667, 0.3, nil, 0.65, 0.25),
        MagSwapTime = 1.3,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3.000000,
        MinProgressTime = 2.1,
        MagSwapTime = 2,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magrelease.ogg",
                t = 0.4
            },
            {
                s = path .. "magout.ogg",
                t = 0.45
            },
            {
                s = path .. "bonk.ogg",
                t = 0.5
            },
            {
                s = ratel,
                t = 0.6
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path .. "magin.ogg",
                t = 0.97
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = common .. "rifle_magdrop.ogg",
                t = 1.16,
                v = 0.5
            },
            {
                s = rottle,
                t = 1.16
            },
            {
                s = path .. "chback.ogg",
                t = 1.9
            },
            {
                s = path .. "chamber.ogg",
                t = 2.0
            },
            {
                s = path .. "grab.ogg",
                t = 2.3,
                v = 0.45
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.4
            },
            {
                s = path .. "shoulder.ogg",
                t = 2.5
            },
        },
        IKTimeLine = ARC9.UC.LHIK(3.000000, 0.3, nil, 0.5, 0.25),
    },
    ["reload_75"] = {
        Source = "reload_drum",
        Time = 2.833333,
        MinProgressTime = 1.6,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magrelease.ogg",
                t = 0.1
            },
            {
                s = path .. "magout_drum.ogg",
                t = 0.25
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = ratel,
                t = 1.0
            },
            {
                s = path .. "magin_drum.ogg",
                t = 1.1
            },
            {
                s = rottle,
                t = 1.75
            },
            {
                s = path .. "grab.ogg",
                t = 2.0,
                v = 0.45
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.1
            },
            {
                s = path .. "shoulder.ogg",
                t = 2.25
            },
        },
        IKTimeLine = ARC9.UC.LHIK(2.833333, 0.3, nil, 0.9, 0.25),
        MagSwapTime = 1.6,
    },
    ["reload_empty_75"] = {
        Source = "reload_drum_empty",
        Time = 3.500000,
        MinProgressTime = 2.6,
        MagSwapTime = 2,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magrelease.ogg",
                t = 0.1
            },
            {
                s = path .. "magout_drum.ogg",
                t = 0.25
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = ratel,
                t = 1.0
            },
            {
                s = path .. "magin_drum.ogg",
                t = 1.1
            },
            {
                s = path .. "grab.ogg",
                t = 2.0,
                v = 0.45
            },
            {
                s = rottle,
                t = 1.9
            },
            {
                s = path .. "chback.ogg",
                t = 2.37
            },
            {
                s = path .. "chamber.ogg",
                t = 2.48
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.78
            },
            {
                s = path .. "shoulder.ogg",
                t = 2.93
            },
        },
        IKTimeLine = ARC9.UC.LHIK(3.500000, 0.3, nil, 1.5, 0.25),
    },
    ["reload_9mm"] = {
        Source = "reload_9mm",
        Time = 2.666667,
        MinProgressTime = 1.3,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path1 .. "magout.ogg",
                t = 0.45
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path1 .. "magin.ogg",
                t = 0.73
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = rottle,
                t = 1.15
            },
            {
                s = path .. "scrape.ogg",
                t = 1.4
            },
            {
                s = common .. "magpouchin.ogg",
                t = 1.35
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.05
            },
            {
                s = common .. "grab.ogg",
                t = 2.1
            },
        },
        IKTimeLine = ARC9.UC.LHIK(2.666667, 0.3, nil, 0.9, 0.25),
        MagSwapTime = 1.3,
    },
    ["reload_empty_9mm"] = {
        Source = "reload_9mm_empty",
        Time = 3.000000,
        MinProgressTime = 2.1,
        MagSwapTime = 2,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path1 .. "magout.ogg",
                t = 0.45
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path1 .. "magin.ogg",
                t = 0.85
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = common .. "pistol_magdrop.ogg",
                t = 1.15
            },
            {
                s = rottle,
                t = 1.15
            },
            {
                s = path .. "chback_9.ogg",
                t = 1.8
            },
            {
                s = path .. "chamber_9.ogg",
                t = 2.05
            },
            {
                s = common .. "grab.ogg",
                t = 2.4
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.5
            },
        },
        IKTimeLine = ARC9.UC.LHIK(3.000000, 0.3, nil, 0.55, 0.25),
    },
    ["reload_10rnd"] = {
        Source = "reload_10rnd",
        Time = 2.666667,
        MinProgressTime = 1.3,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magout.ogg",
                t = 0.45
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path .. "magin.ogg",
                t = 0.95
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = rottle,
                t = 1.15
            },
            {
                s = path .. "scrape.ogg",
                t = 1.35
            },
            {
                s = common .. "magpouchin.ogg",
                t = 1.35
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.05
            },
            {
                s = common .. "grab.ogg",
                t = 2.1
            },
        },
        IKTimeLine = ARC9.UC.LHIK(2.666667, 0.3, nil, 0.9, 0.25),
        MagSwapTime = 1.3,
    },
    ["reload_empty_10rnd"] = {
        Source = "reload_10rnd_empty",
        Time = 3.000000,
        MinProgressTime = 2.1,
        MagSwapTime = 2,
        EventTable = {
            {
                s = rottle,
                t = 0.0
            },
            {
                s = common .. "magpouch.ogg",
                t = 0.1
            },
            {
                s = ratel,
                t = 0.25
            },
            {
                s = path .. "magout.ogg",
                t = 0.45
            },
            {
                s = path .. "bonk.ogg",
                t = 0.5
            },
            {
                s = ratel,
                t = 0.5
            },
            {
                s = rottle,
                t = 0.75
            },
            {
                s = path .. "magin.ogg",
                t = 0.97
            },
            {
                s = ratel,
                t = 1.1
            },
            {
                s = common .. "rifle_magdrop.ogg",
                t = 1.15
            },
            {
                s = rottle,
                t = 1.15
            },
            {
                s = path .. "chback.ogg",
                t = 1.9
            },
            {
                s = path .. "chamber.ogg",
                t = 2.0
            },
            {
                s = common .. "grab.ogg",
                t = 2.4
            },
            {
                s = common .. "shoulder.ogg",
                t = 2.5
            },
        },
        IKTimeLine = ARC9.UC.LHIK(3.000000, 0.3, nil, 0.55, 0.25),
    },
    ["enter_inspect"] = {
        Source = "inspect_enter",
        Time = 0.972973,
        EventTable = {
            {
                s = rottle,
                t = 0
            },
            {
                s = common .. "movement-rifle-02.ogg",
                t = 0.1
            },
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        Time = 2.916667,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        Time = 2.108108,
        EventTable = {
            {
                s = common .. "movement-rifle-04.ogg",
                t = 0.2
            },
            {
                s = rottle,
                t = 0.25
            },
            {
                s = rottle,
                t = 1.2
            },
            {
                s = common .. "movement-rifle-03.ogg",
                t = 1.25
            },
        },
    },
    ["enter_sprint"] = {
        Source = "sprint_start",
        Time = 0.9,
    },
    ["idle_sprint"] = {
        Source = "sprint_idle",
        Time = 2.333333,
    },
    ["exit_sprint"] = {
        Source = "sprint_end",
        Time = 1.25,
    },
    ["fix"] = {
        Source = "jamfix",
        Time = 1.733333,
        EjectAt = 0.65,
        EventTable = {
            {
                s = common .. "cloth_4.ogg",
                t = 0.1
            },
            {
                s = path .. "presscheck_1.ogg",
                t = 0.2
            },
            {
                s = path .. "chback.ogg",
                t = 0.6
            },
            {
                s = path .. "chamber.ogg",
                t = 0.7
            },
            {
                s = common .. "grab.ogg",
                t = 1.1
            },
            {
                s = common .. "shoulder.ogg",
                t = 1.15
            },
        },
        MinProgressTime = 1.733333,
    },
    ["bash_bayonet"] = {
        Source = "bayonet",
        Time = 1.166667,
        EventTable = {
            {
                s = "weapons/arccw/melee_lift.wav",
                t = 0
            }
        }
    },
    ["exit_bipod"] = {
        Source = "bipod_undeploy",
        Time = 1.666667,
        Mult = .8,
        IKTimeLine = ARC9.UC.LHIK(1.666667, 0.3, nil, 0.55, 0.25),
    },
    ["enter_bipod"] = {
        Source = "bipod_deploy",
        Time = 1.166667,
        Mult = .8,
        IKTimeLine = ARC9.UC.LHIK(1.166667, 0.3, nil, 0.55, 0.25),
    },
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
