--[[
    create tables and enable multichar settings
]] zUI = zUI or {}
zUI_SavedSettings = zUI_SavedSettings or {}

-- Welcome to the zUI Settings UI!
local welcomeMessage = CreateFrame("Frame")
welcomeMessage:RegisterEvent("PLAYER_LOGIN")

welcomeMessage:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        local playerName = GetUnitName("player")
        local yellow = "|cFFFFFF00"
        local red = "|cFFFF0000"
        local purple = "|cFF800080"
        local endColor = "|r"
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(yellow ..
                                          "                                         Welcome back " ..
                                          red .. playerName .. yellow .. "!" ..
                                          endColor)
        DEFAULT_CHAT_FRAME:AddMessage(purple ..
                                          "                     What are you going to waste your time on today?" ..
                                          endColor)
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
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
        Checkbox_HideObjectiveTrackerInCombat:SetChecked(
            zUI_SavedSettings.HideObjectiveTrackerSetting)
        Checkbox_HideChatFrameInCombat:SetChecked(
            zUI_SavedSettings.HideChatFrameSetting)
        Checkbox_HideQuickJoinToastButton:SetChecked(
            zUI_SavedSettings.HideQuickJoinToastButtonSetting)
        Checkbox_HideBagBarInCombat:SetChecked(
            zUI_SavedSettings.HideBagBarSetting)
        Checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSettingPerm)
        Checkbox_HideHudTooltipInCombat:SetChecked(
            zUI_SavedSettings.HideHudTooltipSetting)
        Checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)
        Checkbox_actionBarMod:SetChecked(zUI_SavedSettings.actionBarModSetting)
        Checkbox_XPBar:SetChecked(zUI_SavedSettings.XPBarSetting)
        Checkbox_RepBar:SetChecked(zUI_SavedSettings.RepBarSetting)
        Checkbox_MicroMenu:SetChecked(zUI_SavedSettings.MicroMenuSetting)
        Checkbox_HideChatSidebar:SetChecked(
            zUI_SavedSettings.HideChatSidebarSetting)
        Checkbox_MoveChatFrameEditBox:SetChecked(
            zUI_SavedSettings.MoveChatFrameEditBoxSetting)
        Checkbox_CustomPaladinPowerBarTexture:SetChecked(
            zUI_SavedSettings.CustomPaladinPowerBarTextureSetting)
    end
end)

-- Create a Slash Command to show the settings UI
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg) ZUI_Panel:Show() end
