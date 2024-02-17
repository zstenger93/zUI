-------------------------------------------- BUTTON & PAGE CREATION --------------------------------------------
---------------------------------------------------------------------------------------------------
-- Create the menu buttons
---------------------------------------------------------------------------------------------------
GeneralButton = CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
GeneralButton:SetPoint("TOPLEFT", 10, -30)
GeneralButton:SetSize(100, 20)
GeneralButton:SetText("General")
GeneralButton:SetNormalFontObject("GameFontNormal")

HideShowButton = CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
HideShowButton:SetPoint("TOPLEFT", GeneralButton, "BOTTOMLEFT", 0, -10)
HideShowButton:SetSize(100, 20)
HideShowButton:SetText("Hide & Show")
HideShowButton:SetNormalFontObject("GameFontNormal")

ActionBarsButton = CreateFrame("Button", nil, ZUI_Panel,
                               "GameMenuButtonTemplate")
ActionBarsButton:SetPoint("TOPLEFT", HideShowButton, "BOTTOMLEFT", 0, -10)
ActionBarsButton:SetSize(100, 20)
ActionBarsButton:SetText("ActionBars")
ActionBarsButton:SetNormalFontObject("GameFontNormal")

ClassPageButton =
    CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
ClassPageButton:SetPoint("TOPLEFT", ActionBarsButton, "BOTTOMLEFT", 0, -10)
ClassPageButton:SetSize(100, 20)
ClassPageButton:SetText("Class")
ClassPageButton:SetNormalFontObject("GameFontNormal")

ProfilesButton = CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
ProfilesButton:SetPoint("TOPLEFT", ClassPageButton, "BOTTOMLEFT", 0, -10)
ProfilesButton:SetSize(100, 20)
ProfilesButton:SetText("Profiles")
ProfilesButton:SetNormalFontObject("GameFontNormal")

-- Create the pages
---------------------------------------------------------------------------------------------------
-- General
---------------------------------------------------------------------------------------------------
GeneralPage = CreateFrame("Frame", nil, ZUI_Panel)
GeneralPage:SetSize(600, 500)
GeneralPage:SetPoint("TOPLEFT", GeneralButton, "TOPRIGHT", 10, 0)
GeneralPage:Show()

---------------------------------------------------------------------------------------------------
-- Hide & Show
---------------------------------------------------------------------------------------------------
HideShowPage = CreateFrame("Frame", nil, ZUI_Panel)
HideShowPage:SetSize(600, 500)
HideShowPage:SetPoint("TOPLEFT", HideShowButton, "TOPRIGHT", 10, 0)
HideShowPage:Hide()

local HideShowPageMiddleVerticalLine = HideShowPage:CreateTexture(nil,
                                                                  "BACKGROUND")
HideShowPageMiddleVerticalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
HideShowPageMiddleVerticalLine:SetPoint("TOP", HideShowPage, "TOP", -70, 12)
HideShowPageMiddleVerticalLine:SetPoint("BOTTOM", HideShowPage, "BOTTOM", -70,
                                        65)
HideShowPageMiddleVerticalLine:SetWidth(3)

local HideShowPageTopHorizontalLine = HideShowPage:CreateTexture(nil,
                                                                 "BACKGROUND")
HideShowPageTopHorizontalLine:SetHeight(2)
HideShowPageTopHorizontalLine:SetWidth(HideShowPage:GetWidth() - 120)
HideShowPageTopHorizontalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
HideShowPageTopHorizontalLine:SetPoint("TOP", HideShowPage, "TOP", -70, -30)

local HideType1 = HideShowPage:CreateFontString(nil, "OVERLAY",
                                                "GameFontHighlight")
HideType1:SetFontObject("GameFontNormalLarge")
HideType1:SetPoint("TOP", HideShowPage, "TOP", -190, 0)
HideType1:SetText("Hide In Combat")

local HideType2 = HideShowPage:CreateFontString(nil, "OVERLAY",
                                                "GameFontHighlight")
HideType2:SetFontObject("GameFontNormalLarge")
HideType2:SetPoint("TOP", HideShowPage, "TOP", 50, 0)
HideType2:SetText("Hide Permanently")

---------------------------------------------------------------------------------------------------
-- ActionBars
---------------------------------------------------------------------------------------------------
ActionBarsPage = CreateFrame("Frame", nil, ZUI_Panel)
ActionBarsPage:SetSize(600, 500)
ActionBarsPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ActionBarsPage:Hide()

---------------------------------------------------------------------------------------------------
-- Class
---------------------------------------------------------------------------------------------------
ClassPage = CreateFrame("Frame", nil, ZUI_Panel)
ClassPage:SetSize(600, 500)
ClassPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ClassPage:Hide()

