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

-- Check if the settings are initialized
if SettingsInitialized then
    Checkbox_fpsFrame:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                     .fpsFrameSetting)
end

Checkbox_fpsFrame:SetScript("OnClick", function(self)
    -- Check if the settings are initialized
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
    "Move the Queue Status Button to the left of the Minimap."
Checkbox_MoveQSB:SetChecked(zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting)

Checkbox_MoveQSB:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting = self:GetChecked()
end)

---------------------------------------------------------------------------------------------------
-- Text on General Page
---------------------------------------------------------------------------------------------------
local headerMenuLabel = GeneralPage:CreateFontString(nil, "OVERLAY",
                                                     "GameFontNormal")
headerMenuLabel:SetPoint("TOPLEFT", 20, -130)
headerMenuLabel:SetText("Auto Collapse On Loading Screens")

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
Checkbox_HeaderMenu:SetPoint("TOPLEFT", 20, -150)
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
Checkbox_CampaignQuestHeader:SetPoint("TOPLEFT", 20, -180)
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
Checkbox_QuestSection:SetPoint("TOPLEFT", 20, -210)
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
Checkbox_AchievementHeader:SetPoint("TOPLEFT", 20, -240)
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
Checkbox_ScenarioHeader:SetPoint("TOPLEFT", 20, -270)
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
Checkbox_AdventureHeader:SetPoint("TOPLEFT", 20, -300)
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
Checkbox_WorldQuestHeader:SetPoint("TOPLEFT", 20, -330)
Checkbox_WorldQuestHeader.tooltip =
    "Minimize the world quest header of the Objective Tracker on loading screens."
Checkbox_WorldQuestHeader:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                         .WorldQuestHeaderSetting)

Checkbox_WorldQuestHeader:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].WorldQuestHeaderSetting =
        self:GetChecked()
end)

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
Checkbox_ChatFrameMovable:SetPoint("TOPLEFT", 20, -360)
Checkbox_ChatFrameMovable.tooltip =
    "Enable or disable moving of the chat frame."
Checkbox_ChatFrameMovable:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                         .ChatFrameMovableSetting)

Checkbox_ChatFrameMovable:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting =
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
hidePlayerAndTargetFramesCheckbox:SetText("Player and Target Frames")
Checkbox_HidePlayerAndTargetFrames:SetPoint("TOPLEFT", 250, -250)
Checkbox_HidePlayerAndTargetFrames.tooltip =
    "Hide Player and Target Frames permanently."
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
paladinPowerBarCheckbox:SetText("Custom Paladin Power Bar")
Checkbox_CustomPaladinPowerBarTexture:SetPoint("TOPLEFT", 20, 30)
Checkbox_CustomPaladinPowerBarTexture.tooltip =
    "Hide the texture of the Paladin Power Bar, but keep the glowing runes and animations."
Checkbox_CustomPaladinPowerBarTexture:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].CustomPaladinPowerBarTextureSetting)

Checkbox_CustomPaladinPowerBarTexture:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomPaladinPowerBarTextureSetting =
        self:GetChecked()
end)

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
Checkbox_CustomDeathKnightRunes:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting)

Checkbox_CustomDeathKnightRunes:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting =
        self:GetChecked()
end)

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
Checkbox_CustomRogueEnergyPoints:SetChecked(
    zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting)

Checkbox_CustomRogueEnergyPoints:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting =
        self:GetChecked()
end)

------------------------------------------------- GAME SETTINGS BELOW -------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Hide the objective tracker when combat starts
---------------------------------------------------------------------------------------------------
local HideObjectiveTracker = CreateFrame("Frame")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_ENABLED")

HideObjectiveTracker:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and ObjectiveTrackerFrame and
        zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerSetting then
        if event == "PLAYER_REGEN_DISABLED" then
            local status, error = pcall(function()
                ObjectiveTrackerFrame:Hide()
            end)
            if not status then zUI:Print(error) end
        elseif event == "PLAYER_REGEN_ENABLED" then
            local status, error = pcall(function()
                ObjectiveTrackerFrame:Show()
            end)
            if not status then zUI:Print(error) end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the chat frame when combat starts
---------------------------------------------------------------------------------------------------
local HideChatFrameObject = CreateFrame("Frame")

HideChatFrameObject:RegisterEvent("PLAYER_REGEN_DISABLED")
HideChatFrameObject:RegisterEvent("PLAYER_REGEN_ENABLED")

HideChatFrameObject:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function()
            GeneralDockManager:Hide()
            ChatFrame1:Hide()
        end)
        if not status then zUI:Print(error) end
    elseif SettingsInitialized and event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function()
            GeneralDockManager:Show()
            ChatFrame1:Show()
        end)
        if not status then zUI:Print(error) end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide side buttons and their background on the chat frame
---------------------------------------------------------------------------------------------------
local HideChatSidebar = CreateFrame("Frame")

HideChatSidebar:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatSidebar:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].HideChatSidebarSetting then
        ChatFrameMenuButton:Hide()
        ChatFrameChannelButton:Hide()
        ChatFrameToggleVoiceDeafenButton:Hide()
        ChatFrameMenuButton:GetParent():Hide()
        for i = 1, NUM_CHAT_WINDOWS do
            _G["ChatFrame" .. i .. "ButtonFrameBackground"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameTopTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameTopLeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameTopRightTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameBottomLeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameBottomRightTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameBottomTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameLeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "ButtonFrameRightTexture"]:Hide()
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the original chat frame style
---------------------------------------------------------------------------------------------------
local HideChatFrameStyle = CreateFrame("Frame")

