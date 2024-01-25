---------------------------------------------- CHECKBOXES ON GENERAL PAGE ----------------------------------------------
-- Create the setting for fpsFrameSetting
checkbox_fpsFrame = CreateFrame("CheckButton", "zUIfpsFrameCheckbox",
                                generalPage, "ChatConfigCheckButtonTemplate")
local checkboxName = checkbox_fpsFrame:CreateFontString(nil, "OVERLAY",
                                                        "GameFontNormal")
checkboxName:SetPoint("LEFT", checkbox_fpsFrame, "RIGHT", 20, 0)
checkboxName:SetText("FPS Frame")
checkbox_fpsFrame:SetPoint("TOPLEFT", 40, -30)
checkbox_fpsFrame.tooltip = "Show FPS Frame."
checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)

checkbox_fpsFrame:SetScript("OnClick", function(self)
    zUI_SavedSettings.fpsFrameSetting = self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON SHOW & HIDE PAGE --------------------------------------------

-- Create the setting for HideObjectiveTrackerSetting
checkbox_HideObjectiveTracker = CreateFrame("CheckButton",
                                            "zUIHideObjectiveTrackerCheckbox",
                                            hideShowPage,
                                            "ChatConfigCheckButtonTemplate")
local checkboxName = checkbox_HideObjectiveTracker:CreateFontString(nil,
                                                                    "OVERLAY",
                                                                    "GameFontNormal")
checkboxName:SetPoint("LEFT", checkbox_HideObjectiveTracker, "RIGHT", 20, 0)
checkboxName:SetText("Objective Tracker")
checkbox_HideObjectiveTracker:SetPoint("TOPLEFT", 40, -30)
checkbox_HideObjectiveTracker.tooltip = "Hide Objective Tracker during combat."
checkbox_HideObjectiveTracker:SetChecked(
    zUI_SavedSettings.HideObjectiveTrackerSetting)

checkbox_HideObjectiveTracker:SetScript("OnClick",
                                        function(self)
    zUI_SavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
end)

-- Create the setting for HideChatFrameSetting
checkbox_HideChatFrame = CreateFrame("CheckButton", "zUIHideChatFrameCheckbox",
                                     hideShowPage,
                                     "ChatConfigCheckButtonTemplate")
local checkboxName2 = checkbox_HideChatFrame:CreateFontString(nil, "OVERLAY",
                                                              "GameFontNormal")
checkboxName2:SetPoint("LEFT", checkbox_HideChatFrame, "RIGHT", 20, 0)
checkboxName2:SetText("Chat Frame")
checkbox_HideChatFrame:SetPoint("TOPLEFT", 40, -60)
checkbox_HideChatFrame.tooltip = "Hide Chat Frame during combat."
checkbox_HideChatFrame:SetChecked(zUI_SavedSettings.HideChatFrameSetting)

checkbox_HideChatFrame:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideChatFrameSetting = self:GetChecked()
end)

-- Create the setting for HideQuickJoinToastButtonSetting
checkbox_HideQuickJoinToastButton = CreateFrame("CheckButton",
                                                "zUIHideQuickJoinToastButtonCheckbox",
                                                hideShowPage,
                                                "ChatConfigCheckButtonTemplate")
local checkboxName3 = checkbox_HideQuickJoinToastButton:CreateFontString(nil,
                                                                         "OVERLAY",
                                                                         "GameFontNormal")
checkboxName3:SetPoint("LEFT", checkbox_HideQuickJoinToastButton, "RIGHT", 20, 0)
checkboxName3:SetText("Quick Join Toast Button")
checkbox_HideQuickJoinToastButton:SetPoint("TOPLEFT", 40, -90)
checkbox_HideQuickJoinToastButton.tooltip =
    "Hide Quick Join Toast Button during combat."
checkbox_HideQuickJoinToastButton:SetChecked(
    zUI_SavedSettings.HideQuickJoinToastButtonSetting)

checkbox_HideQuickJoinToastButton:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideQuickJoinToastButtonSetting = self:GetChecked()
end)

-- Create the setting for HideBagBarSetting
checkbox_HideBagBar = CreateFrame("CheckButton", "zUIHideBagBarCheckbox",
                                  hideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxName4 = checkbox_HideBagBar:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
checkboxName4:SetPoint("LEFT", checkbox_HideBagBar, "RIGHT", 20, 0)
checkboxName4:SetText("Bag Bar")
checkbox_HideBagBar:SetPoint("TOPLEFT", 40, -120)
checkbox_HideBagBar.tooltip = "Hide Bag Bar during combat."
checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSetting)

checkbox_HideBagBar:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideBagBarSetting = self:GetChecked()
end)

-- Create the setting for HideHudTooltipSetting
checkbox_HideHudTooltip = CreateFrame("CheckButton",
                                      "zUIHideHudTooltipCheckbox", hideShowPage,
                                      "ChatConfigCheckButtonTemplate")
local checkboxName5 = checkbox_HideHudTooltip:CreateFontString(nil, "OVERLAY",
                                                               "GameFontNormal")
checkboxName5:SetPoint("LEFT", checkbox_HideHudTooltip, "RIGHT", 20, 0)
checkboxName5:SetText("HUD Tooltips")
checkbox_HideHudTooltip:SetPoint("TOPLEFT", 40, -150)
checkbox_HideHudTooltip.tooltip = "Hide HUD Tooltips during combat."
checkbox_HideHudTooltip:SetChecked(zUI_SavedSettings.HideHudTooltipSetting)

