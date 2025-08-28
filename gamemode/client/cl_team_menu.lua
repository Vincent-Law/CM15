-- gamemodes/cm15/gamemode/client/cl_team_menu.lua
-- Team selection menu

local TeamMenu

function CM15_Menus.OpenTeamMenu()
    if IsValid(TeamMenu) then TeamMenu:Remove() end
    TeamMenu = CM15_Menus.MakeFullscreenOverlay()

    local w, h = ScrW(), ScrH()
    local pad = 20
    local halfW = math.floor(w/2) - 30
    local btnH = h - 140
    local topY = 70
    local btnY = 110

    -- Spectator button
    local stay = vgui.Create("DButton", TeamMenu)
    stay:SetText("Stay as Spectator")
    surface.SetFont("CM15_Label")
    local tw, th = surface.GetTextSize(stay:GetText())
    stay:SetSize(tw + 32, th + 16)
    stay:SetPos((w - stay:GetWide())/2, 20)
    stay.Paint = function(self, w, h)
        surface.SetDrawColor(50, 50, 50, 200)
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(255, 255, 255, 30)
        surface.DrawOutlinedRect(0, 0, w, h, 2)
    end
    stay.DoClick = function() TeamMenu:Remove() end

    -- Labels above buttons
    local lblHum = vgui.Create("DLabel", TeamMenu)
    lblHum:SetFont("CM15_Title")
    lblHum:SetText("HUMANS")
    lblHum:SizeToContents()
    lblHum:SetPos(pad + (halfW - lblHum:GetWide())/2, topY)

    local lblAli = vgui.Create("DLabel", TeamMenu)
    lblAli:SetFont("CM15_Title")
    lblAli:SetText("ALIENS")
    lblAli:SizeToContents()
    lblAli:SetPos(w - halfW - pad + (halfW - lblAli:GetWide())/2, topY)

    -- Human team button - Updated with Colonial Marine model
    CM15_Menus.BigModelButton(TeamMenu, {x=pad, y=btnY, w=halfW, h=btnH},
        "models/ariter/aliens/colonial_marine_camo_male_04_ply.mdl", function()
            net.Start(CM15_NET.PickTeam)
            net.WriteInt(TEAM_HUMANS, 8)
            net.SendToServer()
            TeamMenu:Remove()
        end)

    -- Alien team button
    local alienBtn, alienMdl = CM15_Menus.BigModelButton(TeamMenu, {x=w-halfW-pad, y=btnY, w=halfW, h=btnH},
        "models/cpthazama/avp/xeno/drone.mdl", function()
            net.Start(CM15_NET.PickTeam)
            net.WriteInt(TEAM_ALIENS, 8)
            net.SendToServer()
            TeamMenu:Remove()
        end)
    
    -- Adjust camera for drone model
    if alienMdl then
        alienMdl:SetFOV(45)
        alienMdl:SetCamPos(Vector(140, 30, 60))
        alienMdl:SetLookAt(Vector(0, 0, 35))
    end
end