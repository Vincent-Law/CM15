include("shared.lua")

local NET = CM15_NET

-- === CM15 Fonts ===
surface.CreateFont("CM15_Title",  { font = "Tahoma", size = 48, weight = 800, antialias = true })
surface.CreateFont("CM15_Label",  { font = "Tahoma", size = 32, weight = 700, antialias = true })
surface.CreateFont("CM15_Button", { font = "Tahoma", size = 26, weight = 700, antialias = true })

-- Precache alien models on client
hook.Add("InitPostEntity", "CM15_PrecacheModels", function()
    local alienModels = {
        "models/cpthazama/avp/xeno/queen.mdl",
        "models/cpthazama/avp/xeno/praetorian.mdl",
        "models/cpthazama/avp/xeno/ravager.mdl",
        "models/cpthazama/avp/xeno/carrier.mdl",
        "models/cpthazama/avp/xeno/warrior.mdl",
        "models/cpthazama/avp/xeno/drone.mdl",
        "models/cpthazama/avp/xeno/runner.mdl",
        "models/cpthazama/avp/xeno/facehugger.mdl"
    }
    
    for _, mdl in ipairs(alienModels) do
        util.PrecacheModel(mdl)
    end
end)

-- === UTILITY FUNCTIONS ===
local function MakeFullscreenOverlay()
    local pnl = vgui.Create("DPanel")
    pnl:SetSize(ScrW(), ScrH())
    pnl:SetPos(0, 0)
    pnl:SetKeyboardInputEnabled(true)
    pnl:SetMouseInputEnabled(true)
    pnl:MakePopup()
    pnl.Paint = function(self, w, h)
        surface.SetDrawColor(0, 0, 0, 245)
        surface.DrawRect(0, 0, w, h)
    end
    return pnl
end

-- Updated BigModelButton with proper sequences for each model type
local function BigModelButton(parent, rect, modelPath, onClick)
    local btn = vgui.Create("DButton", parent)
    btn:SetText("")
    btn:SetPos(rect.x, rect.y)
    btn:SetSize(rect.w, rect.h)
    btn:SetCursor("hand")
    if onClick then btn.DoClick = onClick end

    btn.Paint = function(self, w, h)
        surface.SetDrawColor(50, 50, 50, 200)
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(255, 255, 255, 30)
        surface.DrawOutlinedRect(0, 0, w, h, 2)
    end

    local mdl = vgui.Create("DModelPanel", btn)
    mdl:Dock(FILL)
    mdl:SetModel(modelPath or "models/Humans/Group03/male_04.mdl")
    
    -- Default camera settings
    mdl:SetFOV(85)
    mdl:SetCamPos(Vector(65, 35, 30))
    mdl:SetLookAt(Vector(0, 0, 30))
    
    mdl.LayoutEntity = function(self, ent)
        -- Set appropriate sequence based on model type
        if string.find(modelPath or "", "xeno") then
            -- All xenomorphs use sequence 4 for standing idle
            ent:SetSequence(4)
        elseif string.find(modelPath or "", "facehugger") then
            -- Facehugger uses sequence 1
            ent:SetSequence(1)
        else
            -- Human models - try to find standing idle
            local standingAnims = {
                "idle_all_01",
                "idle",
                "idle01",
                "reference",
                "ragdoll"
            }
            
            local foundAnim = false
            for _, animName in ipairs(standingAnims) do
                local seq = ent:LookupSequence(animName)
                if seq and seq >= 0 then
                    ent:SetSequence(seq)
                    foundAnim = true
                    break
                end
            end
            
            if not foundAnim then
                ent:SetSequence(0)
            end
        end
        
        -- Rotate the model
        ent:SetAngles(Angle(0, (RealTime()*20)%360, 0))
        
        -- Stop any animations from playing
        ent:SetCycle(0)
        ent:SetPlaybackRate(0)
    end
    
    mdl:SetMouseInputEnabled(false)
    return btn, mdl
end