checkbox_HideHudTooltip:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideHudTooltipSetting = self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON ACTIONBARS PAGE --------------------------------------------

-- Create the setting for HideMultiBarRightSetting

checkbox_HideMultiBarRight = CreateFrame("CheckButton",
                                         "zUIHideMultiBarRightCheckbox",
                                         actionBarsPage,
                                         "ChatConfigCheckButtonTemplate")
local checkboxName5 = checkbox_HideMultiBarRight:CreateFontString(nil,
                                                                  "OVERLAY",
                                                                  "GameFontNormal")
checkboxName5:SetPoint("LEFT", checkbox_HideMultiBarRight, "RIGHT", 20, 0)
checkboxName5:SetText("MultiBarRight")
checkbox_HideMultiBarRight:SetPoint("TOPLEFT", 40, -30)
checkbox_HideMultiBarRight.tooltip = "Hide MultiBarRight during combat."
checkbox_HideMultiBarRight:SetChecked(zUI_SavedSettings.HideMultiBarRightSetting)

checkbox_HideMultiBarRight:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideMultiBarRightSetting = self:GetChecked()
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

-- Hide the CHat sidebar
local HideChatSidebar = CreateFrame("Frame")

HideChatSidebar:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatSidebar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        local status, error = pcall(function()
            ChatFrameMenuButton:Hide()
            QuickJoinToastButton:Hide()
            ChatFrameChannelButton:Hide()
            ChatFrameToggleVoiceDeafenButton:Hide()
            for i = 1, NUM_CHAT_WINDOWS do
                _G["ChatFrame" .. i .. "TabLeft"]:SetTexture(nil)
                _G["ChatFrame" .. i .. "TabMiddle"]:SetTexture(nil)
                _G["ChatFrame" .. i .. "TabRight"]:SetTexture(nil)
            end
        end)
        if not status then end
        for i = 1, NUM_CHAT_WINDOWS do
            for i = 1, NUM_CHAT_WINDOWS do
                local chatFrame = _G["ChatFrame" .. i]
                local editBox = _G["ChatFrame" .. i .. "EditBox"]
                chatFrame:ClearAllPoints()
                chatFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -20,
                                   -20)
                chatFrame:SetWidth(500)
                chatFrame:SetHeight(300)
                editBox:ClearAllPoints()
                editBox:SetPoint("BOTTOMLEFT", chatFrame, "TOPLEFT", 0, 0)
                editBox:SetPoint("BOTTOMRIGHT", chatFrame, "TOPRIGHT", 0, 0)
                _G["ChatFrame" .. i .. "Tab"]:SetAlpha(0)
            end
            _G["ChatFrame" .. i .. "Tab"]:SetAlpha(0)
            local editBox = _G["ChatFrame" .. i .. "EditBox"]
            editBox:ClearAllPoints()
            editBox:SetPoint("BOTTOMLEFT", _G["ChatFrame" .. i], "TOPLEFT", -10,
                             0)
            editBox:SetPoint("BOTTOMRIGHT", _G["ChatFrame" .. i], "TOPRIGHT",
                             10, 0)
        end
        DEFAULT_CHAT_FRAME:ClearAllPoints()
        DEFAULT_CHAT_FRAME:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -10,
                                    -10)
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




-- THIS AIN'T FINISHED YET

-- Custom Action Bar Borders
local frame = CreateFrame("Frame")
local fadeTicker = nil

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(self, event, addonName)
    local actionBars = {
        "ActionButton",
        "MultiBarBottomLeftButton",
        "MultiBarBottomRightButton",
        "MultiBarLeftButton",
        "MultiBarRightButton"
    }

    local borderSize = 2

    for _, actionBar in ipairs(actionBars) do
        for i = 1, 12 do
            local button = _G[actionBar .. i]
            button:SetFrameLevel(button:GetFrameLevel() + 1)

            -- Create a border for each side of the button
            for _, point in ipairs({"TOP", "BOTTOM", "LEFT", "RIGHT"}) do
                local border = button:CreateTexture(nil, "OVERLAY")
                border:SetDrawLayer("OVERLAY", 7)
                border:SetColorTexture(0, 0, 0)
                if point == "TOP" then
                    border:SetPoint("BOTTOMLEFT", button, "TOPLEFT", -borderSize, 0)
                    border:SetPoint("BOTTOMRIGHT", button, "TOPRIGHT", borderSize, 0)
                    border:SetHeight(borderSize)
                elseif point == "BOTTOM" then
                    border:SetPoint("TOPLEFT", button, "BOTTOMLEFT", -borderSize, 0)
                    border:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT", borderSize, 0)
                    border:SetHeight(borderSize)
                elseif point == "LEFT" then
                    border:SetPoint("TOPRIGHT", button, "TOPLEFT", 0, borderSize)
                    border:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT", 0, -borderSize)
                    border:SetWidth(borderSize)
                else
                    border:SetPoint("TOPLEFT", button, "TOPRIGHT", 0, borderSize)
                    border:SetPoint("BOTTOMLEFT", button, "BOTTOMRIGHT", 0, -borderSize)
                    border:SetWidth(borderSize)
                end
            end
        end
    end
end)
