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
customBagsCheckbox:SetText("Custom Bags BETA")
Checkbox_CustomBags:SetPoint("TOPLEFT", 20, -180) -- Adjust the y-coordinate as needed
Checkbox_CustomBags.tooltip = "Enable or disable custom player bags."
Checkbox_CustomBags:SetChecked(zUI_SavedSettings[PlayerIdentifier]
                                   .CustomBagsSetting)

Checkbox_CustomBags:SetScript("OnClick", function(self)
    zUI_SavedSettings[PlayerIdentifier].CustomBagsSetting = self:GetChecked()
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
druidCatFormCheckbox:SetText("Custom Druid Cat Form")
Checkbox_CustomDruidCatForm:SetPoint("TOPLEFT", 20, -90)
Checkbox_CustomDruidCatForm.tooltip =
    "Customize the appearance of the Druid Cat Form."
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
            ObjectiveTrackerFrame:Hide()
        elseif event == "PLAYER_REGEN_ENABLED" then
            ObjectiveTrackerFrame:Show()
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
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].HideChatFrameSetting then
        if event == "PLAYER_REGEN_DISABLED" then
            GeneralDockManager:Hide()
            ChatFrame1:Hide()
        elseif event == "PLAYER_REGEN_ENABLED" then
            GeneralDockManager:Show()
            ChatFrame1:Show()
        end
    end
end)

-- ---------------------------------------------------------------------------------------------------
-- -- Hide side buttons and their background on the chat frame
-- ---------------------------------------------------------------------------------------------------
local HideChatSidebar = CreateFrame("Frame")
local _G_ChatSidebar = _G

HideChatSidebar:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatSidebar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" and SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].HideChatSidebarSetting then
        ChatFrameMenuButton:Hide()
        ChatFrameChannelButton:Hide()
        ChatFrameToggleVoiceDeafenButton:Hide()
        ChatFrameMenuButton:GetParent():Hide()

        for i = 1, NUM_CHAT_WINDOWS do
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameBackground"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameTopTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameTopLeftTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameTopRightTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameBottomLeftTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameBottomRightTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameBottomTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameLeftTexture"]:Hide()
            _G_ChatSidebar["ChatFrame" .. i .. "ButtonFrameRightTexture"]:Hide()
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the original chat frame style
---------------------------------------------------------------------------------------------------
local HideChatFrameStyle = CreateFrame("Frame")
local _G_ChatFrameStyle = _G

HideChatFrameStyle:RegisterEvent("PLAYER_ENTERING_WORLD")

local tabTextures = {"Left", "Right", "Middle"}
local frameTextures = {
    "BottomTexture", "BottomLeftTexture", "BottomRightTexture", "TopTexture",
    "TopLeftTexture", "TopRightTexture", "LeftTexture", "RightTexture"
}
local events = {
    "OnEnter", "OnLeave", "OnMouseDown", "OnMouseUp", "OnUpdate", "OnShow",
    "OnHide", "OnReceiveDrag", "OnDragStart", "OnDragStop"
}

HideChatFrameStyle:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" and SettingsInitialized then
        for i = 1, NUM_CHAT_WINDOWS do
            local chatFrame = _G_ChatFrameStyle["ChatFrame" .. i]
            local chatTab = _G_ChatFrameStyle["ChatFrame" .. i .. "Tab"]

            for _, texture in ipairs(tabTextures) do
                if chatTab and chatTab[texture] then
                    chatTab[texture]:Hide()
                end
            end

            for _, texture in ipairs(frameTextures) do
                if chatFrame[texture] then
                    chatFrame[texture]:Hide()
                end
            end

            local function eventHandler()
                if chatTab then chatTab:SetAlpha(0.3) end
                if _G_ChatFrameStyle["ChatFrame" .. i .. "Background"] then
                    _G_ChatFrameStyle["ChatFrame" .. i .. "Background"]:SetAlpha(
                        0.02)
                end
            end

            eventHandler()

            for _, eventHook in ipairs(events) do
                chatTab:SetScript(eventHook, eventHandler)
                chatFrame:SetScript(eventHook, eventHandler)
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
    if SettingsInitialized and event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings[PlayerIdentifier].MoveChatFrameEditBoxSetting then
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
end)

-- ---------------------------------------------------------------------------------------------------
-- -- Hide the social quick join toast button when combat starts
-- ---------------------------------------------------------------------------------------------------
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
    Class type color for the target's name in the tooltip
    Show the target's item level in the tooltip if available <--- NOT WORKING/EXISTING YET
]]
ClassColors = {
    ["WARRIOR"] = {r = 0.78, g = 0.61, b = 0.43},
    ["PALADIN"] = {r = 0.96, g = 0.55, b = 0.73},
    ["HUNTER"] = {r = 0.67, g = 0.83, b = 0.45},
    ["ROGUE"] = {r = 1.00, g = 0.96, b = 0.41},
    ["PRIEST"] = {r = 1.00, g = 1.00, b = 1.00},
    ["DEATHKNIGHT"] = {r = 0.77, g = 0.12, b = 0.23},
    ["SHAMAN"] = {r = 0.00, g = 0.44, b = 0.87},
    ["MAGE"] = {r = 0.41, g = 0.8, b = 0.94},
    ["WARLOCK"] = {r = 0.58, g = 0.51, b = 0.79},
    ["MONK"] = {r = 0.00, g = 1.00, b = 0.59},
    ["DRUID"] = {r = 1.00, g = 0.49, b = 0.04},
    ["DEMONHUNTER"] = {r = 0.64, g = 0.19, b = 0.79},
    ["EVOKER"] = {r = 0.20, g = 0.58, b = 0.50}
}
local lastTarget = nil
GameTooltip:HookScript("OnTooltipCleared", function(self) lastTarget = nil end)

