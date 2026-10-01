ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_auto")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.auto"] = "",
}
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_glock_slide_auto", "ud_glock_auto"}
ATT.ExcludeElements = {"ud_glock_not_9mil"}

ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_auto.png", "smooth mips")
ATT.Category = "ud_glock_slide"
ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end
ATT.SpreadMultMove = 1.5
ATT.SpreadMultHipFire = 1.25
ATT.RecoilMult = 0.95
ATT.RPMMult = 2.38
ATT.SpeedMultShooting = 0.85
ATT.Malfunction = true
ATT.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    }
}