HideChatFrameStyle:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatFrameStyle:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        for i = 1, NUM_CHAT_WINDOWS do
            local chatFrame = _G["ChatFrame" .. i]
            local chatTab = _G["ChatFrame" .. i .. "Tab"]

            -- Hide the tab border and backround
            _G["ChatFrame" .. i .. "Tab"].Left:Hide()
            _G["ChatFrame" .. i .. "Tab"].Right:Hide()
            _G["ChatFrame" .. i .. "Tab"].Middle:Hide()
            -- Hide chat border
            _G["ChatFrame" .. i .. "BottomTexture"]:Hide()
            _G["ChatFrame" .. i .. "BottomLeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "BottomRightTexture"]:Hide()
            _G["ChatFrame" .. i .. "TopTexture"]:Hide()
            _G["ChatFrame" .. i .. "TopLeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "TopRightTexture"]:Hide()
            _G["ChatFrame" .. i .. "LeftTexture"]:Hide()
            _G["ChatFrame" .. i .. "RightTexture"]:Hide()

            local function hideTabAndBackground()
                chatTab:SetAlpha(0.3)
                _G["ChatFrame" .. i .. "Background"]:SetAlpha(0.02)
            end

            hideTabAndBackground()

            --[[
                Hook both the chat frame and tab into all the events
                It still causes flickering sometimes, but it's better than before
                Needs a check later
            ]]
            local events = {
                "OnEnter", "OnLeave", "OnMouseDown", "OnMouseUp", "OnUpdate",
                "OnShow", "OnHide", "OnReceiveDrag", "OnDragStart", "OnDragStop"
            }
            for _, eventHook in ipairs(events) do
                chatTab:HookScript(eventHook,
                                   function()
                    hideTabAndBackground()
                end)
                chatFrame:HookScript(eventHook,
                                     function()
                    hideTabAndBackground()
                end)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Move the chat frame edit box to the top of the chat frame
---------------------------------------------------------------------------------------------------
local MoveChatFrameEditBox = CreateFrame("Frame")

MoveChatFrameEditBox:RegisterEvent("PLAYER_ENTERING_WORLD")

MoveChatFrameEditBox:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        if zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting then
            for i = 1, NUM_CHAT_WINDOWS do
                local chatFrame = _G["ChatFrame" .. i]
                local editBox = _G["ChatFrame" .. i .. "EditBox"]

                local name = chatFrame:GetName()
                _G[name .. "ButtonFrame"]:Hide()
                _G[name .. "EditBoxLeft"]:Hide()
                _G[name .. "EditBoxMid"]:Hide()
                _G[name .. "EditBoxRight"]:Hide()

                editBox:ClearAllPoints()
                editBox:SetPoint("BOTTOMLEFT", chatFrame, "TOPLEFT", 0, 0)
                editBox:SetPoint("BOTTOMRIGHT", chatFrame, "TOPRIGHT", 0, 0)
                editBox:SetAltArrowKeyMode(false)
                editBox:SetHistoryLines(50)

                chatFrame:SetMaxLines(500)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the social quick join toast button when combat starts
---------------------------------------------------------------------------------------------------
local HideQuickJoinToastButton = CreateFrame("Frame")

HideQuickJoinToastButton:RegisterEvent("PLAYER_ENTERING_WORLD")

HideQuickJoinToastButton:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting then
        local status, error = pcall(function()
            QuickJoinToastButton:Hide()
        end)
        if not status then zUI:Print(error) end
    elseif SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].HideQuickJoinToastButtonSetting then
        local status, error = pcall(function()
            QuickJoinToastButton:Show()
        end)
        if not status then zUI:Print(error) end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the bag bar when combat starts
---------------------------------------------------------------------------------------------------
local HideBagBar = CreateFrame("Frame")

HideBagBar:RegisterEvent("PLAYER_REGEN_DISABLED")
HideBagBar:RegisterEvent("PLAYER_REGEN_ENABLED")

HideBagBar:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_REGEN_DISABLED" and
        zUI_SavedSettings[PlayerIdentifier].HideBagBarSetting then
        local status, error = pcall(function()
            MainMenuBarBackpackButton:GetParent():Hide()
        end)
        if not status then zUI:Print(error) end
    elseif SettingsInitialized and event == "PLAYER_REGEN_ENABLED" and
        not zUI_SavedSettings[PlayerIdentifier].HideBagBarSettingPerm then
        local status, error = pcall(function()
            MainMenuBarBackpackButton:GetParent():Show()
        end)
        if not status then zUI:Print(error) end
    end
end)

