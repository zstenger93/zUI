---------------------------------------------- CHECKBOXES ON GENERAL PAGE ----------------------------------------------
---------------------------------------------------------------------------------------------------
-- Checkbox for fps display
---------------------------------------------------------------------------------------------------
---@class Checkbox_fpsFrame : CheckButton
Checkbox_fpsFrame = CreateFrame("CheckButton", "zUIfpsFrameCheckbox",
                                GeneralPage, "ChatConfigCheckButtonTemplate")
local fpsCheckbox = Checkbox_fpsFrame:CreateFontString(nil, "OVERLAY",
                                                       "GameFontNormal")
fpsCheckbox:SetPoint("LEFT", Checkbox_fpsFrame, "RIGHT", 20, 0)
fpsCheckbox:SetText("Display the FPS")
Checkbox_fpsFrame:SetPoint("TOPLEFT", 20, -30)
Checkbox_fpsFrame.tooltip = "Show FPS Frame at the top-middle of the screen."

if SettingsInitialized then
    Checkbox_fpsFrame:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                     .fpsFrameSetting)
end

Checkbox_fpsFrame:SetScript("OnClick", function(self)
    if SettingsInitialized then
        zUI_SavedSettings[PlayerIdentifier].fpsFrameSetting = self:GetChecked()
    end
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for chat frame edit box
---------------------------------------------------------------------------------------------------
---@class Checkbox_MoveChatFrameEditBox : CheckButton
Checkbox_MoveChatFrameEditBox = CreateFrame("CheckButton",
                                            "zUIMoveChatFrameEditBoxCheckbox",
                                            GeneralPage,
                                            "ChatConfigCheckButtonTemplate")
local chatFrameCheckbox = Checkbox_MoveChatFrameEditBox:CreateFontString(nil,
                                                                         "OVERLAY",
                                                                         "GameFontNormal")
chatFrameCheckbox:SetPoint("LEFT", Checkbox_MoveChatFrameEditBox, "RIGHT", 20, 0)
chatFrameCheckbox:SetText("Move Chat Edit Box")
Checkbox_MoveChatFrameEditBox:SetPoint("TOPLEFT", 20, -60)
Checkbox_MoveChatFrameEditBox.tooltip =
    "Move the chat frame edit box to the top of the chat frame."
Checkbox_MoveChatFrameEditBox:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting)

Checkbox_MoveChatFrameEditBox:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for MoveQSB function
---------------------------------------------------------------------------------------------------
---@class Checkbox_MoveQSB : CheckButton
Checkbox_MoveQSB = CreateFrame("CheckButton", "zUIMoveQSBCheckbox", GeneralPage,
                               "ChatConfigCheckButtonTemplate")
local moveQSBCheckbox = Checkbox_MoveQSB:CreateFontString(nil, "OVERLAY",
                                                          "GameFontNormal")
moveQSBCheckbox:SetPoint("LEFT", Checkbox_MoveQSB, "RIGHT", 20, 0)
moveQSBCheckbox:SetText("Move Queue Status Button")
Checkbox_MoveQSB:SetPoint("TOPLEFT", 20, -90) -- Adjust the position as needed
Checkbox_MoveQSB.tooltip =
    "Move the Queue Status Button to the left side of the Minimap."
Checkbox_MoveQSB:SetChecked(zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting)

Checkbox_MoveQSB:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for ChatFrameMovable
---------------------------------------------------------------------------------------------------
---@class Checkbox_ChatFrameMovable : CheckButton
Checkbox_ChatFrameMovable = CreateFrame("CheckButton",
                                        "zUIChatFrameMovableCheckbox",
                                        GeneralPage,
                                        "ChatConfigCheckButtonTemplate")
local chatFrameMovableCheckbox = Checkbox_ChatFrameMovable:CreateFontString(nil,
                                                                            "OVERLAY",
                                                                            "GameFontNormal")
chatFrameMovableCheckbox:SetPoint("LEFT", Checkbox_ChatFrameMovable, "RIGHT",
                                  20, 0)
chatFrameMovableCheckbox:SetText("Chat Frame Movable")
Checkbox_ChatFrameMovable:SetPoint("TOPLEFT", 20, -120)
Checkbox_ChatFrameMovable.tooltip =
    "Enable or disable moving of the chat frame."
Checkbox_ChatFrameMovable:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                         .ChatFrameMovableSetting)

Checkbox_ChatFrameMovable:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for TotalAmountOfHonorableKills
---------------------------------------------------------------------------------------------------
---@class Checkbox_TotalAmountOfHonorableKills : CheckButton
Checkbox_TotalAmountOfHonorableKills = CreateFrame("CheckButton",
                                                   "zUITotalAmountOfHonorableKillsCheckbox",
                                                   GeneralPage,
                                                   "ChatConfigCheckButtonTemplate")
local totalAmountOfHonorableKillsCheckbox =
    Checkbox_TotalAmountOfHonorableKills:CreateFontString(nil, "OVERLAY",
                                                          "GameFontNormal")
totalAmountOfHonorableKillsCheckbox:SetPoint("LEFT",
                                             Checkbox_TotalAmountOfHonorableKills,
                                             "RIGHT", 20, 0)
totalAmountOfHonorableKillsCheckbox:SetText("Total Amount Of HK")
Checkbox_TotalAmountOfHonorableKills:SetPoint("TOPLEFT", 20, -150)
Checkbox_TotalAmountOfHonorableKills.tooltip =
    "Enable or disable to display total amount of honorable kills on the account in the topleft corner."
Checkbox_TotalAmountOfHonorableKills:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].TotalAmountOfHonorableKillsSetting)

Checkbox_TotalAmountOfHonorableKills:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].TotalAmountOfHonorableKillsSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Custom Player Bags
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomBags : CheckButton
Checkbox_CustomBags = CreateFrame("CheckButton", "zUICustomBagsCheckbox",
                                  GeneralPage, "ChatConfigCheckButtonTemplate")
