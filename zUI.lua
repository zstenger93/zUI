---------------------------------------------- CHECKBOXES ON GENERAL PAGE ----------------------------------------------
-- Checkbox for fps display
---@class Checkbox_fpsFrame : CheckButton
Checkbox_fpsFrame = CreateFrame("CheckButton", "zUIfpsFrameCheckbox",
                                GeneralPage, "ChatConfigCheckButtonTemplate")
local checkboxName = Checkbox_fpsFrame:CreateFontString(nil, "OVERLAY",
                                                        "GameFontNormal")
checkboxName:SetPoint("LEFT", Checkbox_fpsFrame, "RIGHT", 20, 0)
checkboxName:SetText("FPS Frame")
Checkbox_fpsFrame:SetPoint("TOPLEFT", 40, -30)
Checkbox_fpsFrame.tooltip = "Show FPS Frame."
Checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)

Checkbox_fpsFrame:SetScript("OnClick", function(self)
    zUI_SavedSettings.fpsFrameSetting = self:GetChecked()
end)

-- Checkbox for XP bar
Checkbox_XPBar = CreateFrame("CheckButton", "zUIXPBarCheckbox", GeneralPage,
                             "ChatConfigCheckButtonTemplate")
local checkboxXPBarName = Checkbox_XPBar:CreateFontString(nil, "OVERLAY",
                                                          "GameFontNormal")
checkboxXPBarName:SetPoint("LEFT", Checkbox_XPBar, "RIGHT", 20, 0)
checkboxXPBarName:SetText("XP Bar")
Checkbox_XPBar:SetPoint("TOPLEFT", 40, -60)
Checkbox_XPBar:SetScript("OnClick", function(self)
    if self:GetChecked() then
        MainStatusTrackingBarContainer:Hide()
    else
        MainStatusTrackingBarContainer:Show()
    end
end)

-- Checkbox for Reputation bar
Checkbox_RepBar = CreateFrame("CheckButton", "zUIRepBarCheckbox", GeneralPage,
                              "ChatConfigCheckButtonTemplate")
local checkboxRepBarName = Checkbox_RepBar:CreateFontString(nil, "OVERLAY",
                                                            "GameFontNormal")
checkboxRepBarName:SetPoint("LEFT", Checkbox_RepBar, "RIGHT", 20, 0)
checkboxRepBarName:SetText("Reputation Bar")
Checkbox_RepBar:SetPoint("TOPLEFT", 40, -90)
Checkbox_RepBar:SetScript("OnClick", function(self)
    if self:GetChecked() then
        SecondaryStatusTrackingBarContainer:Hide()
    else
        SecondaryStatusTrackingBarContainer:Show()
    end
end)

-- Checkbox for Micro Menu
Checkbox_MicroMenu = CreateFrame("CheckButton", "zUIMicroMenuCheckbox",
                                 GeneralPage, "ChatConfigCheckButtonTemplate")
local checkboxMicroMenuName = Checkbox_MicroMenu:CreateFontString(nil,
                                                                  "OVERLAY",
                                                                  "GameFontNormal")
checkboxMicroMenuName:SetPoint("LEFT", Checkbox_MicroMenu, "RIGHT", 20, 0)
checkboxMicroMenuName:SetText("Micro Menu")
Checkbox_MicroMenu:SetPoint("TOPLEFT", 40, -120)
Checkbox_MicroMenu:SetScript("OnClick", function(self)
    if self:GetChecked() then
        MicroMenuContainer:Hide()
    else
        MicroMenuContainer:Show()
    end
end)

-------------------------------------------- CHECKBOXES ON SHOW & HIDE PAGE --------------------------------------------

-- Create the setting for HideObjectiveTrackerSetting
---@class Checkbox_HideObjectiveTracker : CheckButton
Checkbox_HideObjectiveTracker = CreateFrame("CheckButton",
                                            "zUIHideObjectiveTrackerCheckbox",
                                            HideShowPage,
                                            "ChatConfigCheckButtonTemplate")
local checkboxName1 = Checkbox_HideObjectiveTracker:CreateFontString(nil,
                                                                     "OVERLAY",
                                                                     "GameFontNormal")
checkboxName1:SetPoint("LEFT", Checkbox_HideObjectiveTracker, "RIGHT", 20, 0)
checkboxName1:SetText("Objective Tracker")
Checkbox_HideObjectiveTracker:SetPoint("TOPLEFT", 40, -30)
Checkbox_HideObjectiveTracker.tooltip = "Hide Objective Tracker during combat."
Checkbox_HideObjectiveTracker:SetChecked(
    zUI_SavedSettings.HideObjectiveTrackerSetting)

