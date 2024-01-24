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
        DEFAULT_CHAT_FRAME:AddMessage("What are you going to waste your time on today?")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
    end
end)

-- Update the checkboxes based on the saved settings
local ShowTicksIfAttributeIsSet = CreateFrame("Frame")
ShowTicksIfAttributeIsSet:RegisterEvent("PLAYER_LOGIN")

ShowTicksIfAttributeIsSet:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        checkbox_HideObjectiveTracker:SetChecked(zUISavedSettings.HideObjectiveTrackerSetting)
        checkbox_HideChatFrame:SetChecked(zUISavedSettings.HideChatFrameSetting)
        checkbox_HideQuickJoinToastButton:SetChecked(zUISavedSettings.HideQuickJoinToastButtonSetting)
        checkbox_HideBagBar:SetChecked(zUISavedSettings.HideBagBarSetting)
        checkbox_HideMultiBarRight:SetChecked(zUISavedSettings.HideMultiBarRightSetting)
        checkbox_HideHudTooltip:SetChecked(zUISavedSettings.HideHudTooltipSetting)
    end
end)

-- Create a Slash Command to show the settings UI
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg)
    zUI_Panel:Show()
end