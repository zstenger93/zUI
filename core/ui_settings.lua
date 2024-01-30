SettingsInitialized = false
---------------------------------------------------------------------------------------------------
-- create tables and enable multichar settings
---------------------------------------------------------------------------------------------------
zUI = zUI or {}
zUI_SavedSettings = zUI_SavedSettings or {}
PlayerIdentifier = PlayerIdentifier or UnitName("player") .. "-" ..
                       GetRealmName()
zUI_SavedSettings[PlayerIdentifier] = zUI_SavedSettings[PlayerIdentifier] or {}

function TableIsEmpty(t)
    if next(t) == nil then
        return true
    else
        return false
    end
end

function PrintTable(t) for key, value in pairs(t) do print(key, value) end end

---------------------------------------------------------------------------------------------------
-- Initialize the settings if the table is empty
---------------------------------------------------------------------------------------------------
local initializeSettingsIfNewTable = CreateFrame("Frame")
initializeSettingsIfNewTable:RegisterEvent("PLAYER_LOGIN")
initializeSettingsIfNewTable:SetScript("OnEvent", function(self, event)
    PlayerIdentifier = PlayerIdentifier or UnitName("player") .. "-" ..
                           GetRealmName()
    zUI_SavedSettings[PlayerIdentifier] =
        zUI_SavedSettings[PlayerIdentifier] or {}
    if TableIsEmpty(zUI_SavedSettings[PlayerIdentifier]) then
        zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideChatFrameSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting =
            false
        zUI_SavedSettings[PlayerIdentifier].HideBagBarSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting = false
        zUI_SavedSettings[PlayerIdentifier].fpsFrameSetting = false
        zUI_SavedSettings[PlayerIdentifier].actionBarModSetting = false
        zUI_SavedSettings[PlayerIdentifier].XPBarSetting = false
        zUI_SavedSettings[PlayerIdentifier].RepBarSetting = false
        zUI_SavedSettings[PlayerIdentifier].MicroMenuSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideChatSidebarSetting = false
        zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting = false
        zUI_SavedSettings[PlayerIdentifier].CustomPaladinPowerBarTextureSetting =
            false
        zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting = false
        zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting = false
        zUI_SavedSettings[PlayerIdentifier].HeaderMenuSetting = false
        zUI_SavedSettings[PlayerIdentifier].CampaignQuestHeaderSetting = false
        zUI_SavedSettings[PlayerIdentifier].QuestSectionSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerArtworkSetting =
            false
        zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting = false
        zUI_SavedSettings[PlayerIdentifier].WorldQuestHeaderSetting = false
        zUI_SavedSettings[PlayerIdentifier].AchievementHeaderSetting = false
        zUI_SavedSettings[PlayerIdentifier].ScenarioHeaderSetting = false
        zUI_SavedSettings[PlayerIdentifier].AdventureHeaderSetting = false
        zUI_SavedSettings[PlayerIdentifier].HideBagBarSettingPerm = false
        zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting =
            false
        zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting =
            false
        zUI_SavedSettings[PlayerIdentifier].ButtonScale = 1
        SettingsInitialized = true
    else
        SettingsInitialized = true
    end
    UpdateCheckboxes()
end)

---------------------------------------------------------------------------------------------------
-- Welcome to the zUI Settings UI!
---------------------------------------------------------------------------------------------------
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
        DEFAULT_CHAT_FRAME:AddMessage(
            "                                 /zui to open the settings panel")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
        DEFAULT_CHAT_FRAME:AddMessage(" ")
    end
end)

---------------------------------------------------------------------------------------------------
-- Update the checkboxes based on the saved settings (set to false by default if it's nil)
---------------------------------------------------------------------------------------------------
function UpdateCheckboxes()
    if SettingsInitialized then
        Checkbox_HideObjectiveTrackerInCombat:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerSetting or
                false)
        Checkbox_HideChatFrameInCombat:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideChatFrameSetting or false)
        Checkbox_HideQuickJoinToastButton:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting or
                false)
        Checkbox_HideBagBarInCombat:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideBagBarSetting or false)
        Checkbox_HideBagBar:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                           .HideBagBarSettingPerm or false)
        Checkbox_HideHudTooltipInCombat:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting or false)
        Checkbox_fpsFrame:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                         .fpsFrameSetting or false)
        Checkbox_actionBarMod:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].actionBarModSetting or false)
        Checkbox_XPBar:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                      .XPBarSetting or false)
        Checkbox_RepBar:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                       .RepBarSetting or false)
        Checkbox_MicroMenu:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                          .MicroMenuSetting or false)
        Checkbox_HideChatSidebar:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].HideChatSidebarSetting or false)
        Checkbox_MoveChatFrameEditBox:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting or
                false)
        Checkbox_CustomPaladinPowerBarTexture:SetChecked(
            zUI_SavedSettings[PlayerIdentifier]
                .CustomPaladinPowerBarTextureSetting or false)
        Checkbox_MultiBarLeft:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting or false)
        Checkbox_MultiBarRight:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting or false)
        Checkbox_HeaderMenu:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                           .HeaderMenuSetting or false)
        Checkbox_CampaignQuestHeader:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].CampaignQuestHeaderSetting or
                false)
        Checkbox_QuestSection:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].QuestSectionSetting or false)
        Checkbox_HideObjectiveTrackerArtwork:SetChecked(
            zUI_SavedSettings[PlayerIdentifier]
                .HideObjectiveTrackerArtworkSetting or false)
        Checkbox_MoveQSB:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                        .MoveQSBSetting or false)
        Checkbox_WorldQuestHeader:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].WorldQuestHeaderSetting or false)
        Checkbox_AchievementHeader:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].AchievementHeaderSetting or
                false)
        Checkbox_ScenarioHeader:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].ScenarioHeaderSetting or false)
        Checkbox_AdventureHeader:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].AdventureHeaderSetting or false)
        Checkbox_CustomDeathKnightRunes:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting or
                false)
        Checkbox_CustomRogueEnergyPoints:SetChecked(
            zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting or
                false)
        ScaleSlider:SetValue(zUI_SavedSettings[PlayerIdentifier].ButtonScale or
                                 1)
    end
end

---------------------------------------------------------------------------------------------------
-- Create a Slash Command to show the settings UI
---------------------------------------------------------------------------------------------------
SLASH_ZUI1 = "/zui"
SlashCmdList["ZUI"] = function(msg) ZUI_Panel:Show() end