local customBagsCheckbox = Checkbox_CustomBags:CreateFontString(nil, "OVERLAY",
                                                                "GameFontNormal")
customBagsCheckbox:SetPoint("LEFT", Checkbox_CustomBags, "RIGHT", 20, 0)
customBagsCheckbox:SetText("Custom Bags (BROKEN ATM)")
Checkbox_CustomBags:SetPoint("TOPLEFT", 20, -180)
Checkbox_CustomBags.tooltip = "Enable or disable custom player bags."
Checkbox_CustomBags:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                   .CustomBagsSetting)

Checkbox_CustomBags:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomBagsSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Custom Bank
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomBank : CheckButton
Checkbox_CustomBank = CreateFrame("CheckButton", "zUICustomBankCheckbox",
                                  GeneralPage, "ChatConfigCheckButtonTemplate")
local customBankCheckbox = Checkbox_CustomBank:CreateFontString(nil, "OVERLAY",
                                                                "GameFontNormal")
customBankCheckbox:SetPoint("LEFT", Checkbox_CustomBank, "RIGHT", 20, 0)
customBankCheckbox:SetText("Custom Bank (BROKEN ATM)")
Checkbox_CustomBank:SetPoint("TOPLEFT", 20, -210)
Checkbox_CustomBank.tooltip = "Enable or disable custom bank."
Checkbox_CustomBank:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                   .CustomBankSetting)

Checkbox_CustomBank:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomBankSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for minimap
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomMinimap : CheckButton
Checkbox_CustomMinimap = CreateFrame("CheckButton", "zUICustomMinimapCheckbox",
                                     GeneralPage,
                                     "ChatConfigCheckButtonTemplate")
local customMinimapCheckbox = Checkbox_CustomMinimap:CreateFontString(nil,
                                                                      "OVERLAY",
                                                                      "GameFontNormal")
customMinimapCheckbox:SetPoint("LEFT", Checkbox_CustomMinimap, "RIGHT", 20, 0)
customMinimapCheckbox:SetText("Custom Minimap")
Checkbox_CustomMinimap:SetPoint("TOPLEFT", 20, -240)
Checkbox_CustomMinimap.tooltip =
    "Removing the border textures and making it movable."
Checkbox_CustomMinimap:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                      .CustomMinimapSetting)

Checkbox_CustomMinimap:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomMinimapSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for vigor
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomVigor : CheckButton
Checkbox_CustomVigor = CreateFrame("CheckButton", "zUICustomVigorCheckbox",
                                   GeneralPage, "ChatConfigCheckButtonTemplate")
local customVigorCheckbox = Checkbox_CustomVigor:CreateFontString(nil,
                                                                  "OVERLAY",
                                                                  "GameFontNormal")
customVigorCheckbox:SetPoint("LEFT", Checkbox_CustomVigor, "RIGHT", 20, 0)
customVigorCheckbox:SetText("Custom Vigor")
Checkbox_CustomVigor:SetPoint("TOPLEFT", 20, -270)
Checkbox_CustomVigor.tooltip = "Removing the wings and vigor borders"
Checkbox_CustomVigor:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                    .CustomVigorSetting)

Checkbox_CustomVigor:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomVigorSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Text on General Page
---------------------------------------------------------------------------------------------------
local headerMenuLabel = GeneralPage:CreateFontString(nil, "OVERLAY",
                                                     "GameFontNormal")
headerMenuLabel:SetPoint("TOPLEFT", 250, -30)
headerMenuLabel:SetText("Auto Collapse On Loading")

---------------------------------------------------------------------------------------------------
-- Checkbox for HeaderMenu
---------------------------------------------------------------------------------------------------
---@class Checkbox_HeaderMenu : CheckButton
Checkbox_HeaderMenu = CreateFrame("CheckButton", "zUIHeaderMenuCheckbox",
                                  GeneralPage, "ChatConfigCheckButtonTemplate")
local headerMenuCheckbox = Checkbox_HeaderMenu:CreateFontString(nil, "OVERLAY",
                                                                "GameFontNormal")
headerMenuCheckbox:SetPoint("LEFT", Checkbox_HeaderMenu, "RIGHT", 20, 0)
headerMenuCheckbox:SetText("Entire Objective Tracker")
Checkbox_HeaderMenu:SetPoint("TOPLEFT", 250, -60)
Checkbox_HeaderMenu.tooltip =
    "Minimize the entire Objective Tracker on loading screens."
Checkbox_HeaderMenu:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                   .HeaderMenuSetting)

Checkbox_HeaderMenu:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HeaderMenuSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for CampaignQuestHeader
---------------------------------------------------------------------------------------------------
---@class Checkbox_CampaignQuestHeader : CheckButton
Checkbox_CampaignQuestHeader = CreateFrame("CheckButton",
                                           "zUICampaignQuestHeaderCheckbox",
                                           GeneralPage,
                                           "ChatConfigCheckButtonTemplate")
local campaignQuestHeaderCheckbox =
    Checkbox_CampaignQuestHeader:CreateFontString(nil, "OVERLAY",
                                                  "GameFontNormal")
campaignQuestHeaderCheckbox:SetPoint("LEFT", Checkbox_CampaignQuestHeader,
                                     "RIGHT", 20, 0)
campaignQuestHeaderCheckbox:SetText("Campaign Quest")
Checkbox_CampaignQuestHeader:SetPoint("TOPLEFT", 250, -90)
Checkbox_CampaignQuestHeader.tooltip =
    "Minimize the campaign quest header of the Objective Tracker on loading screens."
Checkbox_CampaignQuestHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                            .CampaignQuestHeaderSetting)

Checkbox_CampaignQuestHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CampaignQuestHeaderSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for quest section
---------------------------------------------------------------------------------------------------
---@class Checkbox_QuestSection : CheckButton
Checkbox_QuestSection = CreateFrame("CheckButton", "zUIQuestSectionCheckbox",
                                    GeneralPage, "ChatConfigCheckButtonTemplate")