---------------------------------------------------------------------------------------------------
-- Profiles
---------------------------------------------------------------------------------------------------
ProfilesPage = CreateFrame("Frame", nil, ZUI_Panel)
ProfilesPage:SetSize(600, 500)
ProfilesPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ProfilesPage:Hide()

local dropdown = CreateFrame("Frame", "ProfileDropdown", ProfilesPage,
                             "UIDropDownMenuTemplate")
dropdown:SetPoint("TOP", ProfilesPage, "TOP", -50, 0)

function CopySettings(sourceCharacter, targetCharacter)
    local sourceSettings = zUI_SavedSettings[sourceCharacter]
    local targetSettings = zUI_SavedSettings[targetCharacter]
    print("in copy settings")
    if type(sourceSettings) == "table" and type(targetSettings) == "table" then
        for setting, value in pairs(sourceSettings) do
            if setting ~= "HonorableKillsOnCharacter" and setting ~= "Gold" and
                setting ~= "GoldAdded" and setting ~= "Class" and setting ~=
                "HonorableKillsAdded" then
                if setting == "CustomRogueEnergyPointsSetting" and
                    sourceSettings["Class"] == "ROGUE" and
                    targetCharacter["Class"] ~= "ROGUE" then
                    -- Skip copying
                elseif setting == "CustomDeathKnightRunesSetting" and
                    sourceSettings["Class"] == "DEATHKNIGHT" and
                    targetCharacter["Class"] ~= "DEATHKNIGHT" then
                    -- Skip copying
                elseif setting == "CustomPaladinPowerBarTextureSetting" and
                    sourceSettings["Class"] == "PALADIN" and
                    targetCharacter["Class"] ~= "PALADIN" then
                    -- Skip copying
                elseif setting == "CustomWarlockSoulShardSetting" and
                    sourceSettings["Class"] == "WARLOCK" and
                    targetCharacter["Class"] ~= "WARLOCK" then
                    -- Skip copying
                elseif setting == "CustomDruidCatFormComboPointsSetting" and
                    sourceSettings["Class"] == "DRUID" and
                    targetCharacter["Class"] ~= "DRUID" then
                    -- Skip copying
                else
                    targetSettings[setting] = value
                end
            end
        end
    end
end

local function InitializeDropdown(self, level)
    for playerIdentifier, value in pairs(zUI_SavedSettings) do
        if type(value) == "table" then
            local selectedPlayerIdentifier = playerIdentifier
            local info = UIDropDownMenu_CreateInfo()
            info.text = selectedPlayerIdentifier
            info.func = function()
                zUI_SavedSettings[PlayerIdentifier].selectedProfile =
                    selectedPlayerIdentifier
                CopySettings(selectedPlayerIdentifier, PlayerIdentifier)
                UIDropDownMenu_SetText(dropdown, selectedPlayerIdentifier)
            end
            info.checked = (playerIdentifier ==
                               zUI_SavedSettings[PlayerIdentifier]
                                   .selectedProfile)
            UIDropDownMenu_AddButton(info, level)
        end
    end
    C_Timer.After(2, function()
        local selectedProfile = zUI_SavedSettings[PlayerIdentifier]
                                    .selectedProfile
        if selectedProfile then
            UIDropDownMenu_SetText(dropdown, selectedProfile)
        else
            UIDropDownMenu_SetText(dropdown, "Select a Profile")
        end
    end)

end

UIDropDownMenu_Initialize(dropdown, InitializeDropdown)
UIDropDownMenu_SetWidth(dropdown, 200)
UIDropDownMenu_SetButtonWidth(dropdown, 224)
UIDropDownMenu_JustifyText(dropdown, "LEFT")
UIDropDownMenu_SetText(dropdown,
                       zUI_SavedSettings[PlayerIdentifier].selectedProfile)
---------------------------------------------------------------------------------------------------
-- Set which page is shown when a button is clicked
---------------------------------------------------------------------------------------------------
GeneralButton:SetScript("OnClick", function()
    GeneralPage:Show()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
    ProfilesPage:Hide()
    ClassPage:Hide()
end)

HideShowButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Show()
    ActionBarsPage:Hide()
    ProfilesPage:Hide()
    ClassPage:Hide()
end)

ActionBarsButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Show()
    ProfilesPage:Hide()
    ClassPage:Hide()
end)

ClassPageButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
    ProfilesPage:Hide()
    ClassPage:Show()
end)

ProfilesButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
    ClassPage:Hide()
    ProfilesPage:Show()
end)
