---------------------------------------------- CHECKBOXES ON GENERAL PAGE ----------------------------------------------
-- Checkbox for fps display
---@class Checkbox_fpsFrame : CheckButton
Checkbox_fpsFrame = CreateFrame("CheckButton", "zUIfpsFrameCheckbox",
                                GeneralPage, "ChatConfigCheckButtonTemplate")
local checkboxName = Checkbox_fpsFrame:CreateFontString(nil, "OVERLAY",
                                                        "GameFontNormal")
checkboxName:SetPoint("LEFT", Checkbox_fpsFrame, "RIGHT", 20, 0)
checkboxName:SetText("Display the FPS")
Checkbox_fpsFrame:SetPoint("TOPLEFT", 20, -30)
Checkbox_fpsFrame.tooltip = "Show FPS Frame at the top-middle of the screen."
Checkbox_fpsFrame:SetChecked(zUI_SavedSettings.fpsFrameSetting)

Checkbox_fpsFrame:SetScript("OnClick", function(self)
    zUI_SavedSettings.fpsFrameSetting = self:GetChecked()
end)

-- Checkbox for chat frame edit box
---@class Checkbox_MoveChatFrameEditBox : CheckButton
Checkbox_MoveChatFrameEditBox = CreateFrame("CheckButton",
                                            "zUIMoveChatFrameEditBoxCheckbox",
                                            GeneralPage,
                                            "ChatConfigCheckButtonTemplate")
local checkboxName8 = Checkbox_MoveChatFrameEditBox:CreateFontString(nil,
                                                                     "OVERLAY",
                                                                     "GameFontNormal")
checkboxName8:SetPoint("LEFT", Checkbox_MoveChatFrameEditBox, "RIGHT", 20, 0)
checkboxName8:SetText("Move Chat Edit Box")
Checkbox_MoveChatFrameEditBox:SetPoint("TOPLEFT", 20, -60)
Checkbox_MoveChatFrameEditBox.tooltip =
    "Move the chat frame edit box to the top of the chat frame."
Checkbox_MoveChatFrameEditBox:SetChecked(
    zUI_SavedSettings.MoveChatFrameEditBoxSetting)

Checkbox_MoveChatFrameEditBox:SetScript("OnClick",
                                        function(self)
    zUI_SavedSettings.MoveChatFrameEditBoxSetting = self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON SHOW & HIDE PAGE --------------------------------------------

-- Create the setting for HideObjectiveTrackerSetting
---@class Checkbox_HideObjectiveTrackerInCombat : CheckButton
Checkbox_HideObjectiveTrackerInCombat = CreateFrame("CheckButton",
                                                    "zUIHideObjectiveTrackerCheckbox",
                                                    HideShowPage,
                                                    "ChatConfigCheckButtonTemplate")
local checkboxName1 = Checkbox_HideObjectiveTrackerInCombat:CreateFontString(
                          nil, "OVERLAY", "GameFontNormal")
checkboxName1:SetPoint("LEFT", Checkbox_HideObjectiveTrackerInCombat, "RIGHT",
                       20, 0)
checkboxName1:SetText("Objective Tracker")
Checkbox_HideObjectiveTrackerInCombat:SetPoint("TOPLEFT", 20, -40)
Checkbox_HideObjectiveTrackerInCombat.tooltip =
    "Hide Objective Tracker during combat."
Checkbox_HideObjectiveTrackerInCombat:SetChecked(
    zUI_SavedSettings.HideObjectiveTrackerSetting)

Checkbox_HideObjectiveTrackerInCombat:SetScript("OnClick",
                                                function(self)
    zUI_SavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
end)

-- Create the setting for HideChatFrameSetting
---@class Checkbox_HideChatFrameInCombat : CheckButton
Checkbox_HideChatFrameInCombat = CreateFrame("CheckButton",
                                             "zUIHideChatFrameCheckbox",
                                             HideShowPage,
                                             "ChatConfigCheckButtonTemplate")
local checkboxName2 = Checkbox_HideChatFrameInCombat:CreateFontString(nil,
                                                                      "OVERLAY",
                                                                      "GameFontNormal")
checkboxName2:SetPoint("LEFT", Checkbox_HideChatFrameInCombat, "RIGHT", 20, 0)
checkboxName2:SetText("Chat Frame")
Checkbox_HideChatFrameInCombat:SetPoint("TOPLEFT", 20, -70)
Checkbox_HideChatFrameInCombat.tooltip = "Hide Chat Frame during combat."
Checkbox_HideChatFrameInCombat:SetChecked(zUI_SavedSettings.HideChatFrameSetting)

Checkbox_HideChatFrameInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideChatFrameSetting = self:GetChecked()
end)

