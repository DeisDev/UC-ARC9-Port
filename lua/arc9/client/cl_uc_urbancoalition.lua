-- Urban Coalition client features: custom colors, shell color, options menu and asset caching.

local function P(phrase)
    return ARC9:GetPhrase(phrase) or phrase
end

hook.Add("Initialize", "ARC9_UC_HandlingStats", function()
    for _, stat in ipairs({"UC_HipDispersion", "UC_SightsDispersion", "UC_MoveDispersion", "UC_JumpDispersion"}) do
        ARC9.AutoStatsMains[stat] = ARC9.AutoStatsMains.Spread
    end
    ARC9.AutoStatsMains.UC_BipodDispersion = {true, true}
    ARC9.AutoStatsMains.UC_DrawTime = {true, true}
    ARC9.AutoStatsMains.UC_MeleeTime = {true, true}
    ARC9.AutoStatsMains.UC_MeleeWaitTime = {true, true}
end)

function ARC9.UC.CreateRailPanel(wep)
    wep:ClearTabPanel()
    wep:ClosePresetMenu()
    local scale = ARC9.ScreenScale
    local lower = wep.CustomizeHUD.lowerpanel
    lower.Extended = nil
    lower:SetPos(scale(19) + GetConVar("arc9_hud_deadzonex"):GetInt(), ScrH() - scale(93))
    lower:SetTall(scale(74))
    lower:SetAlpha(255)

    local panel = vgui.Create("DPanel", lower)
    panel:SetPos(scale(8), scale(19))
    panel:SetSize(math.min(lower:GetWide() - scale(16), scale(260)), scale(50))
    panel.Paint = function() end
    wep.TabPanel = panel

    local pending = false
    local function commit()
        if !pending or !IsValid(wep) then return end
        pending = false
        wep:PostModify()
    end
    panel.OnRemove = commit
    local sliders = {}
    panel.Think = function()
        for _, slider in ipairs(sliders) do
            if slider:IsEditing() then return end
        end
        commit()
    end

    for _, slot in ipairs(wep.Attachments) do
        if !slot.UC_RailMin then continue end
        local slider = vgui.Create("ARC9NumSlider", panel)
        slider:Dock(TOP)
        slider:SetTall(scale(22))
        slider:SetText(P(slot.PrintName))
        slider.Label:SetFont("ARC9_10_Slim")
        slider.Label:SetTextColor(ARC9.GetHUDColor("fg"))
        slider:SetMinMax(0, 100)
        slider:SetDecimals(1)
        slider:SetDefaultValue(50)
        slider:SetValue((slot.UC_Rail or 0.5) * 100)
        local attachment = slot.Installed and ARC9.GetAttTable(slot.Installed)
        slider:SetEnabled(attachment and !attachment.UC_RailPosition and !wep:GetSlotBlocked(slot) or false)
        slider.OnValueChanged = function(_, value)
            slot.UC_Rail = math.Clamp(value / 100, 0, 1)
            ARC9.UC.UpdateRailPositions(wep)
            wep:DoInvalidateCache()
            pending = true
        end
        sliders[#sliders + 1] = slider
    end
end

hook.Add("Initialize", "ARC9_UC_PlinkingName", function()
    language.Add("plinking_ammo", P("uc.ammo.plinking"))
end)

CreateClientConVar("arc9_uc_custcolor_enable", 1, true, true, "1 for custom colors, 0 for playermodel color", 0, 1)
CreateClientConVar("arc9_uc_custcolor_1_r", 255, true, true, "Main color R", 0, 255)
CreateClientConVar("arc9_uc_custcolor_1_g", 255, true, true, "Main color G", 0, 255)
CreateClientConVar("arc9_uc_custcolor_1_b", 255, true, true, "Main color B", 0, 255)
CreateClientConVar("arc9_uc_custcolor_2_r", 255, true, true, "Second color R", 0, 255)
CreateClientConVar("arc9_uc_custcolor_2_g", 255, true, true, "Second color G", 0, 255)
CreateClientConVar("arc9_uc_custcolor_2_b", 255, true, true, "Second color B", 0, 255)
CreateClientConVar("arc9_uc_cache_client_persecond", 60, true, false, "", 10, 60)

-- These convars are already known serverside; this only serves to tell the server it's time to update our colors to other clients.
if !game.SinglePlayer() then
    local t = "ARC9_UC_UpdateColor"
    local custcolorcallback = function(cvar, old, new)
        if timer.Exists(t) then
            timer.Adjust(t, ARC9.UC.CustColorUpdateInterval)
        else
            timer.Create(t, ARC9.UC.CustColorUpdateInterval, 1, function()
                net.Start("ARC9_UC_CustColor")
                net.SendToServer()
            end)
        end
    end

    for _, cvar in ipairs({"enable", "1_r", "1_g", "1_b", "2_r", "2_g", "2_b"}) do
        cvars.AddChangeCallback("arc9_uc_custcolor_" .. cvar, custcolorcallback)
    end
    hook.Add("InitPostEntity", "ARC9_UC_InitialColor", function()
        net.Start("ARC9_UC_CustColor")
        net.SendToServer()
    end)
end

-- Finds the ARC9 weapon behind a rendered entity: the weapon itself, an ARC9 attachment model, or a viewmodel.
local function GetARC9Weapon(ent)
    if !IsValid(ent) then return end
    if ent.ARC9 then return ent end
    if IsValid(ent.weapon) and ent.weapon.ARC9 then return ent.weapon end

    local owner = ent:GetOwner()
    if IsValid(owner) and owner:IsPlayer() then
        local wep = owner:GetActiveWeapon()
        if IsValid(wep) and wep.ARC9 then return wep end
    end
end

matproxy.Add({
    name = "UC_ShellColor",
    init = function(self, mat, values)
        self.col = Vector()
    end,
    bind = function(self, mat, ent)
        if !IsValid(ent) then return end

        local herg = ent.UC_ShellColor

        if !herg then
            local wep = GetARC9Weapon(ent)
            herg = IsValid(wep) and wep:GetValue("UC_ShellColor")
        end

        herg = herg or color_white

        self.col.x = (herg.r or 255) / 255
        self.col.y = (herg.g or 255) / 255
        self.col.z = (herg.b or 255) / 255
        mat:SetVector("$color2", self.col)
    end
})

local function proxystuff(digit)
    return {
        name = "UC_Weapon_Color" .. digit,
        init = function(self, mat, values)
            self.ResultTo = values.resultvar
        end,
        bind = function(self, mat, ent)
            local wep = GetARC9Weapon(ent)
            if !IsValid(wep) then return end

            local owner = wep:GetOwner()
            if !IsValid(owner) or !owner:IsPlayer() then return end

            if owner == LocalPlayer() then
                if owner:GetInfoNum("arc9_uc_custcolor_enable", 0) == 1 then
                    mat:SetVector(self.ResultTo, Vector(owner:GetInfoNum("arc9_uc_custcolor_" .. digit .. "_r", 255), owner:GetInfoNum("arc9_uc_custcolor_" .. digit .. "_g", 255), owner:GetInfoNum("arc9_uc_custcolor_" .. digit .. "_b", 255)) / 230)
                else
                    mat:SetVector(self.ResultTo, owner:GetPlayerColor() * 0.9)
                end
            elseif owner:GetNW2Bool("ARC9_UC_CustColor", false) then
                mat:SetVector(self.ResultTo, owner:GetNW2Vector("ARC9_UC_Color" .. digit))
            else
                mat:SetVector(self.ResultTo, owner:GetPlayerColor() * 0.9)
            end
        end
    }
end

matproxy.Add(proxystuff(1))
matproxy.Add(proxystuff(2))

local function menu_uc(panel)
    panel:Help(P("uc.menu.header"))

    panel:CheckBox(P("uc.menu.custcolor"), "arc9_uc_custcolor_enable")
    panel:ControlHelp(P("uc.menu.custcolor.desc"))

    panel:CheckBox(P("uc.menu.infiniteubwammo"), "arc9_uc_infiniteubwammo")
    panel:ControlHelp(P("uc.menu.infiniteubwammo.desc"))

    panel:NumSlider(P("uc.menu.apobjmult"), "arc9_uc_apobjmult", 1, 10, 1)
    panel:ControlHelp(P("uc.menu.apobjmult.desc"))

    panel:AddControl("color", {
        label = P("uc.menu.color1"),
        red = "arc9_uc_custcolor_1_r",
        green = "arc9_uc_custcolor_1_g",
        blue = "arc9_uc_custcolor_1_b"
    })

    panel:AddControl("color", {
        label = P("uc.menu.color2"),
        red = "arc9_uc_custcolor_2_r",
        green = "arc9_uc_custcolor_2_g",
        blue = "arc9_uc_custcolor_2_b"
    })

    panel:Help(P("uc.menu.cache"))

    panel:Button(P("uc.menu.cache.client"), "arc9_uc_cache_client")
    panel:ControlHelp(P("uc.menu.cache.client.desc"))
    panel:NumSlider(P("uc.menu.cache.persecond"), "arc9_uc_cache_client_persecond", 10, 60, 0)

    panel:Button(P("uc.menu.cache.server"), "arc9_uc_cache_server")
    panel:ControlHelp(P("uc.menu.cache.server.desc"))
end

hook.Add("PopulateToolMenu", "ARC9_UC_MenuOptions", function()
    spawnmenu.AddToolMenuOption("Options", "ARC9", "ARC9_UC", P("uc.title"), "", "", menu_uc)
end)

-- Clientside asset caching.

local procedure = {
    ["sound"] = function(asset)
        asset = string.Replace(asset, "sound\\", "")
        asset = string.Replace(asset, "sound/", "")
        if !IsValid(LocalPlayer()) then return end
        LocalPlayer():EmitSound(asset, 75, 100, 0.01, CHAN_WEAPON)
    end,
    ["model"] = function(asset)
        local cmdl = ClientsideModel(asset)
        if IsValid(cmdl) then cmdl:Remove() end
    end,
}

local function StartClientCache()
    if ARC9.UC.Precache then return end

    local list = ARC9.UC.FindCacheAssets()
    local persecond = GetConVar("arc9_uc_cache_client_persecond"):GetFloat()

    ARC9.UC.Precache = #list > 0
    ARC9.UC.PrecachePer = 0
    ARC9.UC.PrecacheTotal = #list
    ARC9.UC.PrecacheCur = "..."

    for i, fie in ipairs(list) do
        timer.Simple(i / persecond, function()
            ARC9.UC.PrecachePer = i
            ARC9.UC.PrecacheCur = fie
            local fiex = string.GetExtensionFromFilename(fie)
            if fiex == "mdl" then
                procedure["model"](fie)
            else
                procedure["sound"](fie)
            end
            if i == #list then ARC9.UC.Precache = false end
        end)
    end
end

concommand.Add("arc9_uc_cache_client", StartClientCache)

hook.Add("HUDPaint", "ARC9_UC_Precache", function()
    if !ARC9.UC.Precache then return end

    local i_1 = ARC9.UC.PrecachePer or 1
    local i_2 = math.max(ARC9.UC.PrecacheTotal or 1, 1)
    local i_per = i_1 / i_2
    local ss = ScreenScale(1)
    local bx, by = (ss * 150), (ss * 10)
    local cx, cy = ScrW() / 2, ScrH() * 0.7

    surface.SetDrawColor(255, 255, 255, 255)
    surface.DrawOutlinedRect(cx - (bx / 2), cy - (by / 2), bx, by, 2)
    surface.DrawRect(cx - (bx / 2), cy - (by / 2), bx * i_per, by)

    draw.SimpleText(P("uc.cache.caching"), "ARC9_12", cx - (bx / 2), cy - (by / 2) - ss, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
    draw.SimpleText(ARC9:GetPhrase("uc.cache.percent", {percent = math.Round(i_per * 100)}), "ARC9_12", cx + (bx / 2), cy + (by / 2) - ss, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)
    draw.SimpleText(ARC9:GetPhrase("uc.cache.count", {current = i_1, total = i_2}), "ARC9_8", cx + (bx / 2), cy - (by / 2) - ss, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM)
    draw.SimpleText(ARC9.UC.PrecacheCur or "...", "ARC9_6", cx - (bx / 2), cy + (by / 2) + ss, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
end)