---------------------------------------------------------------------------------------------------
-- Show the target's name and realm in the tooltip
---------------------------------------------------------------------------------------------------
--[[
    Show the target's item level in the tooltip if available <--- NOT WORKING YET
    Clas type color for the target's name is not working yet <--- NOT WORKING YET
    for some reason, but it's not that important atm
]]
local classColors = {
    ["Warrior"] = {r = 0.78, g = 0.61, b = 0.43},
    ["Paladin"] = {r = 0.96, g = 0.55, b = 0.73},
    ["Hunter"] = {r = 0.67, g = 0.83, b = 0.45},
    ["Rogue"] = {r = 1.00, g = 0.96, b = 0.41},
    ["Priest"] = {r = 1.00, g = 1.00, b = 1.00},
    ["Death Knight"] = {r = 0.77, g = 0.12, b = 0.23},
    ["Shaman"] = {r = 0.00, g = 0.44, b = 0.87},
    ["Mage"] = {r = 0.41, g = 0.8, b = 0.94},
    ["Warlock"] = {r = 0.58, g = 0.51, b = 0.79},
    ["Monk"] = {r = 0.00, g = 1.00, b = 0.59},
    ["Druid"] = {r = 1.00, g = 0.49, b = 0.04},
    ["Demon Hunter"] = {r = 0.64, g = 0.19, b = 0.79}
}
local lastTarget = nil
GameTooltip:HookScript("OnTooltipCleared", function(self) lastTarget = nil end)

GameTooltip:HookScript("OnUpdate", function(self)
    local _, unit = self:GetUnit()
    if SettingsInitialized and unit then
        local target = unit .. "target"
        local targetName, targetRealm = UnitName(unit)
        local _, targetClass = UnitClass(unit)
        local color = classColors[targetClass] or {r = 1, g = 1, b = 1}
        local realmString = targetRealm and "-" .. targetRealm or ""
        local targetInfo = targetName .. realmString

        -- local avgItemLevel = GetAverageItemLevel()
        -- local itemLevelInfo = avgItemLevel and "iLvl: " .. avgItemLevel or ""

        if targetInfo ~= lastTarget then
            self:AddLine(" ", 1, 1, 1)
            -- self:AddLine(itemLevelInfo, color.r, color.g, color.b)
            if UnitExists(target) then
                self:AddDoubleLine("Target: ", targetInfo, color.r, color.g,
                                   color.b)
            end
            self:Show()
            lastTarget = targetInfo
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide HUD tooltips when combat starts
---------------------------------------------------------------------------------------------------
local HideHudTooltip = CreateFrame("Frame")
local inCombat = false
HideHudTooltip:RegisterEvent("PLAYER_REGEN_DISABLED")
HideHudTooltip:RegisterEvent("PLAYER_REGEN_ENABLED")

HideHudTooltip:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_REGEN_DISABLED" and
        zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting then
        inCombat = true
        GameTooltip:Hide()
    elseif SettingsInitialized and event == "PLAYER_REGEN_ENABLED" then
        inCombat = false
    end
end)

GameTooltip:SetScript("OnShow", function(self)
    if SettingsInitialized and inCombat and
        zUI_SavedSettings[PlayerIdentifier].HideHudTooltipSetting then
        self:Hide()
    end
end)

---------------------------------------------------------------------------------------------------
-- Show FPS Frame
---------------------------------------------------------------------------------------------------
local fpsFrame = CreateFrame("Frame", nil, UIParent)
fpsFrame:SetSize(100, 20)
fpsFrame:SetPoint("TOP", 0, 0)

local fpsText = fpsFrame:CreateFontString(nil, "OVERLAY")
fpsText:SetAllPoints()
fpsText:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")

