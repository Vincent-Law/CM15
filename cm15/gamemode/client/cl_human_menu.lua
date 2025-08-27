-- gamemodes/cm15/gamemode/client/cl_human_menu.lua
-- Human role selection menu

local RoleMenu

function CM15_Menus.OpenHumanRoleMenu()
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
            if CM15_Menus.LatestSlots and CM15_Menus.LatestSlots.Humans and CM15_Menus.LatestSlots.Humans.Categories and CM15_Menus.LatestSlots.Humans.Categories.Survivors then
                local sv = CM15_Menus.LatestSlots.Humans.Categories.Survivors.Survivor
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
            if CM15_Menus.LatestSlots and CM15_Menus.LatestSlots.Humans and CM15_Menus.LatestSlots.Humans.Categories and CM15_Menus.LatestSlots.Humans.Categories.Survivors then
                local sv = CM15_Menus.LatestSlots.Humans.Categories.Survivors.Survivor
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

            -- Model button - Updated with Colonial Marine model
            CM15_Menus.BigModelButton(survivorPanel, {x=5, y=25, w=390, h=250},
                "models/ariter/aliens/colonial_marine_camo_barney_ply.mdl", function()
                    net.Start(CM15_NET.PickRole)
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
                if CM15_Menus.LatestSlots and CM15_Menus.LatestSlots.Humans and CM15_Menus.LatestSlots.Humans.Categories and CM15_Menus.LatestSlots.Humans.Categories.Command then
                    local sv = CM15_Menus.LatestSlots.Humans.Categories.Command[roleData.id]
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

                -- Model button - Uses Colonial Marine models from sh_roles.lua
                CM15_Menus.BigModelButton(rolePanel, {x=5, y=25, w=350, h=250},
                    roleData.model, function()
                        net.Start(CM15_NET.PickRole)
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
                        if CM15_Menus.LatestSlots and CM15_Menus.LatestSlots.Humans and CM15_Menus.LatestSlots.Humans.Marines and CM15_Menus.LatestSlots.Humans.Marines[squad] then
                            local sv = CM15_Menus.LatestSlots.Humans.Marines[squad][role]
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

                        -- Model button - Updated with Colonial Marine models
                        local model = CM15_ROLES.Humans.Marines.iconModels[role] or "models/ariter/aliens/colonial_marine_camo_male_04_ply.mdl"
                        CM15_Menus.BigModelButton(rolePanel, {x=5, y=25, w=270, h=250},
                            model, function()
                                net.Start(CM15_NET.PickRole)
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