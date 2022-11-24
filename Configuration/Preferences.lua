-- ----------------------------------------------------------------------------
-- AddOn namespace & Libraries
-- ----------------------------------------------------------------------------
local addonName, ns = ...

-- ----------------------------------------------------------------------------
-- Variables
-- ----------------------------------------------------------------------------
local MiniMapLDB = LibStub("LibDataBroker-1.1"):NewDataObject(addonName, {
    type = "data source",
    text = "Bunnies!",
    icon = [[Interface\Icons\INV_Chest_Cloth_17]],
    OnClick = function() 
        print(ns.Preferences) 
    end,
    OnTooltipShow = function(tip)
        tip:AddLine("NPCScanner", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
        tip:Show()
    end
    })

local Preferences = {
    profile = {
        minimap = {
            hide = false,
            position = true,
            radius = 90,
            minimapPos = 200,
        },
        message = "Welcome Home!",
        showOnScreen = true,
    },
}

ns.Preferences = Preferences
ns.MiniMapLDB = MiniMapLDB