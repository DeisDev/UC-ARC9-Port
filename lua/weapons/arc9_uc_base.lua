AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = false
SWEP.MalfunctionSound = "weapons/arccw/malfunction.wav"

SWEP.GetFreeSwayAngles = ARC9.UC.GetFreeSwayAngles
SWEP.ApplyRecoil = ARC9.UC.ApplyRecoil
SWEP.VisualRecoilDoingFunc = ARC9.UC.VisualRecoilDoing
SWEP.GetAttachmentPos = ARC9.UC.GetAttachmentPos
SWEP.GetFinalAttTable = ARC9.UC.GetFinalAttTable
SWEP.GetAttachmentElements = ARC9.UC.GetAttachmentElements
SWEP.WouldConflict = ARC9.UC.WouldConflict
SWEP.PruneAttachments = ARC9.UC.PruneAttachments
SWEP.BarrelLengthHook = ARC9.UC.BarrelLengthHook
SWEP.SprintLock = ARC9.UC.SprintLock
SWEP.GenerateAutoSight = ARC9.UC.GenerateAutoSight
SWEP.DrawWorldModel = ARC9.UC.DrawWorldModel
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.PostModify = ARC9.UC.PostModify
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.VisualRecoilUpHook = ARC9.UC.VisualRecoilUp
SWEP.ShootPitchVariationHook = ARC9.UC.ShootPitchVariation
SWEP.DistantShootPitchHook = ARC9.UC.DistantShootPitch
SWEP.DispersionSpreadHook = ARC9.UC.DispersionSpread
SWEP.SpeedHook = ARC9.UC.SpeedCap
SWEP.SpeedHookSights = ARC9.UC.SightsSpeedCap
SWEP.SpeedHookShooting = ARC9.UC.ShootSpeedCap
SWEP.PreBashTimeHook = ARC9.UC.PreBashTime
SWEP.PostBashTimeHook = ARC9.UC.PostBashTime
SWEP.Hook_TranslateAnimSpeed = ARC9.UC.AnimationSpeed
SWEP.CrouchPosHook = ARC9.UC.CrouchPos
SWEP.CrouchAngHook = ARC9.UC.CrouchAng
