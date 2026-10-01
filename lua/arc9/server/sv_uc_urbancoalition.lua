-- Urban Coalition server features: custom colors and asset caching.

util.AddNetworkString("ARC9_UC_CustColor")

net.Receive("ARC9_UC_CustColor", function(len, ply)
    if ply.UC_LastColorUpdate and ply.UC_LastColorUpdate + ARC9.UC.CustColorUpdateInterval > CurTime() then return end
    ply.UC_LastColorUpdate = CurTime()

    -- Player NW2 state also reaches late joiners and players entering visibility.
    ply:SetNW2Bool("ARC9_UC_CustColor", ply:GetInfoNum("arc9_uc_custcolor_enable", 0) == 1)
    for digit = 1, 2 do
        local prefix = "arc9_uc_custcolor_" .. digit .. "_"
        ply:SetNW2Vector("ARC9_UC_Color" .. digit, Vector(
            math.Clamp(ply:GetInfoNum(prefix .. "r", 255), 0, 255),
            math.Clamp(ply:GetInfoNum(prefix .. "g", 255), 0, 255),
            math.Clamp(ply:GetInfoNum(prefix .. "b", 255), 0, 255)
        ) / 230)
    end
end)

local procedure = {
    ["sound"] = function(asset)
        local cmdl = ents.Create("prop_dynamic")
        asset = string.Replace(asset, "sound\\", "")
        asset = string.Replace(asset, "sound/", "")
        cmdl:EmitSound(asset, 75, 100, 0.4, CHAN_WEAPON)
        cmdl:Remove()
    end,
    ["model"] = function(asset)
        local cmdl = ents.Create("prop_dynamic")
        cmdl:SetModel(asset)
        cmdl:Spawn()
        cmdl:Remove()
    end,
}

concommand.Add("arc9_uc_cache_server", function(ply)
    if IsValid(ply) and !ply:IsSuperAdmin() then return end

    for i, fie in ipairs(ARC9.UC.FindCacheAssets()) do
        timer.Simple(i / 20, function()
            if string.GetExtensionFromFilename(fie) == "mdl" then
                procedure["model"](fie)
            else
                procedure["sound"](fie)
            end
        end)
    end
end, nil, "Command the server to cache all Urban Coalition assets.")