-- === TEAM MENU ===
local TeamMenu
local function OpenTeamMenu()
    if IsValid(TeamMenu) then TeamMenu:Remove() end
    TeamMenu = MakeFullscreenOverlay()

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

    -- Human team button
    BigModelButton(TeamMenu, {x=pad, y=btnY, w=halfW, h=btnH},
        "models/Humans/Group03/male_04.mdl", function()
            net.Start(NET.PickTeam)
            net.WriteInt(TEAM_HUMANS, 8)
            net.SendToServer()
            TeamMenu:Remove()
        end)

    -- Alien team button - Use drone model
    local alienBtn, alienMdl = BigModelButton(TeamMenu, {x=w-halfW-pad, y=btnY, w=halfW, h=btnH},
        "models/cpthazama/avp/xeno/drone.mdl", function()
            net.Start(NET.PickTeam)
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

-- === ROLE MENU ===
local RoleMenu
local LatestSlots = nil

net.Receive(NET.SyncSlots, function()
    LatestSlots = net.ReadTable()
end)

-- === ALIEN ROLE MENU - IMPROVED VERSION ===
local function OpenAlienRoleMenu()
    if IsValid(RoleMenu) then RoleMenu:Remove() end
    RoleMenu = MakeFullscreenOverlay()
    
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
        OpenTeamMenu()
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
    
    -- Camera settings for each alien type (optimized for full body view)
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
            sequence = 2,  -- Different sequence for facehugger
            fov = 80,
            camPos = Vector(10, 20, 20),
            lookAt = Vector(5, 5, 5)
        }
    }
    
    for _, roleId in ipairs(roleOrder) do
        local roleData = CM15_ROLES.Aliens[roleId]
        if not roleData then continue end
        
        -- Create role panel with increased height for better model display
        local rolePanel = vgui.Create("DPanel", grid)
        rolePanel:SetSize(350, 550)  -- Taller panels for better view
        
        -- Get slot availability
        local remaining = roleData.slots
        if LatestSlots and LatestSlots.Aliens and LatestSlots.Aliens[roleId] then
            remaining = (roleData.slots == CM15_UNLIMITED) and "∞" or 
                        math.max(0, roleData.slots - (LatestSlots.Aliens[roleId].taken or 0))
        elseif roleData.slots == CM15_UNLIMITED then
            remaining = "∞"
        end
        
        local isAvailable = (remaining == "∞" or tonumber(remaining) > 0)
        
        rolePanel.Paint = function(self, w, h)
            -- Background
            surface.SetDrawColor(50, 50, 50, 200)
            surface.DrawRect(0, 0, w, h)
            
            -- Special border colors for different castes
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
        
        -- Model button with larger height
        local modelBtn, mdlPanel = BigModelButton(rolePanel, {x=10, y=80, w=330, h=420},
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
                
                net.Start(NET.PickRole)
                    net.WriteInt(TEAM_ALIENS, 8)
                    net.WriteString(roleId)
                    net.WriteTable({})
                net.SendToServer()
                RoleMenu:Remove()
            end)
        
        -- Apply custom camera settings and sequence for each alien
        if mdlPanel then
            local settings = cameraSettings[roleId]
            if settings then
                mdlPanel:SetFOV(settings.fov)
                mdlPanel:SetCamPos(settings.camPos)
                mdlPanel:SetLookAt(settings.lookAt)
                
                -- Override the LayoutEntity to use the correct sequence
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