local questSectionCheckbox = Checkbox_QuestSection:CreateFontString(nil,
                                                                    "OVERLAY",
                                                                    "GameFontNormal")
questSectionCheckbox:SetPoint("LEFT", Checkbox_QuestSection, "RIGHT", 20, 0)
questSectionCheckbox:SetText("Quest Section")
Checkbox_QuestSection:SetPoint("TOPLEFT", 250, -120)
Checkbox_QuestSection.tooltip =
    "Minimize the quest section of the Objective Tracker on loading screens."
Checkbox_QuestSection:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                     .QuestSectionSetting)

Checkbox_QuestSection:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].QuestSectionSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for AchievementHeader
---------------------------------------------------------------------------------------------------
---@class Checkbox_AchievementHeader : CheckButton
Checkbox_AchievementHeader = CreateFrame("CheckButton",
                                         "zUIAchievementHeaderCheckbox",
                                         GeneralPage,
                                         "ChatConfigCheckButtonTemplate")
local achievementHeaderCheckbox = Checkbox_AchievementHeader:CreateFontString(
                                      nil, "OVERLAY", "GameFontNormal")
achievementHeaderCheckbox:SetPoint("LEFT", Checkbox_AchievementHeader, "RIGHT",
                                   20, 0)
achievementHeaderCheckbox:SetText("Achievement")
Checkbox_AchievementHeader:SetPoint("TOPLEFT", 250, -150)
Checkbox_AchievementHeader.tooltip =
    "Minimize the achievement header of the Objective Tracker on loading screens."
Checkbox_AchievementHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                          .AchievementHeaderSetting)

Checkbox_AchievementHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].AchievementHeaderSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for ScenarioHeader
---------------------------------------------------------------------------------------------------
---@class Checkbox_ScenarioHeader : CheckButton
Checkbox_ScenarioHeader = CreateFrame("CheckButton",
                                      "zUIScenarioHeaderCheckbox", GeneralPage,
                                      "ChatConfigCheckButtonTemplate")
local scenarioHeaderCheckbox = Checkbox_ScenarioHeader:CreateFontString(nil,
                                                                        "OVERLAY",
                                                                        "GameFontNormal")
scenarioHeaderCheckbox:SetPoint("LEFT", Checkbox_ScenarioHeader, "RIGHT", 20, 0)
scenarioHeaderCheckbox:SetText("Scenario")
Checkbox_ScenarioHeader:SetPoint("TOPLEFT", 250, -180)
Checkbox_ScenarioHeader.tooltip =
    "Minimize the scenario header of the Objective Tracker on loading screens."
Checkbox_ScenarioHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                       .ScenarioHeaderSetting)

Checkbox_ScenarioHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].ScenarioHeaderSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for AdventureHeader
---------------------------------------------------------------------------------------------------
---@class Checkbox_AdventureHeader : CheckButton
Checkbox_AdventureHeader = CreateFrame("CheckButton",
                                       "zUIAdventureHeaderCheckbox",
                                       GeneralPage,
                                       "ChatConfigCheckButtonTemplate")
local adventureHeaderCheckbox = Checkbox_AdventureHeader:CreateFontString(nil,
                                                                          "OVERLAY",
                                                                          "GameFontNormal")
adventureHeaderCheckbox:SetPoint("LEFT", Checkbox_AdventureHeader, "RIGHT", 20,
                                 0)
adventureHeaderCheckbox:SetText("Adventure")
Checkbox_AdventureHeader:SetPoint("TOPLEFT", 250, -210)
Checkbox_AdventureHeader.tooltip =
    "Minimize the adventure header of the Objective Tracker on loading screens."
Checkbox_AdventureHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                        .AdventureHeaderSetting)

Checkbox_AdventureHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].AdventureHeaderSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for WorldQuestHeader
---------------------------------------------------------------------------------------------------
---@class Checkbox_WorldQuestHeader : CheckButton
Checkbox_WorldQuestHeader = CreateFrame("CheckButton",
                                        "zUIWorldQuestHeaderCheckbox",
                                        GeneralPage,
                                        "ChatConfigCheckButtonTemplate")
local worldQuestHeaderCheckbox = Checkbox_WorldQuestHeader:CreateFontString(nil,
                                                                            "OVERLAY",
                                                                            "GameFontNormal")
worldQuestHeaderCheckbox:SetPoint("LEFT", Checkbox_WorldQuestHeader, "RIGHT",
                                  20, 0)
worldQuestHeaderCheckbox:SetText("World Quest")
Checkbox_WorldQuestHeader:SetPoint("TOPLEFT", 250, -240)
Checkbox_WorldQuestHeader.tooltip =
    "Minimize the world quest header of the Objective Tracker on loading screens."
Checkbox_WorldQuestHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                         .WorldQuestHeaderSetting)

Checkbox_WorldQuestHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].WorldQuestHeaderSetting =
        self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON SHOW & HIDE PAGE --------------------------------------------

---------------------------------------------------------------------------------------------------
-- Create the setting for HideObjectiveTrackerSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideObjectiveTrackerInCombat : CheckButton
Checkbox_HideObjectiveTrackerInCombat = CreateFrame("CheckButton",
                                                    "zUIHideObjectiveTrackerCheckbox",
                                                    HideShowPage,
                                                    "ChatConfigCheckButtonTemplate")
local objectiveTrackerCheckbox =
    Checkbox_HideObjectiveTrackerInCombat:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
objectiveTrackerCheckbox:SetPoint("LEFT", Checkbox_HideObjectiveTrackerInCombat,
                                  "RIGHT", 20, 0)
objectiveTrackerCheckbox:SetText("Objective Tracker")
Checkbox_HideObjectiveTrackerInCombat:SetPoint("TOPLEFT", 20, -40)
Checkbox_HideObjectiveTrackerInCombat.tooltip =
    "Hide Objective Tracker during combat."
Checkbox_HideObjectiveTrackerInCombat:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerSetting)

