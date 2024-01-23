zUI = { }
zUISavedSettings = { }


-------------------------------------------- CHECKBOXES ON SHOW & HIDE PAGE --------------------------------------------


-- Create the setting for HideObjectiveTrackerSetting
checkbox_HideObjectiveTracker = CreateFrame("CheckButton", "zUIHideObjectiveTrackerCheckbox", hideShowPage, "ChatConfigCheckButtonTemplate") -- Create the checkbox on hideShowPage
local checkboxName = checkbox_HideObjectiveTracker:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName:SetPoint("LEFT", checkbox_HideObjectiveTracker, "RIGHT", 20, 0)
checkboxName:SetText("Objective Tracker")
checkbox_HideObjectiveTracker:SetPoint("TOPLEFT", 40, -30)
checkbox_HideObjectiveTracker.tooltip = "Hide Objective Tracker during combat."
checkbox_HideObjectiveTracker:SetChecked(zUISavedSettings.HideObjectiveTrackerSetting)

checkbox_HideObjectiveTracker:SetScript("OnClick", function(self)
    zUISavedSettings.HideObjectiveTrackerSetting = self:GetChecked()
end)

-- Create the setting for HideChatFrameSetting
checkbox_HideChatFrame = CreateFrame("CheckButton", "zUIHideChatFrameCheckbox", hideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxName2 = checkbox_HideChatFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName2:SetPoint("LEFT", checkbox_HideChatFrame, "RIGHT", 20, 0)
checkboxName2:SetText("Chat Frame")
checkbox_HideChatFrame:SetPoint("TOPLEFT", 40, -60)
checkbox_HideChatFrame.tooltip = "Hide Chat Frame during combat."
checkbox_HideChatFrame:SetChecked(zUISavedSettings.HideChatFrameSetting)

checkbox_HideChatFrame:SetScript("OnClick", function(self)
    zUISavedSettings.HideChatFrameSetting = self:GetChecked()
end)

-- Create the setting for HideQuickJoinToastButtonSetting
checkbox_HideQuickJoinToastButton = CreateFrame("CheckButton", "zUIHideQuickJoinToastButtonCheckbox", hideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxName3 = checkbox_HideQuickJoinToastButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName3:SetPoint("LEFT", checkbox_HideQuickJoinToastButton, "RIGHT", 20, 0)
checkboxName3:SetText("Quick Join Toast Button")
checkbox_HideQuickJoinToastButton:SetPoint("TOPLEFT", 40, -90)
checkbox_HideQuickJoinToastButton.tooltip = "Hide Quick Join Toast Button during combat."
checkbox_HideQuickJoinToastButton:SetChecked(zUISavedSettings.HideQuickJoinToastButtonSetting)

checkbox_HideQuickJoinToastButton:SetScript("OnClick", function(self)
    zUISavedSettings.HideQuickJoinToastButtonSetting = self:GetChecked()
end)

-- Create the setting for HideBagBarSetting
checkbox_HideBagBar = CreateFrame("CheckButton", "zUIHideBagBarCheckbox", hideShowPage, "ChatConfigCheckButtonTemplate")
local checkboxName4 = checkbox_HideBagBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName4:SetPoint("LEFT", checkbox_HideBagBar, "RIGHT", 20, 0)
checkboxName4:SetText("Bag Bar")
checkbox_HideBagBar:SetPoint("TOPLEFT", 40, -120)
checkbox_HideBagBar.tooltip = "Hide Bag Bar during combat."
checkbox_HideBagBar:SetChecked(zUISavedSettings.HideBagBarSetting)

checkbox_HideBagBar:SetScript("OnClick", function(self)
    zUISavedSettings.HideBagBarSetting = self:GetChecked()
end)


-------------------------------------------- CHECKBOXES ON ACTIONBARS PAGE --------------------------------------------


-- Create the setting for HideMultiBarRightSetting

checkbox_HideMultiBarRight = CreateFrame("CheckButton", "zUIHideMultiBarRightCheckbox", actionBarsPage, "ChatConfigCheckButtonTemplate")
local checkboxName5 = checkbox_HideMultiBarRight:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkboxName5:SetPoint("LEFT", checkbox_HideMultiBarRight, "RIGHT", 20, 0)
checkboxName5:SetText("MultiBarRight")
checkbox_HideMultiBarRight:SetPoint("TOPLEFT", 40, -30)
checkbox_HideMultiBarRight.tooltip = "Hide MultiBarRight during combat."
checkbox_HideMultiBarRight:SetChecked(zUISavedSettings.HideMultiBarRightSetting)

checkbox_HideMultiBarRight:SetScript("OnClick", function(self)
    zUISavedSettings.HideMultiBarRightSetting = self:GetChecked()
end)

-- Handle the OnClick event for the menu buttons
generalButton:SetScript("OnClick", function()
    generalPage:Show()
    hideShowPage:Hide()
    actionBarsPage:Hide()
end)

hideShowButton:SetScript("OnClick", function()
    generalPage:Hide()
    hideShowPage:Show()
    actionBarsPage:Hide()
end)

actionBarsButton:SetScript("OnClick", function()
    actionBarsPage:Show()
    generalPage:Hide()
    hideShowPage:Hide()
end)


-------------------------------------------- GAME SETTINGS BELOW --------------------------------------------


-- Hide the objective tracker when combat starts
local HideObjectiveTracker = CreateFrame("Frame")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_ENABLED")

HideObjectiveTracker:SetScript("OnEvent", function(self, event)
    if ObjectiveTrackerFrame and zUISavedSettings.HideObjectiveTrackerSetting then
        if event == "PLAYER_REGEN_DISABLED" then
            local status, error = pcall(function() ObjectiveTrackerFrame:Hide() end)
            if not status then
                zUI:Print(error)
            end
        elseif event == "PLAYER_REGEN_ENABLED" then
            local status, error = pcall(function() ObjectiveTrackerFrame:Show() end)
            if not status then
                zUI:Print(error)
            end
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
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            GeneralDockManager:Show()
            ChatFrame1:Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide the Quick Join Toast Button 
local HideSocialButton = CreateFrame("Frame")

HideSocialButton:RegisterEvent("PLAYER_LOGIN")

HideSocialButton:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        local status, error = pcall(function() 
            QuickJoinToastButton:Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide the bag bar when combat starts
local HideBagBar = CreateFrame("Frame")

HideBagBar:RegisterEvent("PLAYER_REGEN_DISABLED")
HideBagBar:RegisterEvent("PLAYER_REGEN_ENABLED")

HideBagBar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:GetParent():Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:GetParent():Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide MultiBarRight(action bar 4 when combat starts
local frame = CreateFrame("Frame")
local fadeTicker = nil

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(self, event, addonName)
    -- MultiBarRight:Show()
   
end)
