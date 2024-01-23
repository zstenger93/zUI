zUI = { }
zUISavedSettings = { }

-- Create a frame for the UI
local zUI_Panel = CreateFrame("Frame", "zUIConfig", UIParent, "BackdropTemplate")

zUI_Panel:SetSize(600, 600)

zUI_Panel:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 8, right = 8, top = 8, bottom = 8 }
})

-- UI Panel Title
local UI_Title = zUI_Panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")

UI_Title:SetPoint("TOP", zUI_Panel, "TOP", 0, -10)
UI_Title:SetText("zUI Settings")

-- Set the backdrop color to 50% transparent black
zUI_Panel:SetBackdropColor(0, 0, 0, 0.7)
zUI_Panel:SetPoint("CENTER")
zUI_Panel:Hide()

local closeButton = CreateFrame("Button", nil, zUI_Panel, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT")

-- Handle the OnClick event for the close button
closeButton:SetScript("OnClick", function()
    zUI_Panel:Hide()
end)






-- Create the menu buttons
local hideShowButton = CreateFrame("Button", nil, zUI_Panel, "GameMenuButtonTemplate")
hideShowButton:SetPoint("TOPLEFT", 10, -10)
hideShowButton:SetSize(100, 20)
hideShowButton:SetText("General")
hideShowButton:SetNormalFontObject("GameFontNormal")

local generalButton = CreateFrame("Button", nil, zUI_Panel, "GameMenuButtonTemplate")
generalButton:SetPoint("TOPLEFT", hideShowButton, "BOTTOMLEFT", 0, -10)
generalButton:SetSize(100, 20)
generalButton:SetText("Hide & Show")
generalButton:SetNormalFontObject("GameFontNormal")

-- Create the pages
local hideShowPage = CreateFrame("Frame", nil, zUI_Panel)
hideShowPage:SetSize(200, 200)
hideShowPage:SetPoint("TOPLEFT", hideShowButton, "TOPRIGHT", 10, 0)

local generalPage = CreateFrame("Frame", nil, zUI_Panel)
generalPage:SetSize(200, 200)
generalPage:SetPoint("TOPLEFT", generalButton, "TOPRIGHT", 10, 0)
generalPage:Show() -- Show the general page by default

-- Create the setting for HideObjectiveTrackerSetting
local checkbox = CreateFrame("CheckButton", "zUIHideObjectiveTrackerCheckbox", hideShowPage, "ChatConfigCheckButtonTemplate") -- Create the checkbox on hideShowPage

-- Create a font string for the checkbox name
local checkboxName = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName:SetPoint("LEFT", checkbox, "RIGHT", 20, 0)
checkboxName:SetText("Objective Tracker")

checkbox:SetPoint("TOPLEFT", 40, -30)
checkbox.tooltip = "Hide Objective Tracker during combat."
checkbox:SetChecked(zUISavedSettings.HideObjectiveTrackerSetting)

checkbox:SetScript("OnClick", function(self)
    zUISavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
end)

-- Handle the OnClick event for the menu buttons
hideShowButton:SetScript("OnClick", function()
    hideShowPage:Show()
    generalPage:Hide()
end)

generalButton:SetScript("OnClick", function()
    hideShowPage:Hide()
    generalPage:Show()
end)


























-- -- Create the setting for HideObjectiveTrackerSetting
-- local checkbox = CreateFrame("CheckButton", "zUIHideObjectiveTrackerCheckbox", zUI_Panel, "ChatConfigCheckButtonTemplate")

-- -- Create a font string for the checkbox name
-- local checkboxName = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
-- checkboxName:SetPoint("LEFT", checkbox, "RIGHT", 20, 0)
-- checkboxName:SetText("Objective Tracker")

-- checkbox:SetPoint("TOPLEFT", 40, -30)
-- checkbox.tooltip = "Hide Objective Tracker during combat."
-- checkbox:SetChecked(zUISavedSettings.HideObjectiveTrackerSetting)

-- checkbox:SetScript("OnClick", function(self)
--     zUISavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
-- end)

-- Create a Slash Command to show the settings UI
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg)
    zUI_Panel:Show()
end

-- Hide the objective tracker when combat starts
local HideObjectiveTracker = CreateFrame("Frame")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_ENABLED")

HideObjectiveTracker:SetScript("OnEvent", function(self, event)
    if ObjectiveTrackerFrame and zUISavedSettings.HideObjectiveTrackerSetting then
        if event == "PLAYER_REGEN_DISABLED" then
            local status, error = pcall(function() ObjectiveTrackerFrame:Hide() end)
            if not status then
                zUI:Print(error)
            end
        elseif event == "PLAYER_REGEN_ENABLED" then
            local status, error = pcall(function() ObjectiveTrackerFrame:Show() end)
            if not status then
                zUI:Print(error)
            end
        end
    end
end)

-- Hide the chat frame when combat starts
local HideChatFrameObject = CreateFrame("Frame")

HideChatFrameObject:RegisterEvent("PLAYER_REGEN_DISABLED")
HideChatFrameObject:RegisterEvent("PLAYER_REGEN_ENABLED")

HideChatFrameObject:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function() 
            GeneralDockManager:Hide()
            ChatFrame1:Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            GeneralDockManager:Show()
            ChatFrame1:Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide the Quick Join Toast Button 
local HideSocialButton = CreateFrame("Frame")

HideSocialButton:RegisterEvent("PLAYER_LOGIN")

HideSocialButton:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        local status, error = pcall(function() 
            QuickJoinToastButton:Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide the bag bar when combat starts
local HideBagBar = CreateFrame("Frame")

HideBagBar:RegisterEvent("PLAYER_REGEN_DISABLED")
HideBagBar:RegisterEvent("PLAYER_REGEN_ENABLED")

HideBagBar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:GetParent():Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:GetParent():Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide MultiBarRight(action bar 4 when combat starts
local frame = CreateFrame("Frame")
local fadeTicker = nil

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(self, event, addonName)
    MultiBarRight:Show()
    if event == "ADDON_LOADED" and addonName == "zUI" then
        local barFrame = CreateFrame("Frame", nil, UIParent)
        barFrame:SetAllPoints(MultiBarRight)
        barFrame:EnableMouse(true)
        
        local function fadeOut()
            local alpha = MultiBarRight:GetAlpha()
            local newAlpha = alpha - 0.01
            if newAlpha < 0.01 then
                newAlpha = 0.01
                if fadeTicker then
                    fadeTicker:Cancel()
                    fadeTicker = nil
                end
            end
            MultiBarRight:SetAlpha(newAlpha)
        end

        barFrame:SetScript("OnEnter", function(self)
            if fadeTicker then
                fadeTicker:Cancel()
                fadeTicker = nil
            end
            MultiBarRight:SetAlpha(1)
        end)

        barFrame:SetScript("OnLeave", function(self)
            if fadeTicker then
                fadeTicker:Cancel()
            end
            fadeTicker = C_Timer.NewTicker(0.015, fadeOut, 100)
        end)

        MultiBarRight:Show()
        MultiBarRight:SetAlpha(0.01)
    end
end)