fpsFrame:SetScript("OnUpdate", function(self, elapsed)
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].fpsFrameSetting then
        self.timeSinceLastUpdate = (self.timeSinceLastUpdate or 0) + elapsed
        if self.timeSinceLastUpdate >= 1 then
            local fps = GetFramerate()
            fpsText:SetText(string.format("FPS: %.1f", fps))
            fpsText:SetFont(STANDARD_TEXT_FONT, 18, "OUTLINE")
            self.timeSinceLastUpdate = 0
        end
        fpsText:Show()
    else
        fpsText:Hide()
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide XP bar
---------------------------------------------------------------------------------------------------
XpBarFrame = CreateFrame("Frame")
XpBarFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
XpBarFrame:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        if zUI_SavedSettings[PlayerIdentifier].XPBarSetting then
            MainStatusTrackingBarContainer:Hide()
        else
            MainStatusTrackingBarContainer:Show()
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide Reputation bar
---------------------------------------------------------------------------------------------------
local repBarFrame = CreateFrame("Frame")
repBarFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
repBarFrame:SetScript("OnEvent", function(self, event)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        if zUI_SavedSettings[PlayerIdentifier].RepBarSetting then
            SecondaryStatusTrackingBarContainer:Hide()
        else
            SecondaryStatusTrackingBarContainer:Show()
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide Micro Menu except the Queue Status Button
---------------------------------------------------------------------------------------------------
--[[
    Change the alpha of the Store Button, because it's the only one
    where Hide() doesn't work, not sure why 💰💰💰💰💰
]]
local microMenuFrame = CreateFrame("Frame")
microMenuFrame:RegisterEvent("ADDON_LOADED")
microMenuFrame:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        C_Timer.After(2, function()
            if SettingsInitialized and
                zUI_SavedSettings[PlayerIdentifier].MicroMenuSetting then
                AchievementMicroButton:Hide()
                GuildMicroButton:Hide()
                LFDMicroButton:Hide()
                CollectionsMicroButton:Hide()
                EJMicroButton:Hide()
                MainMenuMicroButton:Hide()
                HelpMicroButton:Hide()
                StoreMicroButton:SetAlpha(0)
                TalentMicroButton:Hide()
                QuestLogMicroButton:Hide()
                CharacterMicroButton:Hide()
                SpellbookMicroButton:Hide()
                TalentMicroButton:Hide()
            elseif SettingsInitialized and
                not zUI_SavedSettings[PlayerIdentifier].MicroMenuSetting then
                AchievementMicroButton:Show()
                GuildMicroButton:Show()
                LFDMicroButton:Show()
                CollectionsMicroButton:Show()
                EJMicroButton:Show()
                MainMenuMicroButton:Show()
                HelpMicroButton:Show()
                StoreMicroButton:SetAlpha(1)
                TalentMicroButton:Show()
                QuestLogMicroButton:Show()
                CharacterMicroButton:Show()
                SpellbookMicroButton:Show()
                TalentMicroButton:Show()
            end
        end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide Bag Bar Permanently
---------------------------------------------------------------------------------------------------
local HideBagBarFramePermanently = CreateFrame("Frame")
HideBagBarFramePermanently:RegisterEvent("ADDON_LOADED")

HideBagBarFramePermanently:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        C_Timer.After(2, function()
            if SettingsInitialized and
                zUI_SavedSettings[PlayerIdentifier].HideBagBarSettingPerm then
                MainMenuBarBackpackButton:GetParent():Hide()
            elseif SettingsInitialized and
                not zUI_SavedSettings[PlayerIdentifier].HideBagBarSettingPerm then
                MainMenuBarBackpackButton:GetParent():Show()
            end
        end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the paladin power bar textures except the symbols for holy power
---------------------------------------------------------------------------------------------------
--[[
    Change the size of the holy power symbols
    Clear the anchor points for the holy power symbols
    Move it to the middle, over the main action bar
]]
local CustomPaladinPowerBarTexture = CreateFrame("Frame")
CustomPaladinPowerBarTexture:RegisterEvent("ADDON_LOADED")

CustomPaladinPowerBarTexture:SetScript("OnEvent",
                                       function(self, event, addonName)
    C_Timer.After(2, function()
        local _, className = UnitClass("player")
        if className == "PALADIN" and SettingsInitialized and event ==
            "ADDON_LOADED" and addonName == "zUI" then
            if zUI_SavedSettings[PlayerIdentifier]
                .CustomPaladinPowerBarTextureSetting then
                PaladinPowerBarFrame.ActiveTexture:Hide()
                PaladinPowerBarFrame.Background:Hide()
                PaladinPowerBarFrame.ThinGlow:Hide()
                PaladinPowerBarFrame.Glow:Hide()
                PaladinPowerBarFrameRune1.ActiveTexture:SetSize(30, 30)
                PaladinPowerBarFrameRune2.ActiveTexture:SetSize(30, 30)
                PaladinPowerBarFrameRune3.ActiveTexture:SetSize(30, 30)
                PaladinPowerBarFrameRune4.ActiveTexture:SetSize(30, 30)
                PaladinPowerBarFrameRune5.ActiveTexture:SetSize(30, 30)
                PaladinPowerBarFrameRune1:ClearAllPoints()
                PaladinPowerBarFrameRune2:ClearAllPoints()
                PaladinPowerBarFrameRune3:ClearAllPoints()
                PaladinPowerBarFrameRune4:ClearAllPoints()
                PaladinPowerBarFrameRune5:ClearAllPoints()
                PaladinPowerBarFrameRune1:SetPoint("BOTTOM", ActionButton4,
                                                   "TOP", 0, 10)
                PaladinPowerBarFrameRune2:SetPoint("BOTTOM", ActionButton5,
                                                   "TOP", 0, 10)
                PaladinPowerBarFrameRune3:SetPoint("BOTTOM", ActionButton6,
                                                   "TOP", 0, 10)
                PaladinPowerBarFrameRune4:SetPoint("BOTTOM", ActionButton7,
                                                   "TOP", 0, 10)
                PaladinPowerBarFrameRune5:SetPoint("BOTTOM", ActionButton8,
                                                   "TOP", 0, 10)
            end
        end
    end)
end)

---------------------------------------------------------------------------------------------------
-- Hide the death knight rune textures except the symbols for runes
---------------------------------------------------------------------------------------------------
local CustomDeathKnightPowerBarTexture = CreateFrame("Frame")
CustomDeathKnightPowerBarTexture:RegisterEvent("ADDON_LOADED")

CustomDeathKnightPowerBarTexture:SetScript("OnEvent",
                                           function(self, event, addonName)
    C_Timer.After(2, function()
        local _, className = UnitClass("player")
        if className == "DEATHKNIGHT" and SettingsInitialized and event ==
            "ADDON_LOADED" and addonName == "zUI" then
            if zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting then
                RuneFrame.Rune1.BG_Active:Hide()
                RuneFrame.Rune1.BG_Inactive:Hide()
                RuneFrame.Rune1.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune1.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune1.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune1.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune1.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune1.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune1.Smoke:SetSize(25, 25)
                RuneFrame.Rune1.BG_Shadow:Hide()
                RuneFrame.Rune2.BG_Active:Hide()
                RuneFrame.Rune2.BG_Inactive:Hide()
                RuneFrame.Rune2.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune2.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune2.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune2.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune2.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune2.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune2.Smoke:SetSize(25, 25)
                RuneFrame.Rune2.BG_Shadow:Hide()
                RuneFrame.Rune3.BG_Active:Hide()
                RuneFrame.Rune3.BG_Inactive:Hide()
                RuneFrame.Rune3.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune3.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune3.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune3.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune3.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune3.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune3.Smoke:SetSize(25, 25)
                RuneFrame.Rune3.BG_Shadow:Hide()
                RuneFrame.Rune4.BG_Active:Hide()
                RuneFrame.Rune4.BG_Inactive:Hide()
                RuneFrame.Rune4.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune4.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune4.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune4.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune4.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune4.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune4.Smoke:SetSize(25, 25)
                RuneFrame.Rune4.BG_Shadow:Hide()
                RuneFrame.Rune5.BG_Active:Hide()
                RuneFrame.Rune5.BG_Inactive:Hide()
                RuneFrame.Rune5.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune5.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune5.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune5.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune5.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune5.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune5.Smoke:SetSize(25, 25)
                RuneFrame.Rune5.BG_Shadow:Hide()
                RuneFrame.Rune6.BG_Active:Hide()
                RuneFrame.Rune6.BG_Inactive:Hide()
                RuneFrame.Rune6.Rune_Active:SetSize(25, 25)
                RuneFrame.Rune6.Rune_Inactive:SetSize(25, 25)
                RuneFrame.Rune6.Rune_Eyes:SetSize(25, 25)
                RuneFrame.Rune6.Rune_Lines:SetSize(25, 25)
                RuneFrame.Rune6.Rune_Mid:SetSize(25, 25)
                RuneFrame.Rune6.Rune_Grad:SetSize(25, 25)
                RuneFrame.Rune6.Smoke:SetSize(25, 25)
                RuneFrame.Rune6.BG_Shadow:Hide()
            end
        end
    end)
end)

local KeepDeathKnightRunesAtPosition = CreateFrame("Frame")
KeepDeathKnightRunesAtPosition:SetScript("OnUpdate", function()
    local _, className = UnitClass("player")
    if className == "DEATHKNIGHT" and SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting then
        RuneFrame.Rune1:ClearAllPoints()
        RuneFrame.Rune2:ClearAllPoints()
        RuneFrame.Rune3:ClearAllPoints()
        RuneFrame.Rune4:ClearAllPoints()
        RuneFrame.Rune5:ClearAllPoints()
        RuneFrame.Rune6:ClearAllPoints()
        RuneFrame.Rune1:SetPoint("BOTTOM", ActionButton4, "TOP", 0, 10)
        RuneFrame.Rune2:SetPoint("BOTTOM", ActionButton5, "TOP", 0, 10)
        RuneFrame.Rune3:SetPoint("BOTTOM", ActionButton6, "TOP", 0, 10)
        RuneFrame.Rune4:SetPoint("BOTTOM", ActionButton7, "TOP", 0, 10)
        RuneFrame.Rune5:SetPoint("BOTTOM", ActionButton8, "TOP", 0, 10)
        RuneFrame.Rune6:SetPoint("BOTTOM", ActionButton9, "TOP", 0, 10)
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the rogue energy points textures except the symbols for combo points
---------------------------------------------------------------------------------------------------
local CustomRogueEnergyPoints = CreateFrame("Frame")
CustomRogueEnergyPoints:RegisterEvent("ADDON_LOADED")

CustomRogueEnergyPoints:SetScript("OnEvent", function(self, event, addonName)
    C_Timer.After(2, function()
        local _, className = UnitClass("player")
        if className == "ROGUE" and SettingsInitialized and event ==
            "ADDON_LOADED" and addonName == "zUI" then
            local energy1, energy2, energy3, energy4, energy5, energy6 =
                RogueComboPointBarFrame:GetChildren()

            if zUI_SavedSettings[PlayerIdentifier]
                .CustomRogueEnergyPointsSetting then
                energy1.BGActive:Hide()
                energy1.BGShadow:Hide()
                energy1.BGInactive:Hide()
                energy2.BGActive:Hide()
                energy2.BGShadow:Hide()
                energy2.BGInactive:Hide()
                energy3.BGActive:Hide()
                energy3.BGShadow:Hide()
                energy3.BGInactive:Hide()
                energy4.BGActive:Hide()
                energy4.BGShadow:Hide()
                energy4.BGInactive:Hide()
                energy5.BGActive:Hide()
                energy5.BGShadow:Hide()
                energy5.BGInactive:Hide()
                energy6.BGActive:Hide()
                energy6.BGShadow:Hide()
                energy6.BGInactive:Hide()
                energy1:SetSize(25, 25)
                energy2:SetSize(25, 25)
                energy3:SetSize(25, 25)
                energy4:SetSize(25, 25)
                energy5:SetSize(25, 25)
                energy6:SetSize(25, 25)
            end
        end
    end)
end)

local KeepRogueEnergyPointsAtPosition = CreateFrame("Frame")
KeepRogueEnergyPointsAtPosition:SetScript("OnUpdate", function()
    local _, className = UnitClass("player")
    local energy1, energy2, energy3, energy4, energy5, energy6 =
        RogueComboPointBarFrame:GetChildren()
    if className == "ROGUE" and SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting then
        energy1:ClearAllPoints()
        energy2:ClearAllPoints()
        energy3:ClearAllPoints()
        energy4:ClearAllPoints()
        energy5:ClearAllPoints()
        energy6:ClearAllPoints()
        energy1:SetPoint("BOTTOM", ActionButton4, "TOP", 0, 10)
        energy2:SetPoint("BOTTOM", ActionButton5, "TOP", 0, 10)
        energy3:SetPoint("BOTTOM", ActionButton6, "TOP", 0, 10)
        energy4:SetPoint("BOTTOM", ActionButton7, "TOP", 0, 10)
        energy5:SetPoint("BOTTOM", ActionButton8, "TOP", 0, 10)
        energy6:SetPoint("BOTTOM", ActionButton9, "TOP", 0, 10)
    end
end)

---------------------------------------------------------------------------------------------------
-- Check if a key binding is set for a button
---------------------------------------------------------------------------------------------------
local function IsKeyBindingSet(button)
    local buttonID = button:GetID()
    local command

    if button:GetName():find("ActionButton") then
        command = "ACTIONBUTTON" .. buttonID
    elseif button:GetName():find("MultiBarBottomLeftButton") then
        command = "MULTIACTIONBAR1BUTTON" .. buttonID
    elseif button:GetName():find("MultiBarBottomRightButton") then
        command = "MULTIACTIONBAR2BUTTON" .. buttonID
    elseif button:GetName():find("MultiBarRightButton") then
        command = "MULTIACTIONBAR3BUTTON" .. buttonID
    elseif button:GetName():find("MultiBarLeftButton") then
        command = "MULTIACTIONBAR4BUTTON" .. buttonID
    end

    local key1, key2 = GetBindingKey(command)

    return key1 or key2
end

---------------------------------------------------------------------------------------------------
-- Custom Action Bar
---------------------------------------------------------------------------------------------------
--[[
    Hide the default border
    Hide the border when the button is pressed
    Hide the border when the button is active
    Hide all textures for empty buttons
    Hide hotkey text for empty buttons
    Resizing and positioning the hotkey text
    Showing button texture on drag
]]
local actionBarMod = CreateFrame("Frame")

actionBarMod:RegisterEvent("PLAYER_ENTERING_WORLD")

actionBarMod:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].actionBarModSetting then
        return
    end
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        local actionBars = {
            "ActionButton", "MultiBarBottomLeftButton",
            "MultiBarBottomRightButton", "MultiBarLeftButton",
            "MultiBarRightButton"
        }

        -- Hide the page number and up + down arrows on the main action bar
        MainMenuBar.ActionBarPageNumber:Hide()

        for _, actionBar in ipairs(actionBars) do
            for i = 1, 12 do
                local button = _G[actionBar .. i]

                button:HookScript("OnUpdate", function(self)
                    -- Hide the default border
                    local normalTexture = self:GetNormalTexture()
                    if normalTexture then
                        normalTexture:Hide()
                    end

                    -- Hide the border when the button is pressed
                    local pushedTexture = self:GetPushedTexture()
                    if pushedTexture then
                        pushedTexture:Hide()
                    end

                    -- Hide the border when the button is active
                    local checkedTexture = self:GetCheckedTexture()
                    if checkedTexture then
                        checkedTexture:Hide()
                    end

                    -- Hide all textures for empty buttons
                    local regions = {button:GetRegions()}
                    for _, region in ipairs(regions) do
                        if region:IsObjectType("Texture") then
                            if not HasAction(self.action) then
                                region:Hide()
                            end
                        end
                    end

                    -- Hide hotkey text for empty buttons and if it's not set
                    local hotkey = _G[button:GetName() .. 'HotKey']
                    if hotkey then
                        if IsKeyBindingSet(self) and
                            (HasAction(self.action) or
                                GetActionInfo(self.action)) then
                            hotkey:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE")
                            hotkey:Show()
                        else
                            hotkey:Hide()
                        end
                    end

                    -- Showing button texture on drag
                    if GetCursorInfo() then
                        button:Show()
                        button:GetNormalTexture():Show()
                        button.wasDragging = true
                    elseif not GetCursorInfo() and button.wasDragging then
                        button:GetNormalTexture():Hide()
                        button.wasDragging = false
                    end
                end)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Make MultiBarLeft visible only on mouseover or if something being dragged
---------------------------------------------------------------------------------------------------
local MouseOverActionBar4 = CreateFrame("Frame", nil, UIParent)
MouseOverActionBar4:RegisterEvent("PLAYER_ENTERING_WORLD")
MouseOverActionBar4:SetPoint("BOTTOMRIGHT", MultiBarLeftButton12, "BOTTOMRIGHT",
                             0, 0)
MouseOverActionBar4:EnableMouse(true)
MouseOverActionBar4:Show()

MouseOverActionBar4:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        C_Timer.After(3, function()
            local multiBarLeftWidth, multiBarLeftHeight = MultiBarLeft:GetSize()

            if multiBarLeftHeight > multiBarLeftWidth then
                MouseOverActionBar4:SetSize(40, 40 * 12)
            else
                MouseOverActionBar4:SetSize(40 * 12, 40)
            end
            for i = 1, 12 do
                local button = _G["MultiBarLeftButton" .. i]
                button:Hide()
            end
        end)
    end
end)

MouseOverActionBar4:SetScript("OnEnter", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarLeftButton" .. i]
        button:Show()
    end
end)

MouseOverActionBar4:SetScript("OnLeave", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarLeftButton" .. i]
        button:Hide()
    end
end)

local DragCheckFrameActionBar4 = CreateFrame("Frame", nil, UIParent)

DragCheckFrameActionBar4:SetScript("OnUpdate", function()
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarLeftButton" .. i]
        button.wasDragging = button.wasDragging or false

        if GetCursorInfo() then
            button:Show()
            button:GetNormalTexture():Show()
            button.wasDragging = true
        elseif not GetCursorInfo() and button.wasDragging then
            button:Hide()
            button:GetNormalTexture():Hide()
            button.wasDragging = false
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Make MultiBarRight visible only on mouseover or if something being dragged
---------------------------------------------------------------------------------------------------
local MouseOverActionBar5 = CreateFrame("Frame", nil, UIParent)
MouseOverActionBar5:RegisterEvent("PLAYER_ENTERING_WORLD")
MouseOverActionBar5:SetPoint("BOTTOMRIGHT", MultiBarRightButton12,
                             "BOTTOMRIGHT", 0, 0)
MouseOverActionBar5:EnableMouse(true)
MouseOverActionBar5:Show()

MouseOverActionBar5:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        C_Timer.After(3, function()
            local multiBarRightWidth, multiBarRightHeight =
                MultiBarRight:GetSize()

            if multiBarRightHeight > multiBarRightWidth then
                MouseOverActionBar5:SetSize(40, 40 * 12)
            else
                MouseOverActionBar5:SetSize(40 * 12, 40)
            end
            for i = 1, 12 do
                local button = _G["MultiBarRightButton" .. i]
                button:Hide()
            end
        end)
    end
end)

MouseOverActionBar5:SetScript("OnEnter", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarRightButton" .. i]
        button:Show()
    end
end)

MouseOverActionBar5:SetScript("OnLeave", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarRightButton" .. i]
        button:Hide()
    end
end)

local DragCheckFrameActionBar5 = CreateFrame("Frame", nil, UIParent)

DragCheckFrameActionBar5:SetScript("OnUpdate", function()
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    for i = 1, 12 do
        local button = _G["MultiBarRightButton" .. i]
        button.wasDragging = button.wasDragging or false

        if GetCursorInfo() then
            button:Show()
            button:GetNormalTexture():Show()
            button.wasDragging = true
        elseif not GetCursorInfo() and button.wasDragging then
            button:Hide()
            button:GetNormalTexture():Hide()
            button.wasDragging = false
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide mouseover bars when the spellbook has been closed after opening it
---------------------------------------------------------------------------------------------------
function HideBarWhenSpellbookClosed(barName, barSetting)
    if SettingsInitialized and not barSetting then return end
    local frameState = {spellbookWasOpen = false}

    SpellBookFrame:HookScript("OnShow",
                              function() frameState.spellbookWasOpen = true end)

    SpellBookFrame:HookScript("OnHide", function()
        if frameState.spellbookWasOpen then
            for i = 1, 12 do
                local button = _G[barName .. i]
                if button then button:Hide() end
            end
            frameState.spellbookWasOpen = false
        end
    end)
end

HideBarWhenSpellbookClosed("MultiBarLeftButton",
                           zUI_SavedSettings[PlayerIdentifier]
                               .multiBarLeftSetting)
HideBarWhenSpellbookClosed("MultiBarRightButton",
                           zUI_SavedSettings[PlayerIdentifier]
                               .multiBarRightSetting)

---------------------------------------------------------------------------------------------------
-- Hide the Objective Tracker Artwork
---------------------------------------------------------------------------------------------------
local HideObjectiveTrackerArtwork = CreateFrame("Frame")
HideObjectiveTrackerArtwork:RegisterEvent("PLAYER_ENTERING_WORLD")

HideObjectiveTrackerArtwork:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].HideObjectiveTrackerArtworkSetting then
        ObjectiveTrackerBlocksFrame.CampaignQuestHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.QuestHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.AchievementHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.ScenarioHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.AdventureHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.MonthlyActivitiesHeader.Background:Hide()
        ObjectiveTrackerBlocksFrame.ProfessionHeader.Background:Hide()
        BONUS_OBJECTIVE_TRACKER_MODULE.Header.Background:Hide()
        WORLD_QUEST_TRACKER_MODULE.Header.Background:Hide()
        ObjectiveTrackerFrame.BlocksFrame.UIWidgetsHeader.Background:Hide()
        ObjectiveTrackerFrame.HeaderMenu.Title:SetAlpha(0)
    end
end)

---------------------------------------------------------------------------------------------------
-- Automatic collapse options for each part of the objective tracker
---------------------------------------------------------------------------------------------------
--[[
    on load (login, loading screen, etc.)
    - Campaign Quest
    - Quests
    - Achievements
    - Scenario
    - Entire Objective Tracker
    Not sure about what are these ones showing yet:
    - Monthly Activities
    - Profession
    - Adventure

]]
local AutomaticObjectiveTrackerCollapseOnLoad = CreateFrame("Frame")
AutomaticObjectiveTrackerCollapseOnLoad:RegisterEvent("PLAYER_ENTERING_WORLD")

AutomaticObjectiveTrackerCollapseOnLoad:SetScript("OnEvent",
                                                  function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        if ObjectiveTrackerBlocksFrame.CampaignQuestHeader.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].CampaignQuestHeaderSetting then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.CampaignQuestHeader.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.QuestHeader.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].QuestSectionSetting then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.QuestHeader.MinimizeButton:Click()
            end)
        end

        if WORLD_QUEST_TRACKER_MODULE.Header.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].WorldQuestHeaderSetting then
            C_Timer.After(3, function()
                WORLD_QUEST_TRACKER_MODULE.Header.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.AchievementHeader.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].AchievementHeaderSetting then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.AchievementHeader.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.ScenarioHeader.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].ScenarioHeaderSetting then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.ScenarioHeader.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.AdventureHeader.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].AdventureHeaderSetting then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.AdventureHeader.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.MonthlyActivitiesHeader.MinimizeButton:IsShown() then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.MonthlyActivitiesHeader
                    .MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerBlocksFrame.ProfessionHeader.MinimizeButton:IsShown() then
            C_Timer.After(3, function()
                ObjectiveTrackerBlocksFrame.ProfessionHeader.MinimizeButton:Click()
            end)
        end

        if ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:IsShown() and
            zUI_SavedSettings[PlayerIdentifier].HeaderMenuSetting then
            C_Timer.After(4, function()
                ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:Click()
            end)
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Move the Queue Status Button to the left of the minimap
---------------------------------------------------------------------------------------------------
local function MoveQSB()
    UIParent.ClearAllPoints(QueueStatusButton)
    UIParent.SetPoint(QueueStatusButton, "RIGHT", Minimap, "LEFT", -20, -100)
    QueueStatusButton:SetScale(0.8)