Checkbox_HideObjectiveTrackerInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for HideChatFrameSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideChatFrameInCombat : CheckButton
Checkbox_HideChatFrameInCombat = CreateFrame("CheckButton",
                                             "zUIHideChatFrameCheckbox",
                                             HideShowPage,
                                             "ChatConfigCheckButtonTemplate")
local chatFrameInCombatCheckbox =
    Checkbox_HideChatFrameInCombat:CreateFontString(nil, "OVERLAY",
                                                    "GameFontNormal")
chatFrameInCombatCheckbox:SetPoint("LEFT", Checkbox_HideChatFrameInCombat,
                                   "RIGHT", 20, 0)
chatFrameInCombatCheckbox:SetText("Chat Frame")
Checkbox_HideChatFrameInCombat:SetPoint("TOPLEFT", 20, -70)
Checkbox_HideChatFrameInCombat.tooltip = "Hide Chat Frame during combat."
Checkbox_HideChatFrameInCombat:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HideChatFrameSetting)

Checkbox_HideChatFrameInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideChatFrameSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for HideBagBarSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideBagBarInCombat : CheckButton
Checkbox_HideBagBarInCombat = CreateFrame("CheckButton",
                                          "zUIHideBagBarCheckbox", HideShowPage,
                                          "ChatConfigCheckButtonTemplate")
local bagBarInCombatCheckbox = Checkbox_HideBagBarInCombat:CreateFontString(nil,
                                                                            "OVERLAY",
                                                                            "GameFontNormal")
bagBarInCombatCheckbox:SetPoint("LEFT", Checkbox_HideBagBarInCombat, "RIGHT",
                                20, 0)
bagBarInCombatCheckbox:SetText("Bag Bar")
Checkbox_HideBagBarInCombat:SetPoint("TOPLEFT", 20, -100)
Checkbox_HideBagBarInCombat.tooltip = "Hide Bag Bar during combat."
Checkbox_HideBagBarInCombat:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                           .HideBagBarSetting)

Checkbox_HideBagBarInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideBagBarSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for HideHudTooltipSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideHudTooltipInCombat : CheckButton
Checkbox_HideHudTooltipInCombat = CreateFrame("CheckButton",
                                              "zUIHideHudTooltipCheckbox",
                                              HideShowPage,
                                              "ChatConfigCheckButtonTemplate")
local hudTooltipCheckbox = Checkbox_HideHudTooltipInCombat:CreateFontString(nil,
                                                                            "OVERLAY",
                                                                            "GameFontNormal")
hudTooltipCheckbox:SetPoint("LEFT", Checkbox_HideHudTooltipInCombat, "RIGHT",
                            20, 0)
hudTooltipCheckbox:SetText("HUD Tooltips")
Checkbox_HideHudTooltipInCombat:SetPoint("TOPLEFT", 20, -130)
Checkbox_HideHudTooltipInCombat.tooltip = "Hide HUD Tooltips during combat."
Checkbox_HideHudTooltipInCombat:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting)

Checkbox_HideHudTooltipInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for XP bar
---------------------------------------------------------------------------------------------------
---@class Checkbox_XPBar : CheckButton
Checkbox_XPBar = CreateFrame("CheckButton", "zUIXPBarCheckbox", HideShowPage,
                             "ChatConfigCheckButtonTemplate")
local checkboxXPBarName = Checkbox_XPBar:CreateFontString(nil, "OVERLAY",
                                                          "GameFontNormal")
checkboxXPBarName:SetPoint("LEFT", Checkbox_XPBar, "RIGHT", 20, 0)
checkboxXPBarName:SetText("XP Bar")
Checkbox_XPBar:SetPoint("TOPLEFT", 250, -40)
Checkbox_XPBar.tooltip = "Hide XP Bar."
Checkbox_XPBar:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].XPBarSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Reputation bar
---------------------------------------------------------------------------------------------------
---@class Checkbox_RepBar : CheckButton
Checkbox_RepBar = CreateFrame("CheckButton", "zUIRepBarCheckbox", HideShowPage,
                              "ChatConfigCheckButtonTemplate")
local checkboxRepBarName = Checkbox_RepBar:CreateFontString(nil, "OVERLAY",
                                                            "GameFontNormal")
checkboxRepBarName:SetPoint("LEFT", Checkbox_RepBar, "RIGHT", 20, 0)
checkboxRepBarName:SetText("Reputation Bar")
Checkbox_RepBar:SetPoint("TOPLEFT", 250, -70)
Checkbox_RepBar.tooltip = "Hide Reputation Bar."
Checkbox_RepBar:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].RepBarSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Micro Menu
---------------------------------------------------------------------------------------------------
---@class Checkbox_MicroMenu : CheckButton
Checkbox_MicroMenu = CreateFrame("CheckButton", "zUIMicroMenuCheckbox",
                                 HideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxMicroMenuName = Checkbox_MicroMenu:CreateFontString(nil,
                                                                  "OVERLAY",
                                                                  "GameFontNormal")
checkboxMicroMenuName:SetPoint("LEFT", Checkbox_MicroMenu, "RIGHT", 20, 0)
checkboxMicroMenuName:SetText("Micro Menu")
Checkbox_MicroMenu:SetPoint("TOPLEFT", 250, -100)
Checkbox_MicroMenu.tooltip = "Hide Micro Menu."
Checkbox_MicroMenu:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].MicroMenuSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Chat Sidebar
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideChatSidebar : CheckButton
Checkbox_HideChatSidebar = CreateFrame("CheckButton",
                                       "zUIHideChatSidebarCheckbox",
                                       HideShowPage,
                                       "ChatConfigCheckButtonTemplate")
local checkboxHideChatSidebarName = Checkbox_HideChatSidebar:CreateFontString(
                                        nil, "OVERLAY", "GameFontNormal")
checkboxHideChatSidebarName:SetPoint("LEFT", Checkbox_HideChatSidebar, "RIGHT",
                                     20, 0)
