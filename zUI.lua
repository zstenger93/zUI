zUI = { }

function zUI:Print(debugMsg)
    DEFAULT_CHAT_FRAME:AddMessage("Error: " .. debugMsg)
end

-- Hide the objective tracker when combat starts
local HideObjectiveTracker = CreateFrame("Frame")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
HideObjectiveTracker:RegisterEvent("PLAYER_REGEN_ENABLED")

HideObjectiveTracker:SetScript("OnEvent", function(self, event)
    if ObjectiveTrackerFrame then
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
    MultiBarRight:Show()
    if event == "ADDON_LOADED" and addonName == "zUI" then
        local barFrame = CreateFrame("Frame", nil, UIParent)
        barFrame:SetAllPoints(MultiBarRight)
        barFrame:EnableMouse(true)
        
        local function fadeOut()
            local alpha = MultiBarRight:GetAlpha()
            local newAlpha = alpha - 0.01
            if newAlpha < 0.01 then
                newAlpha = 0.01
                if fadeTicker then
                    fadeTicker:Cancel()
                    fadeTicker = nil
                end
            end
            MultiBarRight:SetAlpha(newAlpha)
        end

        barFrame:SetScript("OnEnter", function(self)
            if fadeTicker then
                fadeTicker:Cancel()
                fadeTicker = nil
            end
            MultiBarRight:SetAlpha(1)
        end)

        barFrame:SetScript("OnLeave", function(self)
            if fadeTicker then
                fadeTicker:Cancel()
            end
            fadeTicker = C_Timer.NewTicker(0.015, fadeOut, 100)
        end)

        MultiBarRight:Show()
        MultiBarRight:SetAlpha(0.01)
    end
end)