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

-- Hide the bag icon when combat starts
local HideBagIcon = CreateFrame("Frame")

HideBagIcon:RegisterEvent("PLAYER_REGEN_DISABLED")
HideBagIcon:RegisterEvent("PLAYER_REGEN_ENABLED")

HideBagIcon:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            MainMenuBarBackpackButton:Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)

-- Hide the main menu bar when combat starts
local HideMenuBar = CreateFrame("Frame")

HideMenuBar:RegisterEvent("PLAYER_REGEN_DISABLED")
HideMenuBar:RegisterEvent("PLAYER_REGEN_ENABLED")

HideMenuBar:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_REGEN_DISABLED" then
        local status, error = pcall(function() 
            MainMenuBar:Hide()
        end)
        if not status then
            zUI:Print(error)
        end
    elseif event == "PLAYER_REGEN_ENABLED" then
        local status, error = pcall(function() 
            MainMenuBar:Show()
        end)
        if not status then
            zUI:Print(error)
        end
    end
end)



