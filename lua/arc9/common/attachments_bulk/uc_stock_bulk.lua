do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_stock_pistol")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_stock_pistol.png", "mips smooth")
    ATT.Category = "go_stock_pistol_bt"
    ATT.Model = "models/weapons/arccw/atts/stock_fab.mdl"
    ATT.RecoilMult = .70
    ATT.RecoilRandomSideMult = .5
    ATT.SwayMult = .5
    ATT.AimDownSightsTimeMult = 1.3
    ATT.SprintToFireTimeMult = 1.3
    ATT.UC_DrawTimeMult = 1.4
    ATT.BarrelLengthAdd = 20

    ARC9.LoadAttachment(ATT, "uc_stock_pistol")
end