function RGBToHex(color)
    local r = color.r * 255
    local g = color.g * 255
    local b = color.b * 255
    return string.format("FF%02X%02X%02X", r, g, b)
end

GameTooltip:HookScript("OnUpdate", function(self)
    local _, unit = self:GetUnit()
    local target = unit and unit .. "target"
    if SettingsInitialized and unit and target then
        local targetName, targetRealm = UnitName(target)
        local _, targetClass = UnitClass(target)
        local color = ClassColors[targetClass]
        if not color then color = {r = 1, g = 1, b = 1} end
        local colorCode = RGBToHex(color)
        local coloredTargetName =
            targetName and "|c" .. colorCode .. targetName .. "|r" or ""
        local realmString = targetRealm and "-" .. targetRealm or ""
        local targetInfo = coloredTargetName .. realmString

        if targetInfo ~= lastTarget then
            self:AddLine(" ", 1, 1, 1)
            if UnitExists(target) then
                self:AddDoubleLine("Target: ", targetInfo)
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

local fpsText = fpsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
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
            if SettingsInitialized then
                local buttons = {
                    AchievementMicroButton, GuildMicroButton, LFDMicroButton,
                    CollectionsMicroButton, EJMicroButton, MainMenuMicroButton,
                    HelpMicroButton, StoreMicroButton, TalentMicroButton,
                    QuestLogMicroButton, CharacterMicroButton,
                    SpellbookMicroButton, TalentMicroButton
                }

                local shouldHide = zUI_SavedSettings[PlayerIdentifier]
                                       .MicroMenuSetting
                for _, button in ipairs(buttons) do
                    if button == StoreMicroButton then
                        button:SetAlpha(shouldHide and 0 or 1)
                    else
                        if shouldHide then
                            button:Hide()
                        else
                            button:Show()
                        end
                    end
                end
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
-- Hide the paladin power bar textures except the symbols for holy power and move them
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
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier]
                .CustomPaladinPowerBarTextureSetting and event == "ADDON_LOADED" and
            addonName == "zUI" then
            if className == "PALADIN" then
                PaladinPowerBarFrame.ActiveTexture:Hide()
                PaladinPowerBarFrame.Background:Hide()
                PaladinPowerBarFrame.ThinGlow:Hide()
                PaladinPowerBarFrame.Glow:Hide()

                local runes = {
                    {
                        rune = PaladinPowerBarFrameRune1.ActiveTexture,
                        button = ActionButton4
                    },
                    {
                        rune = PaladinPowerBarFrameRune2.ActiveTexture,
                        button = ActionButton5
                    },
                    {
                        rune = PaladinPowerBarFrameRune3.ActiveTexture,
                        button = ActionButton6
                    },
                    {
                        rune = PaladinPowerBarFrameRune4.ActiveTexture,
                        button = ActionButton7
                    },
                    {
                        rune = PaladinPowerBarFrameRune5.ActiveTexture,
                        button = ActionButton8
                    }
                }

                for _, runeData in ipairs(runes) do
                    runeData.rune:SetSize(30, 30)
                    runeData.rune:GetParent():ClearAllPoints()
                    runeData.rune:GetParent():SetPoint("BOTTOM",
                                                       runeData.button, "TOP",
                                                       0, 10)
                end
            end
        end
    end)
end)

---------------------------------------------------------------------------------------------------
-- Hide the death knight rune textures except the symbols for runes and move them
---------------------------------------------------------------------------------------------------
local CustomDeathKnightPowerBarTexture = CreateFrame("Frame")
CustomDeathKnightPowerBarTexture:RegisterEvent("ADDON_LOADED")

CustomDeathKnightPowerBarTexture:SetScript("OnEvent",
                                           function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting and
            event == "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "DEATHKNIGHT" then
                for i = 1, 6 do
                    local rune = _G["RuneFrame"]["Rune" .. i]
                    rune.BG_Active:Hide()
                    rune.BG_Inactive:Hide()
                    rune.Rune_Active:SetSize(25, 25)
                    rune.Rune_Inactive:SetSize(25, 25)
                    rune.Rune_Eyes:SetSize(25, 25)
                    rune.Rune_Lines:SetSize(25, 25)
                    rune.Rune_Mid:SetSize(25, 25)
                    rune.Rune_Grad:SetSize(25, 25)
                    rune.Smoke:SetSize(25, 25)
                    rune.BG_Shadow:Hide()
                end
            end
        end
    end)
end)

local KeepDeathKnightRunesAtPosition = CreateFrame("Frame")
KeepDeathKnightRunesAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomDeathKnightRunesSetting then
        local _, className = UnitClass("player")
        if className == "DEATHKNIGHT" then
            for i = 1, 6 do
                local rune = _G["RuneFrame"]["Rune" .. i]
                local actionButton = _G["ActionButton" .. (i + 3)]
                rune:ClearAllPoints()
                rune:SetPoint("BOTTOM", actionButton, "TOP", 0, 10)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the rogue energy points textures except the symbols for combo points and move them