Checkbox_HideObjectiveTracker:SetScript("OnClick",
                                        function(self)
    zUI_SavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
end)

-- Create the setting for HideChatFrameSetting
---@class Checkbox_HideChatFrame : CheckButton
Checkbox_HideChatFrame = CreateFrame("CheckButton", "zUIHideChatFrameCheckbox",
                                     HideShowPage,
                                     "ChatConfigCheckButtonTemplate")
local checkboxName2 = Checkbox_HideChatFrame:CreateFontString(nil, "OVERLAY",
                                                              "GameFontNormal")
checkboxName2:SetPoint("LEFT", Checkbox_HideChatFrame, "RIGHT", 20, 0)
checkboxName2:SetText("Chat Frame")
Checkbox_HideChatFrame:SetPoint("TOPLEFT", 40, -60)
Checkbox_HideChatFrame.tooltip = "Hide Chat Frame during combat."
Checkbox_HideChatFrame:SetChecked(zUI_SavedSettings.HideChatFrameSetting)

Checkbox_HideChatFrame:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideChatFrameSetting = self:GetChecked()
end)

-- Create the setting for HideQuickJoinToastButtonSetting
---@class Checkbox_HideQuickJoinToastButton : CheckButton
Checkbox_HideQuickJoinToastButton = CreateFrame("CheckButton",
                                                "zUIHideQuickJoinToastButtonCheckbox",
                                                HideShowPage,
                                                "ChatConfigCheckButtonTemplate")
local checkboxName3 = Checkbox_HideQuickJoinToastButton:CreateFontString(nil,
                                                                         "OVERLAY",
                                                                         "GameFontNormal")
checkboxName3:SetPoint("LEFT", Checkbox_HideQuickJoinToastButton, "RIGHT", 20, 0)
checkboxName3:SetText("Quick Join Toast Button")
Checkbox_HideQuickJoinToastButton:SetPoint("TOPLEFT", 40, -90)
Checkbox_HideQuickJoinToastButton.tooltip =
    "Hide Quick Join Toast Button during combat."
Checkbox_HideQuickJoinToastButton:SetChecked(
    zUI_SavedSettings.HideQuickJoinToastButtonSetting)

Checkbox_HideQuickJoinToastButton:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideQuickJoinToastButtonSetting = self:GetChecked()
end)

-- Create the setting for HideBagBarSetting
---@class Checkbox_HideBagBar : CheckButton
Checkbox_HideBagBar = CreateFrame("CheckButton", "zUIHideBagBarCheckbox",
                                  HideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxName4 = Checkbox_HideBagBar:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
checkboxName4:SetPoint("LEFT", Checkbox_HideBagBar, "RIGHT", 20, 0)
checkboxName4:SetText("Bag Bar")
Checkbox_HideBagBar:SetPoint("TOPLEFT", 40, -120)
Checkbox_HideBagBar.tooltip = "Hide Bag Bar during combat."
Checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSetting)

Checkbox_HideBagBar:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideBagBarSetting = self:GetChecked()
end)

-- Create the setting for HideHudTooltipSetting
---@class Checkbox_HideHudTooltip : CheckButton
Checkbox_HideHudTooltip = CreateFrame("CheckButton",
                                      "zUIHideHudTooltipCheckbox", HideShowPage,
                                      "ChatConfigCheckButtonTemplate")
local checkboxName5 = Checkbox_HideHudTooltip:CreateFontString(nil, "OVERLAY",
                                                               "GameFontNormal")
checkboxName5:SetPoint("LEFT", Checkbox_HideHudTooltip, "RIGHT", 20, 0)
checkboxName5:SetText("HUD Tooltips")
Checkbox_HideHudTooltip:SetPoint("TOPLEFT", 40, -150)
Checkbox_HideHudTooltip.tooltip = "Hide HUD Tooltips during combat."
Checkbox_HideHudTooltip:SetChecked(zUI_SavedSettings.HideHudTooltipSetting)

Checkbox_HideHudTooltip:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideHudTooltipSetting = self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON ACTIONBARS PAGE --------------------------------------------

-- Create the setting for actionBarMod
---@class Checkbox_actionBarMod : CheckButton
Checkbox_actionBarMod = CreateFrame("CheckButton", "zUIactionBarModCheckbox",
                                    ActionBarsPage,
                                    "ChatConfigCheckButtonTemplate")