checkboxHideChatSidebarName:SetText("Hide Chat Sidebar")
Checkbox_HideChatSidebar:SetPoint("TOPLEFT", 250, -130)
Checkbox_HideChatSidebar.tooltip = "Hide Chat Sidebar and Buttons."
Checkbox_HideChatSidebar:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideChatSidebarSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for HideQuickJoinToastButtonSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideQuickJoinToastButton : CheckButton
Checkbox_HideQuickJoinToastButton = CreateFrame("CheckButton",
                                                "zUIHideQuickJoinToastButtonCheckbox",
                                                HideShowPage,
                                                "ChatConfigCheckButtonTemplate")
local quickJoinCheckbox = Checkbox_HideQuickJoinToastButton:CreateFontString(
                              nil, "OVERLAY", "GameFontNormal")
quickJoinCheckbox:SetPoint("LEFT", Checkbox_HideQuickJoinToastButton, "RIGHT",
                           20, 0)
quickJoinCheckbox:SetText("Quick Join Toast Button")
Checkbox_HideQuickJoinToastButton:SetPoint("TOPLEFT", 250, -160)
Checkbox_HideQuickJoinToastButton.tooltip =
    "Hide Quick Join Toast Button during combat."
Checkbox_HideQuickJoinToastButton:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting)

Checkbox_HideQuickJoinToastButton:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for HideBagBarSetting
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideBagBar : CheckButton
Checkbox_HideBagBar = CreateFrame("CheckButton", "zUIHideBagBarCheckbox",
                                  HideShowPage, "ChatConfigCheckButtonTemplate")
local hideBagBarCheckbox = Checkbox_HideBagBar:CreateFontString(nil, "OVERLAY",
                                                                "GameFontNormal")
hideBagBarCheckbox:SetPoint("LEFT", Checkbox_HideBagBar, "RIGHT", 20, 0)
hideBagBarCheckbox:SetText("Bag Bar")
Checkbox_HideBagBar:SetPoint("TOPLEFT", 250, -190)
Checkbox_HideBagBar.tooltip = "Hide Bag Bar permanently."
Checkbox_HideBagBar:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                   .HideBagBarSettingPerm)

Checkbox_HideBagBar:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideBagBarSettingPerm =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for HideObjectiveTrackerArtwork
---------------------------------------------------------------------------------------------------
---@class Checkbox_HideObjectiveTrackerArtwork : CheckButton
Checkbox_HideObjectiveTrackerArtwork = CreateFrame("CheckButton",
                                                   "zUIHideObjectiveTrackerArtworkCheckbox",
                                                   HideShowPage,
                                                   "ChatConfigCheckButtonTemplate")
local hideObjectiveTrackerArtworkCheckbox =
    Checkbox_HideObjectiveTrackerArtwork:CreateFontString(nil, "OVERLAY",
                                                          "GameFontNormal")
hideObjectiveTrackerArtworkCheckbox:SetPoint("LEFT",
                                             Checkbox_HideObjectiveTrackerArtwork,
                                             "RIGHT", 20, 0)
hideObjectiveTrackerArtworkCheckbox:SetText("Objective Tracker Artwork")
Checkbox_HideObjectiveTrackerArtwork:SetPoint("TOPLEFT", 250, -220)
Checkbox_HideObjectiveTrackerArtwork.tooltip =
    "Hide Objective Tracker Artwork permanently."
Checkbox_HideObjectiveTrackerArtwork:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerArtworkSetting)

Checkbox_HideObjectiveTrackerArtwork:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerArtworkSetting =
        self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Checkbox for Checkbox_HidePlayerAndTargetFrames
---------------------------------------------------------------------------------------------------
---@class Checkbox_HidePlayerAndTargetFrames : CheckButton
Checkbox_HidePlayerAndTargetFrames = CreateFrame("CheckButton",
                                                 "zUIHidePlayerAndTargetFramesCheckbox",
                                                 HideShowPage,
                                                 "ChatConfigCheckButtonTemplate")
local hidePlayerAndTargetFramesCheckbox =
    Checkbox_HidePlayerAndTargetFrames:CreateFontString(nil, "OVERLAY",
                                                        "GameFontNormal")
hidePlayerAndTargetFramesCheckbox:SetPoint("LEFT",
                                           Checkbox_HidePlayerAndTargetFrames,
                                           "RIGHT", 20, 0)
hidePlayerAndTargetFramesCheckbox:SetText("Unit Frame textures")
Checkbox_HidePlayerAndTargetFrames:SetPoint("TOPLEFT", 250, -250)
Checkbox_HidePlayerAndTargetFrames.tooltip =
    "Hide Player, Target, Pet, Party, Target of Target Frame textures and prestigue banners."
Checkbox_HidePlayerAndTargetFrames:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].HidePlayerAndTargetFramesSetting)

Checkbox_HidePlayerAndTargetFrames:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].HidePlayerAndTargetFramesSetting =
        self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON ACTIONBARS PAGE --------------------------------------------

---------------------------------------------------------------------------------------------------
-- Create the setting for actionBarMod
---------------------------------------------------------------------------------------------------
---@class Checkbox_actionBarMod : CheckButton
Checkbox_actionBarMod = CreateFrame("CheckButton", "zUIactionBarModCheckbox",
                                    ActionBarsPage,
                                    "ChatConfigCheckButtonTemplate")
local actionBarModCheckbox = Checkbox_actionBarMod:CreateFontString(nil,
                                                                    "OVERLAY",
                                                                    "GameFontNormal")
actionBarModCheckbox:SetPoint("LEFT", Checkbox_actionBarMod, "RIGHT", 20, 0)
actionBarModCheckbox:SetText("Action Bar Mod")
Checkbox_actionBarMod:SetPoint("TOPLEFT", 20, 30)
Checkbox_actionBarMod.tooltip = "Custom Action Bar Mod."
Checkbox_actionBarMod:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                     .actionBarModSetting)

