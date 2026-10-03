ATT.PrintName = ARC9.UC.AttName("ud_uzi_body_micro")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.nostocks"] = "",
    ["uc.noubs"] = "",
}
ATT.ActivateElements = {"ud_uzi_body_micro", "micro"}

ATT.Icon = Material("entities/att/acwatt_ud_uzi_body_micro.png", "smooth mips")
ATT.Category = "ud_uzi_frame"
ATT.SortOrder = 4.6
ATT.SpreadMult = 1.75
ATT.AimDownSightsTimeMult = 0.6
ATT.SprintToFireTimeMult = 0.6
ATT.RecoilMult = 3
ATT.RecoilRandomSideMult = 1.25
ATT.RPMMult = 1 + (3 / 5)
ATT.RangeMaxMult = 0.5
ATT.RangeMinMult = 0.5
ATT.UC_HipDispersionMult = 1.5
ATT.DeployTimeMult = 0.6
ATT.BarrelLengthAdd = -8
ATT.ChamberSize = 1
ATT.TriggerDelayTimeMult = 0
ATT.LHIK = true
ATT.HoldType = "pistol"
ATT.HoldTypeSights = "revolver"
ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.mechanism3", "ud_uzi_body_micro.trivia.mechanism")
ATT.Model = "models/weapons/arccw/atts/mini_lhik.mdl"
ATT.Hook_TranslateAnimation = function(wep, anim)
    if wep.Animations[anim .. "_micro"] then return anim .. "_micro" end
end