local checkboxName6 = Checkbox_actionBarMod:CreateFontString(nil, "OVERLAY",
                                                             "GameFontNormal")
checkboxName6:SetPoint("LEFT", Checkbox_actionBarMod, "RIGHT", 20, 0)
checkboxName6:SetText("Action Bar Mod")
Checkbox_actionBarMod:SetPoint("TOPLEFT", 40, -30)
Checkbox_actionBarMod.tooltip = "Custom Action Bar Mod."
Checkbox_actionBarMod:SetChecked(zUI_SavedSettings.actionBarMod)

Checkbox_actionBarMod:SetScript("OnClick", function(self)
    zUI_SavedSettings.actionBarMod = self:GetChecked()
end)

------------------------------------------------- GAME SETTINGS BELOW -------------------------------------------------

-- Hide the objective tracker when combat starts
local HideObjectiveTracker = CreateFrame("Frame")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_ENABLED")

HideObjectiveTracker:SetScript("OnEvent", function(self, event)
    if ObjectiveTrackerFrame and zUI_SavedSettings.HideObjectiveTrackerSetting then
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
        if not status then zUI:Print(error) end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function()
            GeneralDockManager:Show()
            ChatFrame1:Show()
        end)
        if not status then zUI:Print(error) end
    end
end)

-- Hide side buttons on the chat frame, move the edit box to the top of the chat frame
local HideChatSidebar = CreateFrame("Frame")

HideChatSidebar:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatSidebar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        local status, error = pcall(function()
            ChatFrameMenuButton:Hide()
            QuickJoinToastButton:Hide()
            ChatFrameChannelButton:Hide()
            ChatFrameToggleVoiceDeafenButton:Hide()
            ChatFrameMenuButton:GetParent():Hide()
        end)
        if not status then end
        for i = 1, NUM_CHAT_WINDOWS do
            local chatFrame = _G["ChatFrame" .. i]
            local editBox = _G["ChatFrame" .. i .. "EditBox"]

            editBox:ClearAllPoints()
            editBox:SetPoint("BOTTOMLEFT", chatFrame, "TOPLEFT", 0, 0)
            editBox:SetPoint("BOTTOMRIGHT", chatFrame, "TOPRIGHT", 0, 0)
            _G["ChatFrame" .. i .. "Tab"]:SetAlpha(0)
            _G["ChatFrame" .. i .. "Background"]:SetAlpha(0)
            local chatTab = _G["ChatFrame" .. i .. "Tab"]
            if chatTab then
                chatTab:HookScript("OnClick", function()
                    _G["ChatFrame" .. i .. "Tab"]:SetAlpha(0)
                    _G["ChatFrame" .. i .. "Background"]:SetAlpha(0)
                end)
            end
        end
    end
end)

-- Hide the bag bar when combat starts
local HideBagBar = CreateFrame("Frame")

HideBagBar:RegisterEvent("PLAYER_REGEN_DISABLED")
HideBagBar:RegisterEvent("PLAYER_REGEN_ENABLED")

HideBagBar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" and zUI_SavedSettings.HideBagBarSetting then
        local status, error = pcall(function()
            MainMenuBarBackpackButton:GetParent():Hide()
        end)
        if not status then zUI:Print(error) end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function()
            MainMenuBarBackpackButton:GetParent():Show()
        end)
        if not status then zUI:Print(error) end
    end
end)

-- Hide HUD tooltips when combat starts
local HideHudTooltip = CreateFrame("Frame")
local inCombat = false
HideHudTooltip:RegisterEvent("PLAYER_REGEN_DISABLED")
HideHudTooltip:RegisterEvent("PLAYER_REGEN_ENABLED")

HideHudTooltip:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_DISABLED" and
        zUI_SavedSettings.HideHudTooltipSetting then
        inCombat = true
        GameTooltip:Hide()
    elseif event == "PLAYER_REGEN_ENABLED" then
        inCombat = false
    end
end)

GameTooltip:SetScript("OnShow", function(self)
    if inCombat and zUI_SavedSettings.HideHudTooltipSetting then self:Hide() end
end)

-- Show FPS Frame
local fpsFrame = CreateFrame("Frame", nil, UIParent)
fpsFrame:SetSize(100, 20)
fpsFrame:SetPoint("TOP", 0, -5)

local fpsText = fpsFrame:CreateFontString(nil, "OVERLAY")
fpsText:SetAllPoints()
fpsText:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")