Checkbox_actionBarMod:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].actionBarModSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for MultiBarLeft
---------------------------------------------------------------------------------------------------
---@class Checkbox_MultiBarLeft : CheckButton
Checkbox_MultiBarLeft = CreateFrame("CheckButton", "zUIMultiBarLeftCheckbox",
                                    ActionBarsPage,
                                    "ChatConfigCheckButtonTemplate")
local multiBarLeftCheckbox = Checkbox_MultiBarLeft:CreateFontString(nil,
                                                                    "OVERLAY",
                                                                    "GameFontNormal")
multiBarLeftCheckbox:SetPoint("LEFT", Checkbox_MultiBarLeft, "RIGHT", 20, 0)
multiBarLeftCheckbox:SetText("MultiBarLeft Visibility")
Checkbox_MultiBarLeft:SetPoint("TOPLEFT", 20, 0)
Checkbox_MultiBarLeft.tooltip = "Make MultiBarLeft visible only on mouseover."
Checkbox_MultiBarLeft:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                     .multiBarLeftSetting)

Checkbox_MultiBarLeft:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create the setting for MultiBarRight
---------------------------------------------------------------------------------------------------
---@class Checkbox_MultiBarRight : CheckButton
Checkbox_MultiBarRight = CreateFrame("CheckButton", "zUIMultiBarRightCheckbox",
                                     ActionBarsPage,
                                     "ChatConfigCheckButtonTemplate")
local multiBarRightCheckbox = Checkbox_MultiBarRight:CreateFontString(nil,
                                                                      "OVERLAY",
                                                                      "GameFontNormal")
multiBarRightCheckbox:SetPoint("LEFT", Checkbox_MultiBarRight, "RIGHT", 20, 0)
multiBarRightCheckbox:SetText("MultiBarRight Visibility")
Checkbox_MultiBarRight:SetPoint("TOPLEFT", 20, -30)
Checkbox_MultiBarRight.tooltip = "Make MultiBarRight visible only on mouseover."
Checkbox_MultiBarRight:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                      .multiBarRightSetting)

Checkbox_MultiBarRight:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Create a slider on the ActionBarsPage for the scale of the buttons
---------------------------------------------------------------------------------------------------
ScaleSlider = CreateFrame("Slider", "ScaleSlider", ActionBarsPage,
                          "OptionsSliderTemplate")
ScaleSlider:SetWidth(200)
ScaleSlider:SetHeight(20)
ScaleSlider:SetPoint("TOPLEFT", Checkbox_MultiBarRight, "BOTTOMLEFT", 0, -40)
ScaleSlider:SetMinMaxValues(0.5, 1.5)
ScaleSlider:SetValueStep(0.01)
ScaleSlider:SetObeyStepOnDrag(true)

local labelText = ActionBarsPage:CreateFontString(nil, "OVERLAY",
                                                  "GameFontNormal")
labelText:SetPoint("BOTTOM", ScaleSlider, "TOP", 0, 5)
labelText:SetText("Adjust the Icon size")

ScaleSlider:SetScript("OnShow", function(self)
    self.Low:SetText("0.5")
    self.High:SetText("1.5")
end)

local initialScale = zUI_SavedSettings[PlayerIdentifier].buttonScale or
                         ActionButton1:GetScale()
ScaleSlider:SetValue(initialScale)

local valueText = ScaleSlider:CreateFontString(nil, "OVERLAY", "GameFontNormal")
valueText:SetPoint("TOP", ScaleSlider, "BOTTOM", 0, -5)
valueText:SetText(string.format("%.2f", initialScale))

ScaleSlider:SetScript("OnValueChanged", function(self, value)
    local actionBars = {
        "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
        "MultiBarLeftButton", "MultiBarRightButton"
    }

    for _, actionBar in ipairs(actionBars) do
        for i = 1, 12 do
            local button = _G[actionBar .. i]
            button:SetScale(value)
        end
    end
    zUI_SavedSettings[PlayerIdentifier].ButtonScale = value
    valueText:SetText(string.format("%.2f", value))
end)

---------------------------------------------------------------------------------------------------
-- Create a slider on the ActionBarsPage for the scale of the hotkey text
---------------------------------------------------------------------------------------------------
HotkeyScaleSlider = CreateFrame("Slider", "HotkeyScaleSlider", ActionBarsPage,
                                "OptionsSliderTemplate")
HotkeyScaleSlider:SetWidth(200)
HotkeyScaleSlider:SetHeight(20)
HotkeyScaleSlider:SetPoint("TOPLEFT", ScaleSlider, "BOTTOMLEFT", 0, -40)
HotkeyScaleSlider:SetMinMaxValues(0.5, 2.0)
HotkeyScaleSlider:SetValueStep(0.01)
HotkeyScaleSlider:SetObeyStepOnDrag(true)

local hotkeyLabel = ActionBarsPage:CreateFontString(nil, "OVERLAY",
                                                    "GameFontNormal")
hotkeyLabel:SetPoint("BOTTOM", HotkeyScaleSlider, "TOP", 0, 5)
hotkeyLabel:SetText("Adjust the Hotkey text size")

HotkeyScaleSlider:SetScript("OnShow", function(self)
    self.Low:SetText("0.5")
    self.High:SetText("2.0")
end)

local initialHotkeyScale = zUI_SavedSettings[PlayerIdentifier].HotkeyScale or 1
HotkeyScaleSlider:SetValue(initialHotkeyScale)

local hotkeyValueText = HotkeyScaleSlider:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
hotkeyValueText:SetPoint("TOP", HotkeyScaleSlider, "BOTTOM", 0, -5)
hotkeyValueText:SetText(string.format("%.2f", initialHotkeyScale))