---------------------------------------------------------------------------------------------------
local CustomRogueEnergyPoints = CreateFrame("Frame")
CustomRogueEnergyPoints:RegisterEvent("ADDON_LOADED")

CustomRogueEnergyPoints:SetScript("OnEvent", function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting and
            event == "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "ROGUE" then
                local energies = {RogueComboPointBarFrame:GetChildren()}

                for i = 1, 6 do
                    local energy = energies[i]
                    energy.BGActive:Hide()
                    energy.BGShadow:Hide()
                    energy.BGInactive:Hide()
                    energy:SetSize(25, 25)
                end
            end
        end
    end)
end)

local KeepRogueEnergyPointsAtPosition = CreateFrame("Frame")
KeepRogueEnergyPointsAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomRogueEnergyPointsSetting then
        local _, className = UnitClass("player")
        local energies = {RogueComboPointBarFrame:GetChildren()}
        if className == "ROGUE" then
            for i = 1, 6 do
                local energy = energies[i]
                energy:ClearAllPoints()
                energy:SetPoint("BOTTOM", _G["ActionButton" .. (i + 3)], "TOP",
                                0, 10)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the Warlock soul shard textures except the shards itself and move them
---------------------------------------------------------------------------------------------------
local CustomWarlockSoulShards = CreateFrame("Frame")
CustomWarlockSoulShards:RegisterEvent("ADDON_LOADED")

CustomWarlockSoulShards:SetScript("OnEvent", function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].CustomWarlockSoulShardSetting and
            event == "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "WARLOCK" then
                local soulShards = {WarlockPowerFrame:GetChildren()}

                for i = 1, 5 do
                    local soulShard = soulShards[i]
                    soulShard.Background:Hide()
                    soulShard:SetSize(30, 30)
                end
            end
        end
    end)
end)

local KeepWarlockSoulShardsAtPosition = CreateFrame("Frame")
KeepWarlockSoulShardsAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomWarlockSoulShardSetting then
        local _, className = UnitClass("player")
        local soulShards = {WarlockPowerFrame:GetChildren()}
        if className == "WARLOCK" then
            for i = 1, 5 do
                local soulShard = soulShards[i]
                soulShard:ClearAllPoints()
                soulShard:SetPoint("BOTTOM", _G["ActionButton" .. (i + 3)],
                                   "TOP", 15, 10)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hide the Druid cat form combo points textures except the points itself and move them
---------------------------------------------------------------------------------------------------
local CustomDruidCatFormComboPoints = CreateFrame("Frame")
CustomDruidCatFormComboPoints:RegisterEvent("ADDON_LOADED")

CustomDruidCatFormComboPoints:SetScript("OnEvent",
                                        function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier]
                .CustomDruidCatFormComboPointsSetting and event ==
            "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "DRUID" and GetShapeshiftFormID() == 1 then
                local comboPoints = {DruidComboPointBarFrame:GetChildren()}

                for i = 1, 5 do
                    local comboPoint = comboPoints[i]
                    comboPoint.BG_Active:Hide()
                    comboPoint.BG_Inactive:Hide()
                    comboPoint.BG_Shadow:Hide()
                    comboPoint.BG_Glow:Hide()
                    comboPoint.FX_RingGlow:Hide()
                    comboPoint:SetSize(30, 30)
                end
            end
        end
    end)
end)

local KeepDruidCatFormComboPointsAtPosition = CreateFrame("Frame")
KeepDruidCatFormComboPointsAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomDruidCatFormComboPointsSetting then
        local _, className = UnitClass("player")
        local comboPoints = {DruidComboPointBarFrame:GetChildren()}
        if className == "DRUID" and GetShapeshiftFormID() == 1 then
            for i = 1, 5 do
                local comboPoint = comboPoints[i]
                comboPoint:ClearAllPoints()
                comboPoint:SetPoint("BOTTOM", _G["ActionButton" .. (i + 3)],
                                    "TOP", 15, 10)
            end
        end
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

local actionBars = {
    "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
    "MultiBarLeftButton", "MultiBarRightButton"
}

local buttons = {}

local events = {
    "PLAYER_ENTERING_WORLD", "ACTIONBAR_SLOT_CHANGED",
    "ACTIONBAR_UPDATE_COOLDOWN", "ACTIONBAR_UPDATE_STATE",
    "UPDATE_BONUS_ACTIONBAR", "UPDATE_EXTRA_ACTIONBAR",
    "UPDATE_MULTI_CAST_ACTIONBAR", "UPDATE_OVERRIDE_ACTIONBAR",
    "UPDATE_POSSESS_BAR", "UPDATE_SHAPESHIFT_FORM", "UNIT_PET",
    "PET_BAR_UPDATE", "SPELL_UPDATE_USABLE", "UNIT_SPELLCAST_SUCCEEDED",
    "UNIT_SPELLCAST_START", "UNIT_SPELLCAST_STOP", "UNIT_SPELLCAST_INTERRUPTED",
    "SPELL_ACTIVATION_OVERLAY_GLOW_HIDE", "SPELL_ACTIVATION_OVERLAY_GLOW_SHOW",
    "UPDATE_MACROS"
}

for _, event in ipairs(events) do actionBarMod:RegisterEvent(event) end

