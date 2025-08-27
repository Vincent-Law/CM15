-- gamemodes/cm15/gamemode/client/cl_alien_menu.lua
-- Alien role selection menu

local RoleMenu

function CM15_Menus.OpenAlienRoleMenu()
    if IsValid(RoleMenu) then RoleMenu:Remove() end
    RoleMenu = CM15_Menus.MakeFullscreenOverlay()
    
    -- Back button
    local back = vgui.Create("DButton", RoleMenu)
    back:SetText("Back")
    back:SetPos(20, 20)
    back:SetSize(120, 40)
    back.Paint = function(self, w, h)
        surface.SetDrawColor(50, 50, 50, 200)
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(255, 255, 255, 30)
        surface.DrawOutlinedRect(0, 0, w, h, 2)
    end
    back.DoClick = function()
        RoleMenu:Remove()
        CM15_Menus.OpenTeamMenu()
    end

    local w, h = ScrW(), ScrH()
    
    -- Title
    local title = vgui.Create("DLabel", RoleMenu)
    title:SetText("SELECT ALIEN CASTE")
    title:SetFont("CM15_Title")
    title:SetTextColor(Color(180, 255, 60))
    title:SizeToContents()
    title:SetPos((w - title:GetWide())/2, 70)
    
    -- Create scrollable container
    local scroll = vgui.Create("DScrollPanel", RoleMenu)
    scroll:SetPos(40, 130)
    scroll:SetSize(w - 80, h - 170)
    
    -- Grid layout for alien roles
    local grid = vgui.Create("DIconLayout", scroll)
    grid:Dock(FILL)
    grid:SetSpaceX(20)
    grid:SetSpaceY(20)
    
    -- Role display order
    local roleOrder = { "Queen", "Praetorian", "Ravager", "Carrier", "Warrior", "Drone", "Runner", "Facehugger" }
    
    -- Camera settings for each alien type
    local cameraSettings = {
        Queen = {
            sequence = 6,
            fov = 40,
            camPos = Vector(300, 50, 200),
            lookAt = Vector(0, 0, 100)
        },
        Praetorian = {
            sequence = 4,
            fov = 50,
            camPos = Vector(110, 40, 60),
            lookAt = Vector(0, 0, 50)
        },
        Ravager = {
            sequence = 4,
            fov = 55,
            camPos = Vector(130, 40, 60),
            lookAt = Vector(0, 0, 60)
        },
        Carrier = {
            sequence = 4,
            fov = 55,
            camPos = Vector(100, 30, 65),
            lookAt = Vector(0, 0, 50)
        },
        Warrior = {
            sequence = 4,
            fov = 60,
            camPos = Vector(70, 30, 45),
            lookAt = Vector(0, 0, 40)
        },
        Drone = {
            sequence = 4,
            fov = 65,
            camPos = Vector(70, 25, 45),
            lookAt = Vector(0, 0, 40)
        },
        Runner = {
            sequence = 4,
            fov = 70,
            camPos = Vector(60, 25, 45),
            lookAt = Vector(0, 0, 40)
        },
        Facehugger = {
            sequence = 2,
            fov = 80,
            camPos = Vector(10, 20, 20),
            lookAt = Vector(5, 5, 5)
        }
    }
    
    for _, roleId in ipairs(roleOrder) do
        local roleData = CM15_ROLES.Aliens[roleId]
        if not roleData then continue end
        
        -- Create role panel
        local rolePanel = vgui.Create("DPanel", grid)
        rolePanel:SetSize(350, 550)
        
        -- Get slot availability
        local remaining = roleData.slots
        if CM15_Menus.LatestSlots and CM15_Menus.LatestSlots.Aliens and CM15_Menus.LatestSlots.Aliens[roleId] then
            remaining = (roleData.slots == CM15_UNLIMITED) and "∞" or 
                        math.max(0, roleData.slots - (CM15_Menus.LatestSlots.Aliens[roleId].taken or 0))
        elseif roleData.slots == CM15_UNLIMITED then
            remaining = "∞"
        end
        
        local isAvailable = (remaining == "∞" or tonumber(remaining) > 0)
        
        rolePanel.Paint = function(self, w, h)
            -- Background
            surface.SetDrawColor(50, 50, 50, 200)
            surface.DrawRect(0, 0, w, h)
            
            -- Special border colors
            if roleId == "Queen" then
                surface.SetDrawColor(200, 50, 50, 100)
                surface.DrawOutlinedRect(0, 0, w, h, 3)
            elseif roleId == "Praetorian" or roleId == "Ravager" then
                surface.SetDrawColor(150, 50, 200, 100)
                surface.DrawOutlinedRect(0, 0, w, h, 2)
            elseif roleId == "Carrier" then
                surface.SetDrawColor(100, 150, 200, 100)
                surface.DrawOutlinedRect(0, 0, w, h, 2)
            else
                surface.SetDrawColor(255, 255, 255, 30)
                surface.DrawOutlinedRect(0, 0, w, h, 1)
            end
            
            -- Title
            local titleColor = roleData.color or color_white
            if not isAvailable then
                titleColor = Color(100, 100, 100)
            end
            draw.SimpleText(roleData.name:upper(), "CM15_Label", w/2, 20, titleColor, TEXT_ALIGN_CENTER)
            
            -- Description
            draw.SimpleText(roleData.description, "DermaDefault", w/2, 55, Color(200,200,200), TEXT_ALIGN_CENTER)
            
            -- Slot availability
            local slotY = h - 40
            if isAvailable then
                if remaining == "∞" then
                    draw.SimpleText("Unlimited Slots", "DermaDefaultBold", w/2, slotY, Color(150,255,150), TEXT_ALIGN_CENTER)
                else
                    draw.SimpleText("Available: " .. remaining, "DermaDefaultBold", w/2, slotY, Color(255,255,255), TEXT_ALIGN_CENTER)
                end
            else
                draw.SimpleText("NO SLOTS AVAILABLE", "DermaDefaultBold", w/2, slotY, Color(255,100,100), TEXT_ALIGN_CENTER)
            end
        end
        
        -- Model button
        local modelBtn, mdlPanel = CM15_Menus.BigModelButton(rolePanel, {x=10, y=80, w=330, h=420},
            roleData.model, function()
                if not isAvailable then
                    -- Show error message
                    local errorPanel = vgui.Create("DFrame")
                    errorPanel:SetSize(300, 150)
                    errorPanel:Center()
                    errorPanel:SetTitle(roleData.name .. " Unavailable")
                    errorPanel:SetDeleteOnClose(true)
                    errorPanel:MakePopup()
                    
                    local label = vgui.Create("DLabel", errorPanel)
                    label:SetText("All " .. roleData.name .. " slots are taken!\nPlease choose another caste.")
                    label:SetTextColor(Color(255, 255, 255))
                    label:SetFont("DermaDefault")
                    label:SizeToContents()
                    label:SetPos(20, 40)
                    
                    local okBtn = vgui.Create("DButton", errorPanel)
                    okBtn:SetText("OK")
                    okBtn:SetPos(125, 110)
                    okBtn:SetSize(50, 25)
                    okBtn.DoClick = function() errorPanel:Close() end
                    return
                end
                
                net.Start(CM15_NET.PickRole)
                    net.WriteInt(TEAM_ALIENS, 8)
                    net.WriteString(roleId)
                    net.WriteTable({})
                net.SendToServer()
                RoleMenu:Remove()
            end)
        
        -- Apply custom camera settings
        if mdlPanel then
            local settings = cameraSettings[roleId]
            if settings then
                mdlPanel:SetFOV(settings.fov)
                mdlPanel:SetCamPos(settings.camPos)
                mdlPanel:SetLookAt(settings.lookAt)
                
                -- Override the LayoutEntity
                mdlPanel.LayoutEntity = function(self, ent)
                    ent:SetSequence(settings.sequence)
                    ent:SetAngles(Angle(0, (RealTime()*20)%360, 0))
                    ent:SetCycle(0)
                    ent:SetPlaybackRate(0)
                end
            end
        end
    end
end