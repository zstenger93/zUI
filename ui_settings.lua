--[[
    create tables and enable multichar settings
]]

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
        DEFAULT_CHAT_FRAME:AddMessage("                                              Welcome back!")
        DEFAULT_CHAT_FRAME:AddMessage(
            "                     What are you going to waste your time on today?")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
    end
end)

-- Update the checkboxes based on the saved settings
local ShowTicksIfAttributeIsSet = CreateFrame("Frame")
ShowTicksIfAttributeIsSet:RegisterEvent("ADDON_LOADED")

ShowTicksIfAttributeIsSet:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        Checkbox_HideObjectiveTracker:SetChecked(
            zUI_SavedSettings.HideObjectiveTrackerSetting)
        Checkbox_HideChatFrame:SetChecked(zUI_SavedSettings.HideChatFrameSetting)
        Checkbox_HideQuickJoinToastButton:SetChecked(
            zUI_SavedSettings.HideQuickJoinToastButtonSetting)
        Checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSetting)
        Checkbox_HideHudTooltip:SetChecked(
            zUI_SavedSettings.HideHudTooltipSetting)
        Checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)
        Checkbox_actionBarMod:SetChecked(zUI_SavedSettings.actionBarMod)
        Checkbox_XPBar:SetChecked(zUI_SavedSettings.XPBar)
        Checkbox_RepBar:SetChecked(zUI_SavedSettings.RepBar)
        Checkbox_MicroMenu:SetChecked(zUI_SavedSettings.MicroMenu)
    end
end)

-- Create a Slash Command to show the settings UI
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg) ZUI_Panel:Show() end