actionBarMod:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].actionBarModSetting then
        return
    end

    if event == "PLAYER_ENTERING_WORLD" then
        MainMenuBar.ActionBarPageNumber:Hide()

        for _, actionBar in ipairs(actionBars) do
            for i = 1, 12 do
                local button = _G[actionBar .. i]
                local normalTexture = button:GetNormalTexture()
                local pushedTexture = button:GetPushedTexture()
                local checkedTexture = button:GetCheckedTexture()
                local regions = {button:GetRegions()}
                local hotkey = _G[button:GetName() .. 'HotKey']

                table.insert(buttons, {
                    button = button,
                    normalTexture = normalTexture,
                    pushedTexture = pushedTexture,
                    checkedTexture = checkedTexture,
                    regions = regions,
                    hotkey = hotkey
                })
            end
        end
    else
        for _, buttonData in ipairs(buttons) do
            local button = buttonData.button
            local normalTexture = buttonData.normalTexture
            local pushedTexture = buttonData.pushedTexture
            local checkedTexture = buttonData.checkedTexture
            local regions = buttonData.regions
            local hotkey = buttonData.hotkey

            if normalTexture then normalTexture:Hide() end

            if pushedTexture then pushedTexture:Hide() end

            if checkedTexture then checkedTexture:Hide() end

            for _, region in ipairs(regions) do
                if region:IsObjectType("Texture") then
                    if not HasAction(button.action) then
                        region:Hide()
                    end
                end
            end

            if hotkey then
                if IsKeyBindingSet(button) and
                    (HasAction(button.action) or GetActionInfo(button.action)) then
                    hotkey:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE")
                    hotkey:Show()
                else
                    hotkey:Hide()
                end
            end

            if GetCursorInfo() then
                button:Show()
                normalTexture:Show()
                button.wasDragging = true
            elseif not GetCursorInfo() and button.wasDragging then
                normalTexture:Hide()
                local buttonName = button:GetName()

                if buttonName:find("^MultiBarLeftButton") or
                    buttonName:find("^MultiBarRightButton") then
                    button:Hide()
                end
                button.wasDragging = false
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Make MultiBarLeft visible only on mouseover or if something being dragged
---------------------------------------------------------------------------------------------------
local function setButtonVisibility(show, barName)
    for i = 1, 12 do
        local button = _G[barName .. i]
        if show then
            button:Show()
        else
            button:Hide()
        end
    end
end

local function handleCursorInfo(barName)
    for i = 1, 12 do
        local button = _G[barName .. i]
        button.wasDragging = button.wasDragging or false

        if GetCursorInfo() then
            button:Show()
            button:GetNormalTexture():Show()
            button.wasDragging = true
        elseif not GetCursorInfo() and button.wasDragging then
            button:GetNormalTexture():Hide()
            button:Hide()
            button.wasDragging = false
        end
    end
end

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

            setButtonVisibility(false, "MultiBarLeftButton")
        end)
    end
end)

MouseOverActionBar4:SetScript("OnEnter", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    setButtonVisibility(true, "MultiBarLeftButton")
end)

MouseOverActionBar4:SetScript("OnLeave", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    setButtonVisibility(false, "MultiBarLeftButton")
end)

local DragCheckFrameActionBar4 = CreateFrame("Frame", nil, UIParent)

for _, event in ipairs(events) do DragCheckFrameActionBar4:RegisterEvent(event) end

DragCheckFrameActionBar4:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    handleCursorInfo("MultiBarLeftButton")
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

            setButtonVisibility(false, "MultiBarRightButton")
        end)
    end
end)

MouseOverActionBar5:SetScript("OnEnter", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    setButtonVisibility(true, "MultiBarRightButton")
end)

MouseOverActionBar5:SetScript("OnLeave", function(self)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    setButtonVisibility(false, "MultiBarRightButton")
end)

local DragCheckFrameActionBar5 = CreateFrame("Frame", nil, UIParent)

for _, event in ipairs(events) do DragCheckFrameActionBar5:RegisterEvent(event) end

DragCheckFrameActionBar5:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    handleCursorInfo("MultiBarRightButton")
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
            setButtonVisibility(false, barName)
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
-- Hide mouseover bars when the talent frame has been closed after opening it
---------------------------------------------------------------------------------------------------
function HideBarWhenTalentFrameClosed(barName, barSetting)
    if SettingsInitialized and not barSetting then return end
    local frameState = {talentFrameWasOpen = false, spellbookWasOpen = false}

    hooksecurefunc("ToggleTalentFrame", function()
        if frameState.talentFrameWasOpen and not frameState.spellbookWasOpen then
            setButtonVisibility(false, barName)
        end
        frameState.talentFrameWasOpen = not frameState.talentFrameWasOpen
        frameState.spellbookWasOpen = SpellBookFrame:IsShown()
    end)
end

HideBarWhenTalentFrameClosed("MultiBarLeftButton",
                             zUI_SavedSettings[PlayerIdentifier]
                                 .multiBarLeftSetting)