HotkeyScaleSlider:SetScript("OnValueChanged", function(self, value)
    local actionBars = {
        "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
        "MultiBarLeftButton", "MultiBarRightButton"
    }

    for _, actionBar in ipairs(actionBars) do
        for i = 1, 12 do
            local button = _G[actionBar .. i]
            local hotkey = _G[actionBar .. i .. "HotKey"]
            if hotkey then hotkey:SetScale(value) end
        end
    end

    zUI_SavedSettings[PlayerIdentifier].HotkeyScale = value
    hotkeyValueText:SetText(string.format("%.2f", value))
end)

---------------------------------------------------------------------------------------------------
-- Create a slider on the ActionBarsPage for the scale of the hotkey text
---------------------------------------------------------------------------------------------------
MacroScaleSlider = CreateFrame("Slider", "MacroScaleSlider", ActionBarsPage,
                               "OptionsSliderTemplate")
MacroScaleSlider:SetWidth(200)
MacroScaleSlider:SetHeight(20)
MacroScaleSlider:SetPoint("TOPLEFT", HotkeyScaleSlider, "BOTTOMLEFT", 0, -40)
MacroScaleSlider:SetMinMaxValues(0.5, 2.0)
MacroScaleSlider:SetValueStep(0.01)
MacroScaleSlider:SetObeyStepOnDrag(true)

local macroLabel = ActionBarsPage:CreateFontString(nil, "OVERLAY",
                                                   "GameFontNormal")
macroLabel:SetPoint("BOTTOM", MacroScaleSlider, "TOP", 0, 5)
macroLabel:SetText("Adjust the Macro text size")

MacroScaleSlider:SetScript("OnShow", function(self)
    self.Low:SetText("0.5")
    self.High:SetText("2.0")
end)

local initialMacroScale = zUI_SavedSettings[PlayerIdentifier].MacroScale or 1
MacroScaleSlider:SetValue(initialMacroScale)

local macroValueText = MacroScaleSlider:CreateFontString(nil, "OVERLAY",
                                                         "GameFontNormal")
macroValueText:SetPoint("TOP", MacroScaleSlider, "BOTTOM", 0, -5)
macroValueText:SetText(string.format("%.2f", initialMacroScale))

MacroScaleSlider:SetScript("OnValueChanged", function(self, value)
    local actionBars = {
        "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
        "MultiBarLeftButton", "MultiBarRightButton"
    }

    for _, actionBar in ipairs(actionBars) do
        for i = 1, 12 do
            local button = _G[actionBar .. i]
            local macroText = _G[actionBar .. i .. "Name"]
            if macroText then macroText:SetScale(value) end
        end
    end

    zUI_SavedSettings[PlayerIdentifier].MacroScale = value
    macroValueText:SetText(string.format("%.2f", value))
end)

---------------------------------------------- CHECKBOXES ON CLASS PAGE ----------------------------------------------

---------------------------------------------------------------------------------------------------
-- Checkbox for hiding Paladin Power Bar Texture and move it
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomPaladinPowerBarTexture : CheckButton
Checkbox_CustomPaladinPowerBarTexture = CreateFrame("CheckButton",
                                                    "zUICustomPaladinPowerBarTextureCheckbox",
                                                    ClassPage,
                                                    "ChatConfigCheckButtonTemplate")
local paladinPowerBarCheckbox =
    Checkbox_CustomPaladinPowerBarTexture:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
paladinPowerBarCheckbox:SetPoint("LEFT", Checkbox_CustomPaladinPowerBarTexture,
                                 "RIGHT", 20, 0)
paladinPowerBarCheckbox:SetText("Custom Paladin Holy Power")
Checkbox_CustomPaladinPowerBarTexture:SetPoint("TOPLEFT", 20, 30)
Checkbox_CustomPaladinPowerBarTexture.tooltip =
    "Hide the texture of the Paladin Holy Power, but keep the glowing runes and animations."
local _, paladin = UnitClass("player")
if paladin == "PALADIN" then
    Checkbox_CustomPaladinPowerBarTexture:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomPaladinPowerBarTextureSetting)

    Checkbox_CustomPaladinPowerBarTexture:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomPaladinPowerBarTextureSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomPaladinPowerBarTexture:SetChecked(false)
    Checkbox_CustomPaladinPowerBarTexture:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for hiding Death Knight Rune Textures and move it
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomDeathKnightRunes : CheckButton
Checkbox_CustomDeathKnightRunes = CreateFrame("CheckButton",
                                              "zUICustomDeathKnightRunesCheckbox",
                                              ClassPage,
                                              "ChatConfigCheckButtonTemplate")
local deathKnightRunesCheckbox =
    Checkbox_CustomDeathKnightRunes:CreateFontString(nil, "OVERLAY",
                                                     "GameFontNormal")
deathKnightRunesCheckbox:SetPoint("LEFT", Checkbox_CustomDeathKnightRunes,
                                  "RIGHT", 20, 0)
deathKnightRunesCheckbox:SetText("Custom Death Knight Runes")
Checkbox_CustomDeathKnightRunes:SetPoint("TOPLEFT", 20, 0)
Checkbox_CustomDeathKnightRunes.tooltip =
    "Hide the texure of the Death Knight Runes, but keep the skulls and animations."
local _, deathknight = UnitClass("player")
if deathknight == "DEATHKNIGHT" then
    Checkbox_CustomDeathKnightRunes:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting)

    Checkbox_CustomDeathKnightRunes:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomDeathKnightRunes:SetChecked(false)
    Checkbox_CustomDeathKnightRunes:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for hdiding Rogue Energy Point Textures and move it
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomRogueEnergyPoints : CheckButton
Checkbox_CustomRogueEnergyPoints = CreateFrame("CheckButton",
                                               "zUICustomRogueEnergyPointsCheckbox",
                                               ClassPage,
                                               "ChatConfigCheckButtonTemplate")
local rogueEnergyPointsCheckbox =
    Checkbox_CustomRogueEnergyPoints:CreateFontString(nil, "OVERLAY",
                                                      "GameFontNormal")
rogueEnergyPointsCheckbox:SetPoint("LEFT", Checkbox_CustomRogueEnergyPoints,
                                   "RIGHT", 20, 0)