fpsFrame:SetScript("OnUpdate", function(self, elapsed)
    self.timeSinceLastUpdate = (self.timeSinceLastUpdate or 0) + elapsed
    if self.timeSinceLastUpdate >= 1 then
        local fps = GetFramerate()
        fpsText:SetText(string.format("FPS: %.1f", fps))
        self.timeSinceLastUpdate = 0
    end
end)

-- Hide XP bar
if zUI_SavedSettings.XPBar then MainStatusTrackingBarContainer:Hide() end

-- Hide Reputation bar
if zUI_SavedSettings.RepBar then SecondaryStatusTrackingBarContainer:Hide() end

-- Hide Micro Menu
if zUI_SavedSettings.MicroMenu then MicroMenuContainer:Hide() end

-- THIS AIN'T FINISHED YET

-- Custom Action Bar
--[[
    Hide the default border
    Hide the border when the button is pressed
    Hide the border when the button is active
    Hide all textures for empty buttons
    Hide hotkey text for empty buttons

]]
local actionBarMod = CreateFrame("Frame")

actionBarMod:RegisterEvent("ADDON_LOADED")

actionBarMod:SetScript("OnEvent", function()
    if not zUI_SavedSettings.actionBarMod then return end

    local actionBars = {
        "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
        "MultiBarLeftButton", "MultiBarRightButton"
    }

    -- Hide the page number and up + down arrows on the main action bar
    MainMenuBar.ActionBarPageNumber:Hide()

    for _, actionBar in ipairs(actionBars) do
        for i = 1, 12 do
            local button = _G[actionBar .. i]

            button:HookScript("OnUpdate", function(self)
                -- Hide the default border
                local normalTexture = self:GetNormalTexture()
                if normalTexture then normalTexture:Hide() end

                -- Hide the border when the button is pressed
                local pushedTexture = self:GetPushedTexture()
                if pushedTexture then pushedTexture:Hide() end

                -- Hide the border when the button is active
                local checkedTexture = self:GetCheckedTexture()
                if checkedTexture then checkedTexture:Hide() end

                -- Hide all textures for empty buttons
                local regions = {button:GetRegions()}
                for _, region in ipairs(regions) do
                    if region:IsObjectType("Texture") then
                        if not HasAction(button.action) then
                            region:Hide()
                        end
                    end
                end

                -- Hide hotkey text for empty buttons
                if not HasAction(button.action) then
                    local hotkey = _G[button:GetName() .. 'HotKey']
                    if hotkey then hotkey:Hide() end
                end
            end)

            -- preferably need to find a way to make this work on drag, but ain't workin atm

            -- Show the border when a drag operation starts
            -- self:SetScript("OnDragStart", function(self)
            --     self:StartMoving()
            --     if normalTexture then normalTexture:Show() end
            -- end)

            -- -- Hide the border again when a drag operation ends
            -- self:SetScript("OnDragStop", function(self)
            --     self:StopMovingOrSizing()
            --     if normalTexture then normalTexture:Hide() end
            -- end)

            -- they way it's drawn is kinda thrash, but it works. need to find a better way to do this

            -- local borderSize = 2

            -- Create a border for each side of the button
            -- for _, point in ipairs({"TOP", "BOTTOM", "LEFT", "RIGHT"}) do
            --     local border = button:CreateTexture(nil, "OVERLAY")
            --     border:SetDrawLayer("OVERLAY", 7)
            --     border:SetColorTexture(0, 0, 0)
            --     if point == "TOP" then
            --         border:SetPoint("BOTTOMLEFT", button, "TOPLEFT", borderSize,
            --                         -borderSize)
            --         border:SetPoint("BOTTOMRIGHT", button, "TOPRIGHT",
            --                         -borderSize, -borderSize)
            --         border:SetHeight(borderSize)
            --     elseif point == "BOTTOM" then
            --         border:SetPoint("TOPLEFT", button, "BOTTOMLEFT", borderSize,
            --                         borderSize)
            --         border:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT",
            --                         -borderSize, borderSize)
            --         border:SetHeight(borderSize)
            --     elseif point == "LEFT" then
            --         border:SetPoint("TOPRIGHT", button, "TOPLEFT", borderSize,
            --                         -borderSize)
            --         border:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT",
            --                         borderSize, borderSize)
            --         border:SetWidth(borderSize)
            --     else
            --         border:SetPoint("TOPLEFT", button, "TOPRIGHT", -borderSize,
            --                         -borderSize)
            --         border:SetPoint("BOTTOMLEFT", button, "BOTTOMRIGHT",
            --                         -borderSize, borderSize)
            --         border:SetWidth(borderSize)
            --     end
            -- end
        end
    end
end)
