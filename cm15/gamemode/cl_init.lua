include("shared.lua")

local NET = CM15_NET

-- Utility: Fullscreen translucent panel
local function MakeFullscreenOverlay()
  local pnl = vgui.Create("DPanel")
  pnl:SetSize(ScrW(), ScrH())
  pnl:SetPos(0, 0)
  pnl:SetKeyboardInputEnabled(true)
  pnl:SetMouseInputEnabled(true)
  pnl:MakePopup()
  pnl.Paint = function(self, w, h)
    surface.SetDrawColor(0, 0, 0, 200) -- black, translucent
    surface.DrawRect(0, 0, w, h)
  end
  return pnl
end

-- Utility: big button with model
local function BigModelButton(parent, rect, modelPath, label, onClick)
  local btn = vgui.Create("DButton", parent)
  btn:SetText("")
  btn:SetPos(rect.x, rect.y)
  btn:SetSize(rect.w, rect.h)
  btn.DoClick = onClick
  btn.Paint = function(self, w, h)
    -- invisible, model panel paints; draw border
    surface.SetDrawColor(255,255,255,25); surface.DrawOutlinedRect(0,0,w,h,2)
    draw.SimpleText(label, "DermaLarge", w/2, h-40, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
  end

  local mdl = vgui.Create("DModelPanel", btn)
  mdl:Dock(FILL)
  mdl:SetModel(modelPath or "models/Humans/Group03/male_04.mdl")
  mdl:SetFOV(45)
  mdl:SetCamPos(Vector(80, 0, 50))
  mdl:SetLookAt(Vector(0, 0, 37))
  mdl.LayoutEntity = function(self, ent)
    ent:SetSequence(ent:LookupSequence("idle_all_01") or 0)
    ent:SetAngles(Angle(0, (RealTime()*20)%360, 0))
  end
  return btn
end

-- TEAM MENU
local TeamMenu
local function OpenTeamMenu()
  if IsValid(TeamMenu) then TeamMenu:Remove() end
  TeamMenu = MakeFullscreenOverlay()

  -- “Stay Spectator” at top middle
  local stay = vgui.Create("DButton", TeamMenu)
  stay:SetText("Stay as Spectator")
  surface.SetFont("DermaLarge")
  local tw, th = surface.GetTextSize(stay:GetText())
  stay:SetSize(tw + 32, th + 16)
  stay:SetPos((ScrW()-stay:GetWide())/2, 20)
  stay.DoClick = function() TeamMenu:Remove() end

  -- Two giant, non-resizable halves
  local w, h = ScrW(), ScrH()
  local halfW = math.floor(w/2) - 30
  local pad = 20
  local btnH = h - 120

  BigModelButton(TeamMenu, {x=pad, y=80, w=halfW, h=btnH},
    "models/Humans/Group03/male_04.mdl", "Join HUMANS", function()
      net.Start(NET.PickTeam) net.WriteInt(TEAM_HUMANS, 8) net.SendToServer()
      TeamMenu:Remove()
    end)

  BigModelButton(TeamMenu, {x=w - halfW - pad, y=80, w=halfW, h=btnH},
    "models/antlion_guard.mdl", "Join ALIENS", function()
      net.Start(NET.PickTeam) net.WriteInt(TEAM_ALIENS, 8) net.SendToServer()
      TeamMenu:Remove()
    end)
end
net.Receive(NET.OpenTeamMenu, OpenTeamMenu)

-- ROLE MENU
local RoleMenu
local LatestSlots = nil

net.Receive(NET.SyncSlots, function()
  LatestSlots = net.ReadTable()
end)

local function BackButton(parent, onBack)
  local back = vgui.Create("DButton", parent)
  back:SetText("Back")
  back:SetPos(20, 20)
  back:SetSize(120, 40)
  back.DoClick = function()
    if onBack then onBack() end
  end
end

local function OpenAlienRoleMenu()
  if IsValid(RoleMenu) then RoleMenu:Remove() end
  RoleMenu = MakeFullscreenOverlay()
  BackButton(RoleMenu, function()
    RoleMenu:Remove()
    OpenTeamMenu()
  end)

  local w, h = ScrW(), ScrH()
  local pad = 40
  local btnW = math.floor((w - pad*3)/2)
  local btnH = h - 140
  local larvaSlots = "∞"
  local queenSlots = "1"

  if LatestSlots and LatestSlots.Aliens then
    local L = LatestSlots.Aliens
    larvaSlots = L.Larva.limit == CM15_UNLIMITED and "∞" or tostring(math.max(0, L.Larva.limit - L.Larva.taken))
    queenSlots = L.Queen.limit == CM15_UNLIMITED and "∞" or tostring(math.max(0, L.Queen.limit - L.Queen.taken))
  end

  BigModelButton(RoleMenu, {x=pad, y=80, w=btnW, h=btnH},
    "models/antlion.mdl", "Larva (Slots: "..larvaSlots..")", function()
      net.Start(NET.PickRole)
        net.WriteInt(TEAM_ALIENS, 8)
        net.WriteString("Larva")
        net.WriteTable({})
      net.SendToServer()
      RoleMenu:Remove()
    end)

  BigModelButton(RoleMenu, {x=w - btnW - pad, y=80, w=btnW, h=btnH},
    "models/antlion_guard.mdl", "Queen (Slots: "..queenSlots..")", function()
      net.Start(NET.PickRole)
        net.WriteInt(TEAM_ALIENS, 8)
        net.WriteString("Queen")
        net.WriteTable({})
      net.SendToServer()
      RoleMenu:Remove()
    end)
end

local function OpenHumanRoleMenu()
  if IsValid(RoleMenu) then RoleMenu:Remove() end
  RoleMenu = MakeFullscreenOverlay()
  BackButton(RoleMenu, function()
    RoleMenu:Remove()
    OpenTeamMenu()
  end)

  -- Scrollable list of categories as rows; expand on click
  local scroll = vgui.Create("DScrollPanel", RoleMenu)
  scroll:Dock(FILL)
  scroll:DockMargin(40, 80, 40, 40)

  local function SlotTextLeft(remaining)
    if remaining == "∞" then return "Slots: ∞" end
    return "Slots left: " .. tostring(remaining)
  end

  -- Survivors row
  do
    local remaining = "∞"
    if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Categories
       and LatestSlots.Humans.Categories.Survivors then
      local sv = LatestSlots.Humans.Categories.Survivors.Survivor
      if sv then
        remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken)
      end
    end
    local row = vgui.Create("DButton", scroll)
    row:Dock(TOP); row:DockMargin(0,0,0,12); row:SetTall(120)
    row:SetText("")
    row.Paint = function(self,w,h)
      surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
      draw.SimpleText("Survivors", "DermaLarge", 16, 16, color_white)
      draw.SimpleText(SlotTextLeft(remaining), "DermaDefaultBold", 16, 60, color_white)
    end
    row.DoClick = function()
      -- One medium square button with spinning model
      local pop = vgui.Create("DFrame")
      pop:SetTitle("Survivor")
      pop:SetSize(420, 420)
      pop:Center()
      pop:MakePopup()
      local btn = BigModelButton(pop, {x=20, y=40, w=380, h=340},
        "models/Humans/Group01/male_02.mdl", "Choose Survivor", function()
          net.Start(NET.PickRole)
            net.WriteInt(TEAM_HUMANS, 8)
            net.WriteString("Survivor")
            net.WriteTable({ category = "Survivors" })
          net.SendToServer()
          pop:Remove(); RoleMenu:Remove()
        end)
    end
  end

  -- Command row
  do
    local row = vgui.Create("DButton", scroll)
    row:Dock(TOP); row:DockMargin(0,0,0,12); row:SetTall(120)
    row:SetText("")
    row.Paint = function(self,w,h)
      surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
      draw.SimpleText("Command", "DermaLarge", 16, 16, color_white)
      draw.SimpleText("Click to view roles", "DermaDefaultBold", 16, 60, color_white)
    end
    row.DoClick = function()
      local frame = vgui.Create("DFrame")
      frame:SetTitle("Command Roles")
      frame:SetSize(740, 520); frame:Center(); frame:MakePopup()

      local grid = vgui.Create("DIconLayout", frame)
      grid:Dock(FILL); grid:DockMargin(12,12,12,12); grid:SetSpaceX(12); grid:SetSpaceY(12)

      local function addRole(id, nice, mdl)
        local remaining = "?"
        if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Categories and LatestSlots.Humans.Categories.Command then
          local sv = LatestSlots.Humans.Categories.Command[id]
          if sv then remaining = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken) end
        end
        local p = vgui.Create("DPanel", grid)
        p:SetSize(220, 220)
        p.Paint = function(self,w,h)
          surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
          draw.SimpleText(nice.."  ("..remaining..")", "DermaDefaultBold", 8, 8, color_white)
        end
        local b = BigModelButton(p, {x=8, y=32, w=204, h=180}, mdl, "Pick "..nice, function()
          net.Start(NET.PickRole)
            net.WriteInt(TEAM_HUMANS, 8)
            net.WriteString(id)
            net.WriteTable({ category = "Command" })
          net.SendToServer()
          frame:Remove(); RoleMenu:Remove()
        end)
      end

      addRole("CommandingOfficer", "Commanding Officer", "models/Humans/Group03/male_01.mdl")
      addRole("ExecutiveOfficer",  "Executive Officer",  "models/Humans/Group03/male_02.mdl")
      addRole("StaffOfficer",      "Staff Officer",      "models/Humans/Group03/male_03.mdl")
      addRole("SeniorEnlisted",    "Senior Enlisted Advisor", "models/Humans/Group03/male_05.mdl")
    end
  end

  -- Marines row (with squads)
  do
    local row = vgui.Create("DButton", scroll)
    row:Dock(TOP); row:DockMargin(0,0,0,12); row:SetTall(120)
    row:SetText("")
    row.Paint = function(self,w,h)
      surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
      draw.SimpleText("Marines", "DermaLarge", 16, 16, color_white)
      draw.SimpleText("Click to choose a Squad & Role", "DermaDefaultBold", 16, 60, color_white)
    end
    row.DoClick = function()
      local frame = vgui.Create("DFrame")
      frame:SetTitle("Marines – Squads")
      frame:SetSize(900, 640); frame:Center(); frame:MakePopup()

      local squads = CM15_ROLES.Humans.Marines.squads
      local list = vgui.Create("DIconLayout", frame)
      list:Dock(FILL); list:DockMargin(12,12,12,12); list:SetSpaceX(12); list:SetSpaceY(12)

      local function SquadButton(squadName)
        local pnl = vgui.Create("DPanel", list)
        pnl:SetSize(420, 280)
        pnl.Paint = function(self,w,h)
          surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
          draw.SimpleText(squadName.." Squad", "DermaLarge", 12, 8, color_white)
        end

        local sub = vgui.Create("DButton", pnl)
        sub:SetText("Open Roles")
        sub:SetPos(12, 40); sub:SetSize(140, 32)
        sub.DoClick = function()
          local f2 = vgui.Create("DFrame")
          f2:SetTitle(squadName.." – Roles")
          f2:SetSize(900, 640); f2:Center(); f2:MakePopup()
          local grid = vgui.Create("DIconLayout", f2)
          grid:Dock(FILL); grid:DockMargin(12,12,12,12); grid:SetSpaceX(12); grid:SetSpaceY(12)

          local order = CM15_ROLES.Humans.Marines.displayOrder
          for _, role in ipairs(order) do
            local rem = "?"
            if LatestSlots and LatestSlots.Humans and LatestSlots.Humans.Marines and LatestSlots.Humans.Marines[squadName] then
              local sv = LatestSlots.Humans.Marines[squadName][role]
              if sv then rem = (sv.limit == CM15_UNLIMITED) and "∞" or math.max(0, sv.limit - sv.taken) end
            end
            local p = vgui.Create("DPanel", grid)
            p:SetSize(200, 240)
            p.Paint = function(self,w,h)
              surface.SetDrawColor(255,255,255,30); surface.DrawOutlinedRect(0,0,w,h,2)
              draw.SimpleText(role.."  ("..rem..")", "DermaDefaultBold", 8, 8, color_white)
            end
            local mdl = CM15_ROLES.Humans.Marines.iconModels[role] or "models/Humans/Group03/male_04.mdl"
            local b = BigModelButton(p, {x=8, y=32, w=184, h=196}, mdl, "Pick "..role, function()
              net.Start(NET.PickRole)
                net.WriteInt(TEAM_HUMANS, 8)
                net.WriteString(role)
                net.WriteTable({ category = "Marines", squad = squadName, role = role })
              net.SendToServer()
              f2:Remove(); frame:Remove(); RoleMenu:Remove()
            end)
          end
        end
      end

      for _, sq in ipairs(squads) do SquadButton(sq) end
    end
  end
end

net.Receive(NET.OpenRoleMenu, function()
  local teamId = net.ReadInt(8)
  if teamId == TEAM_HUMANS then OpenHumanRoleMenu()
  elseif teamId == TEAM_ALIENS then OpenAlienRoleMenu()
  end
end)


--hook start
hook.Add("Initialize", "CM15_DebugCL", function()
    print("[CM15] cl_init.lua loaded on CLIENT")
end)
--hook end
