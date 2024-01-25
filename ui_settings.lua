zUI = zUI or {}
zUI_SavedSettings = zUI_SavedSettings or {}

-- Welcome to the zUI Settings UI!
local welcomeMessage = CreateFrame("Frame")
welcomeMessage:RegisterEvent("PLAYER_LOGIN")

welcomeMessage:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage("                         Welcome back!")
        DEFAULT_CHAT_FRAME:AddMessage(
            "What are you going to waste your time on today?")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
    end
end)

-- Update the checkboxes based on the saved settings
local ShowTicksIfAttributeIsSet = CreateFrame("Frame")
ShowTicksIfAttributeIsSet:RegisterEvent("ADDON_LOADED")

ShowTicksIfAttributeIsSet:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        checkbox_HideObjectiveTracker:SetChecked(
            zUI_SavedSettings.HideObjectiveTrackerSetting)
        checkbox_HideChatFrame:SetChecked(zUI_SavedSettings.HideChatFrameSetting)
        checkbox_HideQuickJoinToastButton:SetChecked(
            zUI_SavedSettings.HideQuickJoinToastButtonSetting)
        checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSetting)
        checkbox_HideMultiBarRight:SetChecked(
            zUI_SavedSettings.HideMultiBarRightSetting)
        checkbox_HideHudTooltip:SetChecked(
            zUI_SavedSettings.HideHudTooltipSetting)
        checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)
    end
end)

-- Create a Slash Command to show the settings UI
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg) zUI_Panel:Show() end
