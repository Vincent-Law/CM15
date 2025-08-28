-- gamemodes/cm15/gamemode/client/cl_menus.lua
-- Menu utility functions

CM15_Menus = CM15_Menus or {}

-- Latest slot data storage
CM15_Menus.LatestSlots = nil

-- Create fullscreen overlay
function CM15_Menus.MakeFullscreenOverlay()
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

-- Create model button
function CM15_Menus.BigModelButton(parent, rect, modelPath, onClick)
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
            ent:SetSequence(4)
        elseif string.find(modelPath or "", "facehugger") then
            ent:SetSequence(1)
        else
            -- Human models
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
        
        -- Stop animations from playing
        ent:SetCycle(0)
        ent:SetPlaybackRate(0)
    end
    
    mdl:SetMouseInputEnabled(false)
    return btn, mdl
end