-- Create the setting for HideBagBarSetting
---@class Checkbox_HideBagBarInCombat : CheckButton
Checkbox_HideBagBarInCombat = CreateFrame("CheckButton",
                                          "zUIHideBagBarCheckbox", HideShowPage,
                                          "ChatConfigCheckButtonTemplate")
local checkboxName4 = Checkbox_HideBagBarInCombat:CreateFontString(nil,
                                                                   "OVERLAY",
                                                                   "GameFontNormal")
checkboxName4:SetPoint("LEFT", Checkbox_HideBagBarInCombat, "RIGHT", 20, 0)
checkboxName4:SetText("Bag Bar")
Checkbox_HideBagBarInCombat:SetPoint("TOPLEFT", 20, -100)
Checkbox_HideBagBarInCombat.tooltip = "Hide Bag Bar during combat."
Checkbox_HideBagBarInCombat:SetChecked(zUI_SavedSettings.HideBagBarSetting)

Checkbox_HideBagBarInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideBagBarSetting = self:GetChecked()
end)

-- Create the setting for HideHudTooltipSetting
---@class Checkbox_HideHudTooltipInCombat : CheckButton
Checkbox_HideHudTooltipInCombat = CreateFrame("CheckButton",
                                              "zUIHideHudTooltipCheckbox",
                                              HideShowPage,
                                              "ChatConfigCheckButtonTemplate")
local checkboxName5 = Checkbox_HideHudTooltipInCombat:CreateFontString(nil,
                                                                       "OVERLAY",
                                                                       "GameFontNormal")
checkboxName5:SetPoint("LEFT", Checkbox_HideHudTooltipInCombat, "RIGHT", 20, 0)
checkboxName5:SetText("HUD Tooltips")
Checkbox_HideHudTooltipInCombat:SetPoint("TOPLEFT", 20, -130)
Checkbox_HideHudTooltipInCombat.tooltip = "Hide HUD Tooltips during combat."
Checkbox_HideHudTooltipInCombat:SetChecked(
    zUI_SavedSettings.HideHudTooltipSetting)

Checkbox_HideHudTooltipInCombat:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideHudTooltipSetting = self:GetChecked()
end)

-- Checkbox for XP bar
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
    zUI_SavedSettings.XPBarSetting = self:GetChecked()
end)

-- Checkbox for Reputation bar
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
    zUI_SavedSettings.RepBarSetting = self:GetChecked()
end)

-- Checkbox for Micro Menu
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
    zUI_SavedSettings.MicroMenuSetting = self:GetChecked()
end)

-- Checkbox for Chat Sidebar
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
    zUI_SavedSettings.HideChatSidebarSetting = self:GetChecked()
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
Checkbox_HideQuickJoinToastButton:SetPoint("TOPLEFT", 250, -160)
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
local checkboxName6 = Checkbox_HideBagBar:CreateFontString(nil, "OVERLAY",
                                                           "GameFontNormal")
checkboxName6:SetPoint("LEFT", Checkbox_HideBagBar, "RIGHT", 20, 0)
checkboxName6:SetText("Bag Bar")
Checkbox_HideBagBar:SetPoint("TOPLEFT", 250, -190)
Checkbox_HideBagBar.tooltip = "Hide Bag Bar permanently."
Checkbox_HideBagBar:SetChecked(zUI_SavedSettings.HideBagBarSettingPerm)

Checkbox_HideBagBar:SetScript("OnClick", function(self)
    zUI_SavedSettings.HideBagBarSettingPerm = self:GetChecked()
end)

-------------------------------------------- CHECKBOXES ON ACTIONBARS PAGE --------------------------------------------

-- Create the setting for actionBarMod
---@class Checkbox_actionBarMod : CheckButton
Checkbox_actionBarMod = CreateFrame("CheckButton", "zUIactionBarModCheckbox",
                                    ActionBarsPage,
                                    "ChatConfigCheckButtonTemplate")
local checkboxName7 = Checkbox_actionBarMod:CreateFontString(nil, "OVERLAY",
                                                             "GameFontNormal")
