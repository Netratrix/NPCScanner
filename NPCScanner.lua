-- ----------------------------------------------------------------------------
-- AddOn namespace & Libraries
-- ----------------------------------------------------------------------------
local addonName, ns = ...

local NPCScanner = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0")
local MinimapIcon = LibStub("LibDBIcon-1.0")


-- ----------------------------------------------------------------------------
-- AddOn methods.
-- ----------------------------------------------------------------------------
function NPCScanner:OnInitialize()
    -- ----------------------------------------------------------------------------
    -- OnInitialize
    -- ----------------------------------------------------------------------------
    local Preferences = ns.Preferences
    local MiniMapLDB = ns.MiniMapLDB

    local db = LibStub("AceDB-3.0"):New("NPCScannerDB", Preferences, true)
    MinimapIcon:Register(addonName, MiniMapLDB, db.profile.minimap) 
    self:RegisterChatCommand("bunnies", "CommandTheBunnies")
end
  
function NPCScanner:OnEnable()
    -- ----------------------------------------------------------------------------
    -- OnEnable
    -- ----------------------------------------------------------------------------
end
  
function NPCScanner:OnDisable()
    -- ----------------------------------------------------------------------------
    -- OnDisable
    -- ----------------------------------------------------------------------------
end