rogueEnergyPointsCheckbox:SetText("Custom Rogue Energy Points")
Checkbox_CustomRogueEnergyPoints:SetPoint("TOPLEFT", 20, -30)
Checkbox_CustomRogueEnergyPoints.tooltip =
    "Customize the appearance of the Rogue Energy Points."
local _, rogue = UnitClass("player")
if rogue == "ROGUE" then
    Checkbox_CustomRogueEnergyPoints:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting)

    Checkbox_CustomRogueEnergyPoints:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomRogueEnergyPoints:SetChecked(false)
    Checkbox_CustomRogueEnergyPoints:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for customizing Warlock Soul Shards
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomWarlockSoulShards : CheckButton
Checkbox_CustomWarlockSoulShards = CreateFrame("CheckButton",
                                               "zUICustomWarlockSoulShardsCheckbox",
                                               ClassPage,
                                               "ChatConfigCheckButtonTemplate")
local warlockSoulShardsCheckbox =
    Checkbox_CustomWarlockSoulShards:CreateFontString(nil, "OVERLAY",
                                                      "GameFontNormal")
warlockSoulShardsCheckbox:SetPoint("LEFT", Checkbox_CustomWarlockSoulShards,
                                   "RIGHT", 20, 0)
warlockSoulShardsCheckbox:SetText("Custom Warlock Soul Shards")
Checkbox_CustomWarlockSoulShards:SetPoint("TOPLEFT", 20, -60)
Checkbox_CustomWarlockSoulShards.tooltip =
    "Customize the appearance of the Warlock Soul Shards."
local _, warlock = UnitClass("player")
if warlock == "WARLOCK" then
    Checkbox_CustomWarlockSoulShards:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomWarlockSoulShardSetting)

    Checkbox_CustomWarlockSoulShards:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomWarlockSoulShardSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomWarlockSoulShards:SetChecked(false)
    Checkbox_CustomWarlockSoulShards:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for customizing Druid Cat Form
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomDruidCatForm : CheckButton
Checkbox_CustomDruidCatForm = CreateFrame("CheckButton",
                                          "zUICustomDruidCatFormCheckbox",
                                          ClassPage,
                                          "ChatConfigCheckButtonTemplate")
local druidCatFormCheckbox = Checkbox_CustomDruidCatForm:CreateFontString(nil,
                                                                          "OVERLAY",
                                                                          "GameFontNormal")
druidCatFormCheckbox:SetPoint("LEFT", Checkbox_CustomDruidCatForm, "RIGHT", 20,
                              0)
druidCatFormCheckbox:SetText("Custom Druid Cat Combo Points")
Checkbox_CustomDruidCatForm:SetPoint("TOPLEFT", 20, -90)
Checkbox_CustomDruidCatForm.tooltip =
    "Customize the appearance of the Druid Cat Combo Points."
local _, druid = UnitClass("player")
if druid == "DRUID" then
    Checkbox_CustomDruidCatForm:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomDruidCatFormComboPointsSetting)

    Checkbox_CustomDruidCatForm:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomDruidCatFormComboPointsSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomDruidCatForm:SetChecked(false)
    Checkbox_CustomDruidCatForm:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for customizing Monk Power Bar
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomMonkPowerBar : CheckButton
Checkbox_CustomMonkPowerBar = CreateFrame("CheckButton",
                                          "zUICustomMonkPowerBarCheckbox",
                                          ClassPage,
                                          "ChatConfigCheckButtonTemplate")
local monkPowerBarCheckbox = Checkbox_CustomMonkPowerBar:CreateFontString(nil,
                                                                          "OVERLAY",
                                                                          "GameFontNormal")
monkPowerBarCheckbox:SetPoint("LEFT", Checkbox_CustomMonkPowerBar, "RIGHT", 20,
                              0)
monkPowerBarCheckbox:SetText("Custom Monk Harmony")
Checkbox_CustomMonkPowerBar:SetPoint("TOPLEFT", 20, -120)
Checkbox_CustomMonkPowerBar.tooltip =
    "Customize the appearance of the Monk Harmony."
local _, monk = UnitClass("player")
if monk == "MONK" then
    Checkbox_CustomMonkPowerBar:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomMonkPowerBarSetting)

    Checkbox_CustomMonkPowerBar:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomMonkPowerBarSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomMonkPowerBar:SetChecked(false)
    Checkbox_CustomMonkPowerBar:Disable()
end

---------------------------------------------------------------------------------------------------
-- Checkbox for customizing Evoker Essence
---------------------------------------------------------------------------------------------------
---@class Checkbox_CustomEvokerEssence : CheckButton
Checkbox_CustomEvokerEssence = CreateFrame("CheckButton",
                                           "zUICustomEvokerEssenceCheckbox",
                                           ClassPage,
                                           "ChatConfigCheckButtonTemplate")
local evokerEssenceCheckbox = Checkbox_CustomEvokerEssence:CreateFontString(nil,
                                                                            "OVERLAY",
                                                                            "GameFontNormal")
evokerEssenceCheckbox:SetPoint("LEFT", Checkbox_CustomEvokerEssence, "RIGHT",
                               20, 0)
evokerEssenceCheckbox:SetText("Custom Evoker Essence")
Checkbox_CustomEvokerEssence:SetPoint("TOPLEFT", 20, -150)
Checkbox_CustomEvokerEssence.tooltip =
    "Customize the appearance of the Evoker Essence."
local _, class = UnitClass("player")
if class == "EVOKER" then
    Checkbox_CustomEvokerEssence:SetChecked(
        zUI_SavedSettings[PlayerIdentifier].CustomEvokerEssenceSetting)

    Checkbox_CustomEvokerEssence:SetScript("OnClick", function(self)
        zUI_SavedSettings[PlayerIdentifier].CustomEvokerEssenceSetting =
            self:GetChecked()
    end)
else
    Checkbox_CustomEvokerEssence:SetChecked(false)
    Checkbox_CustomEvokerEssence:Disable()
end