-- === HUMAN ROLE MENU ===
local function OpenHumanRoleMenu()
    if IsValid(RoleMenu) then RoleMenu:Remove() end
    RoleMenu = MakeFullscreenOverlay()
    
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
        OpenTeamMenu()
    end

    -- Main scrollable container
    local scroll = vgui.Create("DScrollPanel", RoleMenu)
    scroll:Dock(FILL)
    scroll:DockMargin(40, 80, 40, 40)

    local function SlotTextLeft(remaining)
        if remaining == "∞" then return "Slots: ∞" end
        return "Slots left: " .. tostring(remaining)
    end

    -- Track expanded states for categories
    local expandedStates = {
        survivors = false,
        command = false,
        marines = false,
        squads = {}
    }

    -- Initialize all squads as collapsed
    for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
        expandedStates.squads[squad] = false
    end

    local function RefreshMenu()
        scroll:Clear()
        
        -- === SURVIVORS CATEGORY ===
        local survivorsContainer = vgui.Create("DPanel", scroll)
        survivorsContainer:Dock(TOP)
        survivorsContainer:DockMargin(0, 0, 0, 8)
        survivorsContainer:SetTall(expandedStates.survivors and 430 or 120)
        survivorsContainer.Paint = function(self, w, h)
            surface.SetDrawColor(50, 50, 50, 200)
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(255, 255, 255, 30)
            surface.DrawOutlinedRect(0, 0, w, h, 2)
        end

        -- Survivors header
        local survivorsHeader = vgui.Create("DButton", survivorsContainer)
        survivorsHeader:Dock(TOP)
        survivorsHeader:SetTall(120)
        survivorsHeader:SetText("")
        survivorsHeader.Paint = function(self, w, h)
            local arrow = expandedStates.survivors and "▼" or "▶"
            draw.SimpleText(arrow .. " SURVIVORS", "CM15_Label", 16, 30, color_white)
            
            local remaining = "∞"
            if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Categories and LatestSlots.Humans.Categories.Survivors then
                local sv = LatestSlots.Humans.Categories.Survivors.Survivor
                if sv then
                    remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken)
                end
            end
            draw.SimpleText(SlotTextLeft(remaining), "DermaDefaultBold", 16, 70, color_white)
        end
        survivorsHeader.DoClick = function()
            expandedStates.survivors = not expandedStates.survivors
            RefreshMenu()
        end

        -- Survivors roles (shown when expanded)
        if expandedStates.survivors then
            local survivorsRoleContainer = vgui.Create("DPanel", survivorsContainer)
            survivorsRoleContainer:Dock(TOP)
            survivorsRoleContainer:DockMargin(20, 5, 0, 0)
            survivorsRoleContainer:SetTall(300)
            survivorsRoleContainer.Paint = function(self, w, h)
                surface.SetDrawColor(40, 40, 40, 180)
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(255, 255, 255, 20)
                surface.DrawOutlinedRect(0, 0, w, h, 1)
            end

            local survivorLayout = vgui.Create("DIconLayout", survivorsRoleContainer)
            survivorLayout:Dock(FILL)
            survivorLayout:DockMargin(8, 8, 8, 8)
            survivorLayout:SetSpaceX(8)
            survivorLayout:SetSpaceY(8)

            -- Single survivor role panel
            local remaining = "∞"
            if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Categories and LatestSlots.Humans.Categories.Survivors then
                local sv = LatestSlots.Humans.Categories.Survivors.Survivor
                if sv then
                    remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken)
                end
            end

            local survivorPanel = vgui.Create("DPanel", survivorLayout)
            survivorPanel:SetSize(400, 280)
            survivorPanel.Paint = function(self, w, h)
                surface.SetDrawColor(40, 40, 40, 180)
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(255, 255, 255, 30)
                surface.DrawOutlinedRect(0, 0, w, h, 1)
            end

            -- Role name and slots at top
            local nameLabel = vgui.Create("DLabel", survivorPanel)
            nameLabel:SetText("Survivor (" .. remaining .. ")")
            nameLabel:SetFont("DermaDefaultBold")
            nameLabel:SetTextColor(color_white)
            nameLabel:SetPos(5, 5)
            nameLabel:SetSize(290, 20)
            nameLabel:SetMouseInputEnabled(false)

            -- Model button
            BigModelButton(survivorPanel, {x=5, y=25, w=390, h=250},
                "models/Humans/Group01/male_02.mdl", function()
                    net.Start(NET.PickRole)
                        net.WriteInt(TEAM_HUMANS, 8)
                        net.WriteString("Survivor")
                        net.WriteTable({ category = "Survivors" })
                    net.SendToServer()
                    RoleMenu:Remove()
                end)
        end

        -- === COMMAND CATEGORY ===
        local commandContainer = vgui.Create("DPanel", scroll)
        commandContainer:Dock(TOP)
        commandContainer:DockMargin(0, 0, 0, 8)
        local commandHeight = expandedStates.command and (120 + 310) or 120
        commandContainer:SetTall(commandHeight)
        commandContainer.Paint = function(self, w, h)
            surface.SetDrawColor(50, 50, 50, 200)
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(255, 255, 255, 30)
            surface.DrawOutlinedRect(0, 0, w, h, 2)
        end

        -- Command header
        local commandHeader = vgui.Create("DButton", commandContainer)
        commandHeader:Dock(TOP)
        commandHeader:SetTall(120)
        commandHeader:SetText("")
        commandHeader.Paint = function(self, w, h)
            local arrow = expandedStates.command and "▼" or "▶"
            draw.SimpleText(arrow .. " COMMAND", "CM15_Label", 16, 30, color_white)
            draw.SimpleText("Officer roles", "DermaDefaultBold", 16, 70, color_white)
        end
        commandHeader.DoClick = function()
            expandedStates.command = not expandedStates.command
            RefreshMenu()
        end

        -- Command roles (shown when expanded)
        if expandedStates.command then
            local commandRoleContainer = vgui.Create("DPanel", commandContainer)
            commandRoleContainer:Dock(TOP)
            commandRoleContainer:DockMargin(20, 5, 0, 5)
            commandRoleContainer:SetTall(300)
            commandRoleContainer.Paint = function(self, w, h)
                surface.SetDrawColor(40, 40, 40, 180)
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(255, 255, 255, 20)
                surface.DrawOutlinedRect(0, 0, w, h, 1)
            end

            local commandLayout = vgui.Create("DIconLayout", commandRoleContainer)
            commandLayout:Dock(FILL)
            commandLayout:DockMargin(8, 8, 8, 8)
            commandLayout:SetSpaceX(8)
            commandLayout:SetSpaceY(8)

            for _, roleData in ipairs(CM15_ROLES.Humans.Command.roles) do
                local remaining = "?"
                if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Categories and LatestSlots.Humans.Categories.Command then
                    local sv = LatestSlots.Humans.Categories.Command[roleData.id]
                    if sv then 
                        remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken) 
                    end
                end

                local rolePanel = vgui.Create("DPanel", commandLayout)
                rolePanel:SetSize(360, 280)
                rolePanel.Paint = function(self, w, h)
                    surface.SetDrawColor(40, 40, 40, 180)
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(255, 255, 255, 30)
                    surface.DrawOutlinedRect(0, 0, w, h, 1)
                end

                -- Role info at top
                local infoLabel = vgui.Create("DLabel", rolePanel)
                infoLabel:SetText(roleData.name .. " (" .. remaining .. ")")
                infoLabel:SetFont("DermaDefaultBold")
                infoLabel:SetTextColor(color_white)
                infoLabel:SetPos(5, 5)
                infoLabel:SetSize(290, 20)
                infoLabel:SetMouseInputEnabled(false)

                -- Model button
                BigModelButton(rolePanel, {x=5, y=25, w=350, h=250},
                    roleData.model, function()
                        net.Start(NET.PickRole)
                            net.WriteInt(TEAM_HUMANS, 8)
                            net.WriteString(roleData.id)
                            net.WriteTable({ category = "Command" })
                        net.SendToServer()
                        RoleMenu:Remove()
                    end)
            end
        end

        -- === MARINES CATEGORY ===
        local marinesContainer = vgui.Create("DPanel", scroll)
        marinesContainer:Dock(TOP)
        marinesContainer:DockMargin(0, 0, 0, 8)
        
        -- Calculate marines height based on expanded squads
        local marinesHeight = 120
        if expandedStates.marines then
            for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
                marinesHeight = marinesHeight + 100
                if expandedStates.squads[squad] then
                    marinesHeight = marinesHeight + 310
                end
            end
        end
        marinesContainer:SetTall(marinesHeight)
        marinesContainer.Paint = function(self, w, h)
            surface.SetDrawColor(50, 50, 50, 200)
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(255, 255, 255, 30)
            surface.DrawOutlinedRect(0, 0, w, h, 2)
        end

        -- Marines header
        local marinesHeader = vgui.Create("DButton", marinesContainer)
        marinesHeader:Dock(TOP)
        marinesHeader:SetTall(120)
        marinesHeader:SetText("")
        marinesHeader.Paint = function(self, w, h)
            local arrow = expandedStates.marines and "▼" or "▶"
            draw.SimpleText(arrow .. " MARINES", "CM15_Label", 16, 30, color_white)
            draw.SimpleText("Squad-based roles", "DermaDefaultBold", 16, 70, color_white)
        end
        marinesHeader.DoClick = function()
            expandedStates.marines = not expandedStates.marines
            RefreshMenu()
        end

        -- Marines squads (shown when expanded)
        if expandedStates.marines then
            for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
                -- Squad header
                local squadHeader = vgui.Create("DButton", marinesContainer)
                squadHeader:Dock(TOP)
                squadHeader:DockMargin(20, 2, 0, 2)
                squadHeader:SetTall(100)
                squadHeader:SetText("")
                squadHeader.Paint = function(self, w, h)
                    surface.SetDrawColor(60, 60, 60, 160)
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(255, 255, 255, 40)
                    surface.DrawOutlinedRect(0, 0, w, h, 1)
                    
                    local arrow = expandedStates.squads[squad] and "▼" or "▶"
                    draw.SimpleText(arrow .. " " .. squad .. " Squad", "DermaLarge", 16, 25, color_white)
                    draw.SimpleText("Click to expand roles", "DermaDefault", 16, 60, Color(200, 200, 200))
                end
                squadHeader.DoClick = function()
                    expandedStates.squads[squad] = not expandedStates.squads[squad]
                    RefreshMenu()
                end

                -- Squad roles (shown when squad is expanded)
                if expandedStates.squads[squad] then
                    local rolesContainer = vgui.Create("DPanel", marinesContainer)
                    rolesContainer:Dock(TOP)
                    rolesContainer:DockMargin(40, 5, 0, 5)
                    rolesContainer:SetTall(300)
                    rolesContainer.Paint = function(self, w, h)
                        surface.SetDrawColor(30, 30, 30, 140)
                        surface.DrawRect(0, 0, w, h)
                        surface.SetDrawColor(255, 255, 255, 20)
                        surface.DrawOutlinedRect(0, 0, w, h, 1)
                    end

                    -- Use DIconLayout for horizontal arrangement
                    local roleLayout = vgui.Create("DIconLayout", rolesContainer)
                    roleLayout:Dock(FILL)
                    roleLayout:DockMargin(8, 8, 8, 8)
                    roleLayout:SetSpaceX(8)
                    roleLayout:SetSpaceY(8)

                    for _, role in ipairs(CM15_ROLES.Humans.Marines.displayOrder) do
                        local remaining = "?"
                        if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Marines and LatestSlots.Humans.Marines[squad] then
                            local sv = LatestSlots.Humans.Marines[squad][role]
                            if sv then 
                                remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken) 
                            end
                        end

                        -- Each role panel
                        local rolePanel = vgui.Create("DPanel", roleLayout)
                        rolePanel:SetSize(280, 280)
                        rolePanel.Paint = function(self, w, h)
                            surface.SetDrawColor(40, 40, 40, 180)
                            surface.DrawRect(0, 0, w, h)
                            surface.SetDrawColor(255, 255, 255, 30)
                            surface.DrawOutlinedRect(0, 0, w, h, 1)
                        end

                        -- Role name and slots at top
                        local roleInfoLabel = vgui.Create("DLabel", rolePanel)
                        roleInfoLabel:SetText(role .. " (" .. remaining .. ")")
                        roleInfoLabel:SetFont("DermaDefaultBold")
                        roleInfoLabel:SetTextColor(color_white)
                        roleInfoLabel:SetPos(5, 5)
                        roleInfoLabel:SetSize(240, 20)
                        roleInfoLabel:SetMouseInputEnabled(false)

                        -- Model button
                        local model = CM15_ROLES.Humans.Marines.iconModels[role] or "models/Humans/Group03/male_04.mdl"
                        BigModelButton(rolePanel, {x=5, y=25, w=270, h=250},
                            model, function()
                                net.Start(NET.PickRole)
                                    net.WriteInt(TEAM_HUMANS, 8)
                                    net.WriteString(role)
                                    net.WriteTable({ category = "Marines", squad = squad, role = role })
                                net.SendToServer()
                                RoleMenu:Remove()
                            end)
                    end
                end
            end
        end
    end

    -- Initial menu build
    RefreshMenu()
end

-- === NETWORK RECEIVERS ===
net.Receive(NET.OpenTeamMenu, OpenTeamMenu)

net.Receive(NET.OpenRoleMenu, function()
    local teamId = net.ReadInt(8)
    if teamId == TEAM_HUMANS then
        OpenHumanRoleMenu()
    elseif teamId == TEAM_ALIENS then
        OpenAlienRoleMenu()
    end
end)

-- === INITIALIZATION ===
hook.Add("Initialize", "CM15_DebugCL", function()
    print("[CM15] cl_init.lua loaded on CLIENT")
end)

-- Override F1 to open team menu when spectating
hook.Add("OnSpawnMenuOpen", "CM15_OverrideF1", function()
    if LocalPlayer():Team() == TEAM_SPECTATOR then
        OpenTeamMenu()
        return false -- Prevent default spawn menu
    end
    -- Let sandbox spawn menu work normally for players in game
end)

-- Console command backup
concommand.Add("cm15_menu", function()
    OpenTeamMenu()
end)