HideBarWhenTalentFrameClosed("MultiBarRightButton",
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
        local headers = {
            {
                header = ObjectiveTrackerBlocksFrame.CampaignQuestHeader,
                setting = "CampaignQuestHeaderSetting"
            }, {
                header = ObjectiveTrackerBlocksFrame.QuestHeader,
                setting = "QuestSectionSetting"
            }, {
                header = WORLD_QUEST_TRACKER_MODULE.Header,
                setting = "WorldQuestHeaderSetting"
            }, {
                header = ObjectiveTrackerBlocksFrame.AchievementHeader,
                setting = "AchievementHeaderSetting"
            }, {
                header = ObjectiveTrackerBlocksFrame.ScenarioHeader,
                setting = "ScenarioHeaderSetting"
            }, {
                header = ObjectiveTrackerBlocksFrame.AdventureHeader,
                setting = "AdventureHeaderSetting"
            }, {header = ObjectiveTrackerBlocksFrame.MonthlyActivitiesHeader},
            {header = ObjectiveTrackerBlocksFrame.ProfessionHeader},
            {
                header = ObjectiveTrackerFrame.HeaderMenu,
                setting = "HeaderMenuSetting"
            }
        }

        for _, item in ipairs(headers) do
            if item.header == ObjectiveTrackerFrame.HeaderMenu then
                if not ObjectiveTrackerFrame.collapsed and
                    item.header.MinimizeButton:IsShown() and
                    (not item.setting or
                        zUI_SavedSettings[PlayerIdentifier][item.setting]) then
                    C_Timer.After(3, function()
                        item.header.MinimizeButton:Click()
                    end)
                end
            elseif item.header.module and not item.header.module.collapsed and
                item.header.MinimizeButton:IsShown() and
                (not item.setting or
                    zUI_SavedSettings[PlayerIdentifier][item.setting]) then
                C_Timer.After(3,
                              function()
                    item.header.MinimizeButton:Click()
                end)
            end
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
        C_Timer.After(2, function()
            if BuffFrame.isExpanded then
                BuffFrame.CollapseAndExpandButton:Click()
            end
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

    if savedPosition and frame:GetName() == "ChatFrame1" and
        zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        frame:SetClampedToScreen(false)
        frame:ClearAllPoints()
        frame:SetPoint(savedPosition[1], savedPosition[2], savedPosition[3],
                       savedPosition[4], savedPosition[5])
    end

    if zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        local width = ChatFrame1:GetWidth()
        local height = ChatFrame1:GetHeight()
        frame:SetWidth(width)
        frame:SetHeight(height)
        if frame:GetName() == "ChatFrame1" then
            frame:SetMovable(true)
            frame:EnableMouse(true)
            frame:RegisterForDrag("LeftButton")
            frame:SetClampedToScreen(false)
            frame:SetScript("OnDragStart", frame.StartMoving)
            frame:SetScript("OnDragStop", function(self)
                self:StopMovingOrSizing()
                SaveChatFramePosition(self)
            end)
        end
    end
end

local function MakeAllChatFramesDraggable()
    for i = 1, NUM_CHAT_WINDOWS do
        MakeChatFrameDraggableToCorner(_G["ChatFrame" .. i])
    end
end

local chatDragFrame = CreateFrame("Frame")
chatDragFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
chatDragFrame:RegisterEvent("PLAYER_TALENT_UPDATE")
chatDragFrame:SetScript("OnEvent", function(self, event, ...)
    if not SettingsInitialized then return end

    if event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_TALENT_UPDATE" then
        C_Timer.After(2, function() MakeAllChatFramesDraggable() end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Player, Target, Target of Target, Party, Pet frame modifications
---------------------------------------------------------------------------------------------------
function HidePlayerAndTargetFrames()
    PlayerFrame.PlayerFrameContainer.PlayerPortraitMask:Hide()
    PlayerFrame.PlayerFrameContainer.FrameTexture:SetTexture("")
    PlayerFrame.PlayerFrameContainer.PlayerPortrait:Show()
    PlayerFrame.PlayerFrameContainer.FrameFlash:SetTexture("")
    PlayerFrame.PlayerFrameContainer.VehicleFrameTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigeBadge:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigePortrait:Hide()

    TargetFrame.TargetFrameContainer.FrameTexture:Hide()
    TargetFrame.TargetFrameContainer.PortraitMask:Hide()
    TargetFrame.TargetFrameContainer.Flash:SetTexture("")
    TargetFrame.TargetFrameContainer.BossPortraitFrameTexture:Hide()
    TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigeBadge:Hide()
    TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigePortrait:Hide()

    TargetFrameToT.FrameTexture:Hide()

    FocusFrame.TargetFrameContainer.FrameTexture:Hide()

    PetFrameTexture:Hide()

    PartyFrame.MemberFrame1.Texture:Hide()
    PartyFrame.MemberFrame2.Texture:Hide()
    PartyFrame.MemberFrame3.Texture:Hide()
    PartyFrame.MemberFrame4.Texture:Hide()
end

local function HookStatusUpdate()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual
        .PlayerPortraitCornerIcon:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigeBadge:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigePortrait:Hide()

    TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigeBadge:Hide()
    TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigePortrait:Hide()
end

local HidePlayerAndTargetFrame = CreateFrame("Frame")
HidePlayerAndTargetFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
HidePlayerAndTargetFrame:SetScript("OnEvent", function(self, event, ...)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].HidePlayerAndTargetFramesSetting then
            HidePlayerAndTargetFrames()
            hooksecurefunc("PlayerFrame_UpdateStatus", HookStatusUpdate)
            hooksecurefunc("CompactUnitFrame_UpdateStatusText", HookStatusUpdate)
        end
    end)
end)

---------------------------------------------------------------------------------------------------
-- Move the BNToastFrame
---------------------------------------------------------------------------------------------------
local BNFrame = CreateFrame("Frame")
BNFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
BNFrame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        BNToastFrame:ClearAllPoints()
        BNToastFrame:SetPoint("BOTTOMLEFT", ChatFrame1Tab, "TOPRIGHT", 90, 0)
    end
end)

---------------------------------------------------------------------------------------------------
-- Total amount of Honorable kills
---------------------------------------------------------------------------------------------------
--[[
    Being solved in a tricky way atm, since adding all characters' HKs together
    is not always accurate (e.g. if you deleted a char and had honorable kills on it,
    it's still counted)
    updating the displayed value whenever PLAYER_PVP_KILLS_CHANGED is triggered
]]
local TotalAmountOfHonorableKills = CreateFrame("Frame")
TotalAmountOfHonorableKills:RegisterEvent("PLAYER_ENTERING_WORLD")
TotalAmountOfHonorableKills:RegisterEvent("PLAYER_PVP_KILLS_CHANGED")

local achievementID = 5363
local criteriaID = 1
local _, _, _, progress, _ = 0, 0, 0, nil, nil

local totalHKFrame = CreateFrame("Frame", nil, UIParent)
totalHKFrame:SetSize(200, 20)
totalHKFrame:SetPoint("TOPLEFT", 0, 0)

local totalHKText = totalHKFrame:CreateFontString(nil, "OVERLAY",
                                                  "GameFontNormal")
totalHKText:SetAllPoints()
totalHKText:SetFont(STANDARD_TEXT_FONT, 14, "OUTLINE")

local function RecalculateTotalHonorableKills()
    if SettingsInitialized then
        zUI_SavedSettings.TotalAmountOfHonorableKills = 0
        for _, characterSettings in pairs(zUI_SavedSettings) do
            if type(characterSettings) == "table" and
                characterSettings.HonorableKillsOnCharacter then
                zUI_SavedSettings.TotalAmountOfHonorableKills =
                    zUI_SavedSettings.TotalAmountOfHonorableKills +
                        characterSettings.HonorableKillsOnCharacter
            end
        end
    end
end

local function UpdateHonorableKills()
    _, _, _, progress, _ = GetAchievementCriteriaInfo(achievementID, criteriaID)
    zUI_SavedSettings[PlayerIdentifier].HonorableKillsOnCharacter =
        GetPVPLifetimeStats()
    if not zUI_SavedSettings[PlayerIdentifier].HonorableKillsAdded then
        zUI_SavedSettings.TotalAmountOfHonorableKills =
            zUI_SavedSettings.TotalAmountOfHonorableKills +
                zUI_SavedSettings[PlayerIdentifier].HonorableKillsOnCharacter
        zUI_SavedSettings[PlayerIdentifier].HonorableKillsAdded = true
    end
    RecalculateTotalHonorableKills()
    if progress > zUI_SavedSettings.TotalAmountOfHonorableKills then
        totalHKText:SetText("Total HK: " .. progress)
    else
        totalHKText:SetText("Total HK: " ..
                                zUI_SavedSettings.TotalAmountOfHonorableKills)
    end
end

TotalAmountOfHonorableKills:SetScript("OnEvent", function(self, event, ...)
    if zUI_SavedSettings[PlayerIdentifier].TotalAmountOfHonorableKillsSetting then
        if event == "PLAYER_ENTERING_WORLD" then
            C_Timer.After(2, function() UpdateHonorableKills() end)
        elseif event == "PLAYER_PVP_KILLS_CHANGED" then
            UpdateHonorableKills()
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- BagFrame
---------------------------------------------------------------------------------------------------

local NUM_ITEMS_PER_ROW = 10
local BagFrame = CreateFrame("Frame")

BagFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
BagFrame:RegisterEvent("BAG_UPDATE")
BagFrame:RegisterEvent("BAG_NEW_ITEMS_UPDATED")
BagFrame:RegisterEvent("BAG_UPDATE_COOLDOWN")
BagFrame:RegisterEvent("BAG_CLOSED")
BagFrame:RegisterEvent("BAG_OPEN")
BagFrame:RegisterEvent("BAG_UPDATE_DELAYED")
BagFrame:RegisterEvent("ITEM_LOCK_CHANGED")
BagFrame:RegisterEvent("BAG_SLOT_FLAGS_UPDATED")
BagFrame:RegisterEvent("BANKFRAME_OPENED")
BagFrame:RegisterEvent("BANKFRAME_CLOSED")
BagFrame:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
BagFrame:RegisterEvent("ITEM_PUSH")
BagFrame:RegisterEvent("QUEST_ACCEPTED")
BagFrame:RegisterEvent("QUEST_REMOVED")
BagFrame:RegisterEvent("PLAYERBANKBAGSLOTS_CHANGED")
BagFrame:RegisterEvent("MAIL_SHOW")
BagFrame:RegisterEvent("MAIL_CLOSED")
BagFrame:RegisterEvent("TRADE_SHOW")
BagFrame:RegisterEvent("TRADE_CLOSED")
BagFrame:RegisterEvent("AUCTION_HOUSE_SHOW")
BagFrame:RegisterEvent("AUCTION_HOUSE_CLOSED")
BagFrame:RegisterEvent("GUILDBANKFRAME_OPENED")
BagFrame:RegisterEvent("GUILDBANKFRAME_CLOSED")
BagFrame:RegisterEvent("ITEM_TEXT_BEGIN")
BagFrame:RegisterEvent("ITEM_TEXT_CLOSED")
BagFrame:RegisterEvent("GOSSIP_SHOW")
BagFrame:RegisterEvent("GOSSIP_CLOSED")
BagFrame:RegisterEvent("MERCHANT_SHOW")

function UpdateBagLayout()
    local totalItems = 0
    for bag = 6, 1, -1 do
        totalItems = totalItems + C_Container.GetContainerNumSlots(bag - 1)
    end

    local bottomRowItems = totalItems % NUM_ITEMS_PER_ROW
    if bottomRowItems == 0 then bottomRowItems = NUM_ITEMS_PER_ROW end

    local itemIndex = 1
    for bag = 6, 1, -1 do
        local numSlots = C_Container.GetContainerNumSlots(bag - 1)
        for slot = 1, numSlots do
            local itemButton = _G["ContainerFrame" .. (bag) .. "Item" .. slot]
            if itemButton then
                local col, row
                if itemIndex <= bottomRowItems then
                    col = (itemIndex - 1) + (NUM_ITEMS_PER_ROW - bottomRowItems)
                    row = 0
                else
                    col = (itemIndex - bottomRowItems - 1) % NUM_ITEMS_PER_ROW
                    row = math.floor((itemIndex - bottomRowItems - 1) /
                                         NUM_ITEMS_PER_ROW) + 1
                end
                local xPos = -col * 37
                local yPos = row * 37

                itemButton:SetAlpha(1)
                itemButton:ClearAllPoints()
                itemButton:SetPoint("CENTER", ContainerFrame1, "CENTER", xPos,
                                    yPos)
                _G[itemButton:GetName() .. "NormalTexture"]:Show()
                _G[itemButton:GetName() .. "IconTexture"]:Show()
                if itemButton.ProfessionQualityOverlay then
                    itemButton.ProfessionQualityOverlay:Show()
                end
                itemIndex = itemIndex + 1
            end
        end
    end

    local searchBox = _G["BagItemSearchBox"]
    if searchBox then
        local xPos = -300
        local yPos = -35

        searchBox:ClearAllPoints()
        searchBox:SetPoint("CENTER", ContainerFrame1, "CENTER", xPos, yPos)

        MoneyFrame = _G["ContainerFrame1MoneyFrame"]
        if MoneyFrame then
            MoneyFrame:ClearAllPoints()
            MoneyFrame:SetPoint("CENTER", ContainerFrame1, "CENTER", xPos + 120,
                                yPos)
            _G["ContainerFrame1MoneyFrame"]:Show()
            _G["ContainerFrame1MoneyFrame"].Border:Hide()

            if not _G.totalGoldText then
                _G.totalGoldText = MoneyFrame:CreateFontString(nil, "OVERLAY",
                                                               "GameFontNormal")
                _G.totalGoldText:SetPoint("TOPLEFT", MoneyFrame, "TOPRIGHT", 0,
                                          0)
            end

            _G.totalGoldText:SetText("Total: " .. zUI_SavedSettings.TotalGold ..
                                         "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:4:0|t")

            local bagMoneyUpdater = CreateFrame("Frame")

            bagMoneyUpdater:SetScript("OnEvent", function(self, event, ...)
                if event == "PLAYER_MONEY" then
                    _G.totalGoldText:SetText("Total: " ..
                                                 zUI_SavedSettings.TotalGold ..
                                                 "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:4:0|t")
                end
            end)

            bagMoneyUpdater:RegisterEvent("PLAYER_MONEY")

            local function comma_value(n)
                local left, num, right =
                    string.match(n, '^([^%d]*%d)(%d*)(.-)$')
                return
                    left .. (num:reverse():gsub('(%d%d%d)', '%1 '):reverse()) ..
                        right
            end

            _G.totalGoldText:SetScript("OnEnter", function(self)
                GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
                GameTooltip:ClearLines()
                local _, characterClass = UnitClass("player")
                local characters = {}
                for character, data in pairs(zUI_SavedSettings) do
                    if character == PlayerIdentifier then
                        local classInUpperCase = string.upper(characterClass)
                        data.Class = classInUpperCase
                    end
                    if type(data) == "table" and data.Gold and data.Class then
                        local currentRealm = GetRealmName()
                        local name, realm = strsplit("-", character)
                        if realm == currentRealm then
                            table.insert(characters, {
                                name = character,
                                gold = data.Gold,
                                class = data.Class
                            })
                        end
                    end
                end
                table.sort(characters, function(a, b)
                    return a.gold > b.gold
                end)
                for _, character in ipairs(characters) do
                    local colorTable = ClassColors[character.class] or
                                           {r = 1, g = 1, b = 1}
                    local color = RGBToHex(colorTable)
                    color = "|cff" .. color:sub(3)
                    GameTooltip:AddLine(color .. character.name .. "|r  " ..
                                            comma_value(character.gold) ..
                                            "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:4:0|t")
                end
                GameTooltip:Show()
            end)

            _G.totalGoldText:SetScript("OnLeave",
                                       function(self)
                GameTooltip:Hide()
            end)
        end

        BagItemAutoSortButton:Hide()

        if BackpackTokenFrame then
            BackpackTokenFrame:Hide()
            -- BackpackTokenFrame:ClearAllPoints()
            -- BackpackTokenFrame:SetPoint("CENTER", ContainerFrame1, "CENTER",
            --                             xPos, yPos - 20)
            -- BackpackTokenFrame:Show()
            -- BackpackTokenFrame.Border:Hide()
        end
        _G["BagItemSearchBox"]:Show()
    end
end

BagFrame:EnableKeyboard(true)
BagFrame:SetPropagateKeyboardInput(true)

BagFrame:SetScript("OnKeyDown", function(self, key)
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomBagsSetting then
        local openAllBags = GetBindingKey("OPENALLBAGS")
        if key == openAllBags then
            BackpackTokenFrame:Hide()
            _G["BagItemSearchBox"]:Hide()
            _G["ContainerFrame1MoneyFrame"]:Hide()
            for bag = 0, 5 do
                local numSlots = C_Container.GetContainerNumSlots(bag)
                for slot = 1, numSlots do
                    local itemButton = _G["ContainerFrame" .. (bag + 1) ..
                                           "Item" .. slot]
                    if itemButton then
                        itemButton:SetAlpha(0)
                        itemButton.IconBorder:Hide()
                        _G[itemButton:GetName() .. "NormalTexture"]:Hide()
                        _G[itemButton:GetName() .. "IconTexture"]:Hide()
                        if itemButton.ProfessionQualityOverlay then
                            itemButton.ProfessionQualityOverlay:Hide()
                        end
                    end
                end
            end
            C_Timer.After(0, function() UpdateBagLayout() end)
        end
    end
end)

local elementsToHide = {
    "CloseButton", "TitleContainer", "PortraitContainer", "Bg",
    "NineSlice.LeftEdge", "NineSlice.RightEdge", "NineSlice.TopEdge",
    "NineSlice.TopLeftCorner", "NineSlice.TopRightCorner",
    "NineSlice.BottomEdge", "NineSlice.BottomLeftCorner",
    "NineSlice.BottomRightCorner", "NineSlice.Center"
}

local function hideElements()
    for i = 1, 6 do
        local frame = _G["ContainerFrame" .. i]
        if frame then
            frame:EnableMouse(false)
            for _, element in ipairs(elementsToHide) do
                local parts = {}
                for part in string.gmatch(element, "[^.]+") do
                    table.insert(parts, part)
                end
                local target = frame
                for _, part in ipairs(parts) do
                    target = target[part]
                    if not target then break end
                end
                if target and type(target.Hide) == "function" then
                    target:Hide()
                end
            end
        end
    end
end

BagFrame:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomBagsSetting then
        local bagEvents = {
            ["BAG_OPEN"] = true,
            ["BAG_UPDATE"] = true,
            ["BAG_UPDATE_COOLDOWN"] = true,
            ["BAG_UPDATE_DELAYED"] = true,
            ["BAG_CLOSED"] = true,
            ["BAG_NEW_ITEMS_UPDATED"] = true,
            ["BAG_SLOT_FLAGS_UPDATED"] = true,
            ["ITEM_LOCK_CHANGED"] = true,
            ["PLAYER_ENTERING_WORLD"] = true,
            ["BANKFRAME_OPENED"] = true,
            ["BANKFRAME_CLOSED"] = true,
            ["PLAYERBANKSLOTS_CHANGED"] = true,
            ["ITEM_PUSH"] = true,
            ["QUEST_ACCEPTED"] = true,
            ["QUEST_REMOVED"] = true,
            ["PLAYERBANKBAGSLOTS_CHANGED"] = true,
            ["MAIL_SHOW"] = true,
            ["MAIL_CLOSED"] = true,
            ["TRADE_SHOW"] = true,
            ["TRADE_CLOSED"] = true,
            ["AUCTION_HOUSE_SHOW"] = true,
            ["AUCTION_HOUSE_CLOSED"] = true,
            ["GUILDBANKFRAME_OPENED"] = true,
            ["GUILDBANKFRAME_CLOSED"] = true,
            ["ITEM_TEXT_BEGIN"] = true,
            ["ITEM_TEXT_CLOSED"] = true,
            ["GOSSIP_SHOW"] = true,
            ["GOSSIP_CLOSED"] = true,
            ["MERCHANT_SHOW"] = true
        }

        if bagEvents[event] then
            C_Timer.After(0, function() UpdateBagLayout() end)
        end

        hideElements()
    end
end)

---------------------------------------------------------------------------------------------------
-- Total amount of gold
---------------------------------------------------------------------------------------------------
local totalGoldFrame = CreateFrame("Frame")
totalGoldFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
totalGoldFrame:RegisterEvent("PLAYER_MONEY")

local function RecalculateTotalGold()
    if SettingsInitialized then
        zUI_SavedSettings.TotalGold = 0
        local currentRealm = GetRealmName()
        for characterIdentifier, characterSettings in pairs(zUI_SavedSettings) do
            if type(characterSettings) == "table" and characterSettings.Gold then
                local _, realm = strsplit("-", characterIdentifier)
                if realm == currentRealm then
                    zUI_SavedSettings.TotalGold =
                        zUI_SavedSettings.TotalGold + characterSettings.Gold
                end
            end
        end
    end
end

local function updateGold()
    if SettingsInitialized then
        zUI_SavedSettings[PlayerIdentifier].Gold = floor(GetMoney() / 1e4)
        if not zUI_SavedSettings[PlayerIdentifier].GoldAdded then
            zUI_SavedSettings.TotalGold =
                zUI_SavedSettings.TotalGold +
                    zUI_SavedSettings[PlayerIdentifier].Gold
            zUI_SavedSettings[PlayerIdentifier].GoldAdded = true
        end
        RecalculateTotalGold()
    end
end

totalGoldFrame:SetScript("OnEvent", function(self, event, ...)
    if true then
        if event == "PLAYER_ENTERING_WORLD" then
            C_Timer.After(0, function() updateGold() end)
        elseif event == "PLAYER_MONEY" then
            updateGold()
        end
    end
end)
