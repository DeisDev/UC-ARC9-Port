ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_51_flash.printname")
ATT.Description = ARC9:GetPhrase("ur_g3_hg_51_flash.description")
ATT.CustomCons = {
    ["uc.noubs"] = "",
}

ATT.Category = "ur_g3_handguard"
ATT.SortOrder = 3
ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
ATT.ModelOffset = Vector(0, 0, .1)
ATT.UC_ModelAngleOffset = Angle(0, 0, 180)
ATT.Scale = .01
ATT.Flashlight = false
ATT.FlashlightFOV = 50
ATT.FlashlightDistance = 1024
ATT.FlashlightColor = Color(255, 242, 229)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 3
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Flashlight = true
    },
    {
        PrintName = "uc.toggle.off",
        Flashlight = false,
    }
}

ATT.RequireElements = {"g3_hk51hg"}
ATT.Ignore = true
ATT.ActivateElements = {"ur_g3_hg_51_flash", "g3_noub"}
ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
ATT.FlashlightAttachment = 1
ATT.NoDraw = true