end

local QSB = CreateFrame("Frame")
QSB:RegisterEvent("PLAYER_ENTERING_WORLD")
QSB:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].MoveQSBSetting then
        C_Timer.After(3, function()
            MoveQSB()
            hooksecurefunc(QueueStatusButton, "SetPoint", MoveQSB)
        end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Collapse the Buff Frame on load
---------------------------------------------------------------------------------------------------
local CollapseBuffFrame = CreateFrame("Frame")
CollapseBuffFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
CollapseBuffFrame:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" then
        C_Timer.After(2,
                      function()
            BuffFrame.CollapseAndExpandButton:Click()
        end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Movable chat frame ANYWHERE on the ui, welcome my corner friends
---------------------------------------------------------------------------------------------------
--[[
    Saves the current position, so it can be restored next time the ui is loaded
    Make it movable, but most importantly set SetClampedToScreen to false so you can drag it anywhere
    On stop it drops th frame and saves the position
    Sets the frame to the point it was last time
]]
local function SaveChatFramePosition(frame)
    local point, _, relativePoint, xOfs, yOfs = frame:GetPoint()
    zUI_SavedSettings[PlayerIdentifier].ChatFramePosition = {
        point, _, relativePoint, xOfs, yOfs
    }
end

local function MakeChatFrameDraggableToCorner(frame)
    local savedPosition = zUI_SavedSettings[PlayerIdentifier].ChatFramePosition

    if savedPosition and
        zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        frame:SetClampedToScreen(false)
        frame:ClearAllPoints()
        frame:SetPoint(savedPosition[1], savedPosition[2], savedPosition[3],
                       savedPosition[4], savedPosition[5])
    end

    if zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        frame:SetMovable(true)
        frame:EnableMouse(true)
        frame:RegisterForDrag("LeftButton")
        frame:SetClampedToScreen(false)
        frame:SetScript("OnDragStart", frame.StartMoving)
        frame:SetScript("OnDragStop", function(self)
            self:StopMovingOrSizing()
            SaveChatFramePosition(self)
        end)
    else
        frame:SetScript("OnDragStart", nil)
        frame:SetScript("OnDragStop", nil)
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        C_Timer.After(2, function()
            if SettingsInitialized then
                for i = 1, NUM_CHAT_WINDOWS do
                    MakeChatFrameDraggableToCorner(_G["ChatFrame" .. i])
                end
            end
        end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Player frame modifications
---------------------------------------------------------------------------------------------------
function HidePlayerAndTargetFrames()
    PlayerFrame.PlayerFrameContainer.PlayerPortraitMask:Hide()
    PlayerFrame.PlayerFrameContainer.FrameTexture:SetTexture("")
    PlayerFrame.PlayerFrameContainer.PlayerPortrait:Show()
    PlayerFrame.PlayerFrameContainer.FrameFlash:SetTexture("")
    PlayerFrame.PlayerFrameContainer.VehicleFrameTexture:Hide()

    TargetFrame.TargetFrameContainer.FrameTexture:Hide()
    TargetFrame.TargetFrameContainer.PortraitMask:Hide()
    TargetFrame.TargetFrameContainer.Flash:SetTexture("")
    TargetFrame.TargetFrameContainer.BossPortraitFrameTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()

    hooksecurefunc("PlayerFrame_UpdateStatus", function()
        PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
            .PlayerPortraitCornerIcon:Hide()
        PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
            .PlayerPortraitCornerIcon:Hide()
    end)
end

C_Timer.After(2, function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].HidePlayerAndTargetFramesSetting then
        HidePlayerAndTargetFrames()
    end
end)