checkboxName7:SetPoint("LEFT", Checkbox_actionBarMod, "RIGHT", 20, 0)
checkboxName7:SetText("Action Bar Mod")
Checkbox_actionBarMod:SetPoint("TOPLEFT", 20, 30)
Checkbox_actionBarMod.tooltip = "Custom Action Bar Mod."
Checkbox_actionBarMod:SetChecked(zUI_SavedSettings.actionBarModSetting)

Checkbox_actionBarMod:SetScript("OnClick", function(self)
    zUI_SavedSettings.actionBarModSetting = self:GetChecked()
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

-- Hide side buttons and their background on the chat frame
local HideChatSidebar = CreateFrame("Frame")

HideChatSidebar:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatSidebar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings.HideChatSidebarSetting then
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

-- Hide the original chat frame style
local HideChatFrameStyle = CreateFrame("Frame")

HideChatFrameStyle:RegisterEvent("PLAYER_ENTERING_WORLD")

HideChatFrameStyle:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        for i = 1, NUM_CHAT_WINDOWS do
            local chatFrame = _G["ChatFrame" .. i]
            local chatTab = _G["ChatFrame" .. i .. "Tab"]

            _G["ChatFrame" .. i .. "Tab"].Left:Hide()
            _G["ChatFrame" .. i .. "Tab"].Right:Hide()
            _G["ChatFrame" .. i .. "Tab"].Middle:Hide()
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

            -- Hook both the chat frame and tab into all the events
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

-- Move the chat frame edit box to the top of the chat frame
local MoveChatFrameEditBox = CreateFrame("Frame")

MoveChatFrameEditBox:RegisterEvent("PLAYER_ENTERING_WORLD")

MoveChatFrameEditBox:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings.MoveChatFrameEditBoxSetting then
        for i = 1, NUM_CHAT_WINDOWS do
            local chatFrame = _G["ChatFrame" .. i]
            local editBox = _G["ChatFrame" .. i .. "EditBox"]

            editBox:ClearAllPoints()
            editBox:SetPoint("BOTTOMLEFT", chatFrame, "TOPLEFT", 0, 0)
            editBox:SetPoint("BOTTOMRIGHT", chatFrame, "TOPRIGHT", 0, 0)
        end
    end
end)

-- Hide the quick join toast button when combat starts
local HideQuickJoinToastButton = CreateFrame("Frame")

HideQuickJoinToastButton:RegisterEvent("PLAYER_ENTERING_WORLD")

HideQuickJoinToastButton:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" and
        zUI_SavedSettings.HideQuickJoinToastButtonSetting then
        local status, error = pcall(function()
            QuickJoinToastButton:Hide()
        end)
        if not status then zUI:Print(error) end
    else
        local status, error = pcall(function()
            QuickJoinToastButton:Show()
        end)
        if not status then zUI:Print(error) end
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
local xpBarFrame = CreateFrame("Frame")
xpBarFrame:RegisterEvent("ADDON_LOADED")
xpBarFrame:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        if zUI_SavedSettings.XPBarSetting then
            MainStatusTrackingBarContainer:Hide()
        else
            MainStatusTrackingBarContainer:Show()
        end
    end
end)

-- Hide Reputation bar
local repBarFrame = CreateFrame("Frame")
repBarFrame:RegisterEvent("ADDON_LOADED")
repBarFrame:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        if zUI_SavedSettings.RepBarSetting then
            SecondaryStatusTrackingBarContainer:Hide()
        else
            SecondaryStatusTrackingBarContainer:Show()
        end
    end
end)

-- Hide Micro Menu
local microMenuFrame = CreateFrame("Frame")
microMenuFrame:RegisterEvent("ADDON_LOADED")
microMenuFrame:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        if zUI_SavedSettings.MicroMenuSetting then
            MicroMenuContainer:Hide()
        else
            MicroMenuContainer:Show()
        end
    end
end)

-- Hide Bag Bar
local bagBarFrame = CreateFrame("Frame")
bagBarFrame:RegisterEvent("ADDON_LOADED")

bagBarFrame:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "zUI" then
        if zUI_SavedSettings.HideBagBarSettingPerm then
            MainMenuBarBackpackButton:GetParent():Hide()
        else
            MainMenuBarBackpackButton:GetParent():Show()
        end
    end
end)

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
    if not zUI_SavedSettings.actionBarModSetting then return end

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
