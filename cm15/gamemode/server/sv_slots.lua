-- gamemodes/cm15/gamemode/server/sv_slots.lua
-- Slot management system

CM15_Slots = CM15_Slots or {}

-- Slot tracker
local SlotTracker = {
    Humans = {
        Marines = {},
        Categories = {}
    },
    Aliens = {}
}

-- Initialize alien slots
function CM15_Slots.InitializeAlienSlots()
    SlotTracker.Aliens = {}
    
    if CM15_ROLES and CM15_ROLES.Aliens then
        for roleId, roleData in pairs(CM15_ROLES.Aliens) do
            if roleData and roleData.slots then
                SlotTracker.Aliens[roleId] = { 
                    taken = 0, 
                    limit = roleData.slots 
                }
                print("[CM15] Initialized alien role: " .. roleId .. " with " .. tostring(roleData.slots) .. " slots")
            end
        end
    else
        print("[CM15] Warning: CM15_ROLES.Aliens not found, using fallback alien roles")
        SlotTracker.Aliens = {
            Queen = { taken = 0, limit = 1 },
            Praetorian = { taken = 0, limit = 2 },
            Warrior = { taken = 0, limit = 4 },
            Drone = { taken = 0, limit = 6 },
            Runner = { taken = 0, limit = CM15_UNLIMITED or -1 }
        }
    end
end

-- Reset human slots
function CM15_Slots.ResetHumanSlots()
    SlotTracker.Humans.Marines = {}
    if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Marines then
        for _, squad in ipairs(CM15_ROLES.Humans.Marines.squads) do
            SlotTracker.Humans.Marines[squad] = {}
            for role, limit in pairs(CM15_ROLES.Humans.Marines.perSquad) do
                SlotTracker.Humans.Marines[squad][role] = { taken = 0, limit = limit }
            end
        end
    end
    
    SlotTracker.Humans.Categories = {
        Survivors = {},
        Command = {}
    }
    
    if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Survivors then
        SlotTracker.Humans.Categories.Survivors.Survivor = { 
            taken = 0, 
            limit = CM15_ROLES.Humans.Survivors.roles[1].slots 
        }
    end
    
    if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Command then
        for _, r in ipairs(CM15_ROLES.Humans.Command.roles) do
            SlotTracker.Humans.Categories.Command[r.id] = { taken = 0, limit = r.slots }
        end
    end
end

-- Reset alien slots
function CM15_Slots.ResetAlienSlots()
    CM15_Slots.InitializeAlienSlots()
end

-- Reset all slots
function CM15_Slots.ResetAll()
    CM15_Slots.ResetHumanSlots()
    CM15_Slots.ResetAlienSlots()
end

-- Ensure slots are initialized
function CM15_Slots.EnsureSlots()
    if not SlotTracker or not SlotTracker.Humans or not SlotTracker.Humans.Marines or not SlotTracker.Aliens then
        CM15_Slots.ResetAll()
    end
end

-- Get or initialize survivor slot
function CM15_Slots.GetOrInitSurvivor()
    CM15_Slots.EnsureSlots()
    SlotTracker.Humans.Categories = SlotTracker.Humans.Categories or {}
    local cats = SlotTracker.Humans.Categories
    cats.Survivors = cats.Survivors or {}
    local sv = cats.Survivors.Survivor
    if not sv then
        local limit = (CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Survivors 
            and CM15_ROLES.Humans.Survivors.roles[1].slots) or CM15_UNLIMITED
        sv = { taken = 0, limit = limit }
        cats.Survivors.Survivor = sv
    end
    return sv
end

-- Get or initialize command slot
function CM15_Slots.GetOrInitCommand(roleId)
    CM15_Slots.EnsureSlots()
    SlotTracker.Humans.Categories = SlotTracker.Humans.Categories or {}
    local cats = SlotTracker.Humans.Categories
    cats.Command = cats.Command or {}
    local sv = cats.Command[roleId]
    if not sv then
        local limit = 1
        if CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Command then
            for _, r in ipairs(CM15_ROLES.Humans.Command.roles) do
                if r.id == roleId then 
                    limit = r.slots or limit 
                    break 
                end
            end
        end
        sv = { taken = 0, limit = limit }
        cats.Command[roleId] = sv
    end
    return sv
end

-- Get or initialize marine slot
function CM15_Slots.GetOrInitMarine(squad, role)
    CM15_Slots.EnsureSlots()
    SlotTracker.Humans.Marines[squad] = SlotTracker.Humans.Marines[squad] or {}
    local sv = SlotTracker.Humans.Marines[squad][role]
    if not sv then
        local limit = (CM15_ROLES and CM15_ROLES.Humans and CM15_ROLES.Humans.Marines 
            and CM15_ROLES.Humans.Marines.perSquad[role]) or 0
        sv = { taken = 0, limit = limit }
        SlotTracker.Humans.Marines[squad][role] = sv
    end
    return sv
end

-- Get alien slot
function CM15_Slots.GetAlienSlot(roleId)
    return SlotTracker.Aliens[roleId]
end

-- Get slot tracker
function CM15_Slots.GetTracker()
    return SlotTracker
end

-- Broadcast slots to clients
function CM15_Slots.BroadcastSlots(ply)
    net.Start(CM15_NET.SyncSlots)
        net.WriteTable(SlotTracker)
    if IsValid(ply) then 
        net.Send(ply) 
    else 
        net.Broadcast() 
    end
end