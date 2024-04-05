function RegisterEventsToFrame(frame, ...)
    local events = {...}

    for _, event in ipairs(events) do
        if not frame:IsEventRegistered(event) then
            frame:RegisterEvent(event)
        end
    end
end

---------------------------------------------------------------------------------------------------
-- Hide the objective tracker when combat starts
---------------------------------------------------------------------------------------------------
if rawget(_G, "HideObjectiveTracker") == nil then
    _G.HideObjectiveTracker = CreateFrame("Frame")
else
    print("this object already exist", HideObjectiveTracker:GetName())
end

local HideObjectiveTracker = _G.HideObjectiveTracker

RegisterEventsToFrame(HideObjectiveTracker, "PLAYER_REGEN_DISABLED",
                      "PLAYER_REGEN_ENABLED")

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
if rawget(_G, "HideChatFrameObject") == nil then
    _G.HideChatFrameObject = CreateFrame("Frame")
else
    print("this object already exist", HideChatFrameObject:GetName())
end

local HideChatFrameObject = _G.HideChatFrameObject

RegisterEventsToFrame(HideChatFrameObject, "PLAYER_REGEN_DISABLED",
                      "PLAYER_REGEN_ENABLED")

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
if rawget(_G, "HideChatSidebar") == nil then
    _G.HideChatSidebar = CreateFrame("Frame")
else
    print("this object already exist", HideChatSidebar:GetName())
end

local HideChatSidebar = _G.HideChatSidebar
local _G_ChatSidebar = _G

RegisterEventsToFrame(HideChatFrameObject, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "HideChatFrameStyle") == nil then
    _G.HideChatFrameStyle = CreateFrame("Frame")
else
    print("this object already exist", HideChatFrameStyle:GetName())
end

local HideChatFrameStyle = _G.HideChatFrameStyle

RegisterEventsToFrame(HideChatFrameStyle, "PLAYER_ENTERING_WORLD")

local _G_ChatFrameStyle = _G
local tabTextures = {"Left", "Right", "Middle"}
local frameTextures = {
    "BottomTexture", "BottomLeftTexture", "BottomRightTexture", "TopTexture",
    "TopLeftTexture", "TopRightTexture", "LeftTexture", "RightTexture"
}
local evnts = {
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

            for _, eventHook in ipairs(evnts) do
                chatTab:SetScript(eventHook, eventHandler)
                chatFrame:SetScript(eventHook, eventHandler)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Move the chat frame edit box to the top of the chat frame
---------------------------------------------------------------------------------------------------
if rawget(_G, "MoveChatFrameEditBox") == nil then
    _G.MoveChatFrameEditBox = CreateFrame("Frame")
else
    print("this object already exist", MoveChatFrameEditBox:GetName())
end

local MoveChatFrameEditBox = _G.MoveChatFrameEditBox

RegisterEventsToFrame(MoveChatFrameEditBox, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "HideQuickJoinToastButton") == nil then
    _G.HideQuickJoinToastButton = CreateFrame("Frame")
else
    print("this object already exist", HideQuickJoinToastButton:GetName())
end

local HideQuickJoinToastButton = _G.HideQuickJoinToastButton

RegisterEventsToFrame(HideQuickJoinToastButton, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "HideBagBar") == nil then
    _G.HideBagBar = CreateFrame("Frame")
else
    print("this object already exist", HideBagBar:GetName())
end

local HideBagBar = _G.HideBagBar

RegisterEventsToFrame(HideBagBar, "PLAYER_REGEN_DISABLED",
                      "PLAYER_REGEN_ENABLED")

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
if rawget(_G, "HideHudTooltip") == nil then
    _G.HideHudTooltip = CreateFrame("Frame")
else
    print("this object already exist", HideHudTooltip:GetName())
end

local HideHudTooltip = _G.HideHudTooltip
local inCombat = false

RegisterEventsToFrame(HideHudTooltip, "PLAYER_REGEN_DISABLED",
                      "PLAYER_REGEN_ENABLED")

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
if rawget(_G, "fpsFrame") == nil then
    _G.fpsFrame = CreateFrame("Frame", nil, UIParent)
else
    print("this object already exist", fpsFrame:GetName())
end

local fpsFrame = _G.fpsFrame
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
if rawget(_G, "XpBarFrame") == nil then
    _G.XpBarFrame = CreateFrame("Frame")
else
    print("this object already exist", XpBarFrame:GetName())
end

local XpBarFrame = _G.XpBarFrame

RegisterEventsToFrame(XpBarFrame, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "repBarFrame") == nil then
    _G.repBarFrame = CreateFrame("Frame")
else
    print("this object already exist", repBarFrame:GetName())
end

local repBarFrame = _G.repBarFrame

RegisterEventsToFrame(repBarFrame, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "microMenuFrame") == nil then
    _G.microMenuFrame = CreateFrame("Frame")
else
    print("this object already exist", microMenuFrame:GetName())
end

local microMenuFrame = _G.microMenuFrame

RegisterEventsToFrame(microMenuFrame, "ADDON_LOADED")

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
if rawget(_G, "HideBagBarFramePermanently") == nil then
    _G.HideBagBarFramePermanently = CreateFrame("Frame")
else
    print("this object already exist", HideBagBarFramePermanently:GetName())
end

local HideBagBarFramePermanently = _G.HideBagBarFramePermanently

RegisterEventsToFrame(HideBagBarFramePermanently, "ADDON_LOADED")

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
if rawget(_G, "CustomPaladinPowerBarTexture") == nil then
    _G.CustomPaladinPowerBarTexture = CreateFrame("Frame")
else
    print("this object already exist", CustomPaladinPowerBarTexture:GetName())
end

local CustomPaladinPowerBarTexture = _G.CustomPaladinPowerBarTexture

RegisterEventsToFrame(CustomPaladinPowerBarTexture, "ADDON_LOADED")

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
                                                       15, 10)
                end
            end
        end
    end)
end)

---------------------------------------------------------------------------------------------------
-- Hide the death knight rune textures except the symbols for runes and move them
---------------------------------------------------------------------------------------------------
if rawget(_G, "CustomDeathKnightPowerBarTexture") == nil then
    _G.CustomDeathKnightPowerBarTexture = CreateFrame("Frame")
else
    print("this object already exist",
          CustomDeathKnightPowerBarTexture:GetName())
end

local CustomDeathKnightPowerBarTexture = _G.CustomDeathKnightPowerBarTexture

RegisterEventsToFrame(CustomDeathKnightPowerBarTexture, "ADDON_LOADED")

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

if rawget(_G, "KeepDeathKnightRunesAtPosition") == nil then
    _G.KeepDeathKnightRunesAtPosition = CreateFrame("Frame")
else
    print("this object already exist", KeepDeathKnightRunesAtPosition:GetName())
end

local KeepDeathKnightRunesAtPosition = _G.KeepDeathKnightRunesAtPosition

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
if rawget(_G, "CustomRogueEnergyPoints") == nil then
    _G.CustomRogueEnergyPoints = CreateFrame("Frame")
else
    print("this object already exist", CustomRogueEnergyPoints:GetName())
end

local CustomRogueEnergyPoints = _G.CustomRogueEnergyPoints

RegisterEventsToFrame(CustomRogueEnergyPoints, "ADDON_LOADED")

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

if rawget(_G, "KeepRogueEnergyPointsAtPosition") == nil then
    _G.KeepRogueEnergyPointsAtPosition = CreateFrame("Frame")
else
    print("this object already exist", KeepRogueEnergyPointsAtPosition:GetName())
end

local KeepRogueEnergyPointsAtPosition = _G.KeepRogueEnergyPointsAtPosition

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
if rawget(_G, "CustomWarlockSoulShards") == nil then
    _G.CustomWarlockSoulShards = CreateFrame("Frame")
else
    print("this object already exist", CustomWarlockSoulShards:GetName())
end

local CustomWarlockSoulShards = _G.CustomWarlockSoulShards

RegisterEventsToFrame(CustomWarlockSoulShards, "ADDON_LOADED")

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

if rawget(_G, "KeepWarlockSoulShardsAtPosition") == nil then
    _G.KeepWarlockSoulShardsAtPosition = CreateFrame("Frame")
else
    print("this object already exist", KeepWarlockSoulShardsAtPosition:GetName())
end

local KeepWarlockSoulShardsAtPosition = _G.KeepWarlockSoulShardsAtPosition

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
if rawget(_G, "CustomDruidCatFormComboPoints") == nil then
    _G.CustomDruidCatFormComboPoints = CreateFrame("Frame")
else
    print("this object already exist", CustomDruidCatFormComboPoints:GetName())
end

local CustomDruidCatFormComboPoints = _G.CustomDruidCatFormComboPoints

RegisterEventsToFrame(CustomDruidCatFormComboPoints, "ADDON_LOADED")

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

if rawget(_G, "KeepDruidCatFormComboPointsAtPosition") == nil then
    _G.KeepDruidCatFormComboPointsAtPosition = CreateFrame("Frame")
else
    print("this object already exist",
          KeepDruidCatFormComboPointsAtPosition:GetName())
end

local KeepDruidCatFormComboPointsAtPosition =
    _G.KeepDruidCatFormComboPointsAtPosition

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
-- Custom Monk Harmony
---------------------------------------------------------------------------------------------------
if rawget(_G, "CustomMonkPowerBar") == nil then
    _G.CustomMonkPowerBar = CreateFrame("Frame")
else
    print("this object already exist", CustomMonkPowerBar:GetName())
end

local CustomMonkPowerBar = _G.CustomMonkPowerBar

RegisterEventsToFrame(CustomMonkPowerBar, "ADDON_LOADED")

CustomMonkPowerBar:SetScript("OnEvent", function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].CustomMonkPowerBarSetting and
            event == "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "MONK" then
                local harmonyPoints = {MonkHarmonyBarFrame:GetChildren()}
                for i = 1, 6 do
                    local harmony = harmonyPoints[i]
                    harmony.Chi_BG:Hide()
                    harmony.Chi_BG_Active:Hide()
                    harmony.Chi_BG_Glow:Hide()
                    harmony.Chi_Deplete:Hide()
                end
            end
        end
    end)
end)

if rawget(_G, "KeepMonkHarmonyPointsAtPosition") == nil then
    _G.KeepMonkHarmonyPointsAtPosition = CreateFrame("Frame")
else
    print("this object already exist", KeepMonkHarmonyPointsAtPosition:GetName())
end

local KeepMonkHarmonyPointsAtPosition = _G.KeepMonkHarmonyPointsAtPosition

KeepMonkHarmonyPointsAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomMonkPowerBarSetting then
        local _, className = UnitClass("player")
        if className == "MONK" then
            local harmonyPoints = {MonkHarmonyBarFrame:GetChildren()}
            for i = 1, 6 do
                local harmony = harmonyPoints[i]
                harmony:ClearAllPoints()
                harmony:SetPoint("BOTTOM", _G["ActionButton" .. (i + 3)], "TOP",
                                 0, 10)
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Custom Evoker Essence
---------------------------------------------------------------------------------------------------
local CustomEvokerEssence = CreateFrame("Frame")
CustomEvokerEssence:RegisterEvent("ADDON_LOADED")

CustomEvokerEssence:SetScript("OnEvent", function(self, event, addonName)
    C_Timer.After(2, function()
        if SettingsInitialized and
            zUI_SavedSettings[PlayerIdentifier].CustomEvokerEssenceSetting and
            event == "ADDON_LOADED" and addonName == "zUI" then
            local _, className = UnitClass("player")
            if className == "EVOKER" then
                local essencePoints = {EssencePlayerFrame:GetChildren()}
                for i = 1, 5 do
                    local essence = essencePoints[i]
                    essence.EssenceFillDone.CircBG:Hide()
                    essence.EssenceFillDone.CircBGActive:Hide()
                    essence.EssenceFilling.EssenceBG:Hide()
                    essence.EssenceDepleting.EssenceBG:Hide()
                    essence.EssenceDepleting.CircBGActive:Hide()
                end
            end
        end
    end)
end)

if rawget(_G, "KeepEvokerEssencePointsAtPosition") == nil then
    _G.KeepEvokerEssencePointsAtPosition = CreateFrame("Frame")
else
    print("this object already exist",
          KeepEvokerEssencePointsAtPosition:GetName())
end

local KeepEvokerEssencePointsAtPosition = _G.KeepEvokerEssencePointsAtPosition

KeepEvokerEssencePointsAtPosition:SetScript("OnUpdate", function()
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].CustomEvokerEssenceSetting then
        local _, className = UnitClass("player")
        if className == "EVOKER" then
            local essencePoints = {EssencePlayerFrame:GetChildren()}
            for i = 1, 5 do
                local essence = essencePoints[i]
                essence:ClearAllPoints()
                essence:SetPoint("BOTTOM", _G["ActionButton" .. (i + 3)], "TOP",
                                 15, 10)
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
if rawget(_G, "actionBarMod") == nil then
    _G.actionBarMod = CreateFrame("Frame")
else
    print("this object already exist", actionBarMod:GetName())
end

local actionBarMod = _G.actionBarMod

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

for _, event in ipairs(events) do RegisterEventsToFrame(actionBarMod, event) end

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
                    hotkey:Show()
                else
                    hotkey:Hide()
                end
            end

            if GetCursorInfo() then
                button:SetAlpha(1)
                normalTexture:Show()
                if hotkey and IsKeyBindingSet(button) then
                    hotkey:Show()
                end
                button.wasDragging = true
            elseif not GetCursorInfo() and button.wasDragging then
                normalTexture:Hide()
                if hotkey and
                    not (HasAction(button.action) or
                        GetActionInfo(button.action)) then
                    hotkey:Hide()
                end
                local buttonName = button:GetName()

                if buttonName:find("^MultiBarLeftButton") or
                    buttonName:find("^MultiBarRightButton") then
                    button:SetAlpha(0)
                end
                button.wasDragging = false
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Handle MultiBarRight and Left visibility during dragging something with the mouse + helpers
---------------------------------------------------------------------------------------------------
--[[
    Alpha to set the visibility of the buttons and the border texture if something is being dragged
    HandleCursorDraggingInfo to handle the visibility of the buttons and the border textures
    SetupMultiBarLeftMouseover to handle the visibility of the MultiBarLeft
    SetupMultiBarRightMouseover to handle the visibility of the MultiBarRight    
]]
function Alpha(alpha, barName)
    for i = 1, 12 do
        local button = _G[barName .. i]
        button:SetAlpha(alpha)
        if button.wasDragging then
            button:GetNormalTexture():SetAlpha(1)
        else
            button:GetNormalTexture():SetAlpha(0)
        end
    end
end

function HandleCursorDraggingInfo(barName)
    for i = 1, 12 do
        local button = _G[barName .. i]
        button.wasDragging = button.wasDragging or false

        if GetCursorInfo() then
            Alpha(1, barName)
            button.wasDragging = true
        elseif not GetCursorInfo() and button.wasDragging then
            Alpha(0, barName)
            button.wasDragging = false
        end
    end
end

-- MultiBarLeft
if rawget(_G, "DragCheckFrameActionBar4") == nil then
    _G.DragCheckFrameActionBar4 = CreateFrame("Frame", nil, UIParent)
else
    print("this object already exist", DragCheckFrameActionBar4:GetName())
end

local DragCheckFrameActionBar4 = _G.DragCheckFrameActionBar4

for _, event in ipairs(events) do
    RegisterEventsToFrame(DragCheckFrameActionBar4, event)
end

DragCheckFrameActionBar4:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarLeftSetting then
        return
    end

    HandleCursorDraggingInfo("MultiBarLeftButton")
end)

-- MultiBarRight
if rawget(_G, "DragCheckFrameActionBar5") == nil then
    _G.DragCheckFrameActionBar5 = CreateFrame("Frame", nil, UIParent)
else
    print("this object already exist", DragCheckFrameActionBar5:GetName())
end

local DragCheckFrameActionBar5 = _G.DragCheckFrameActionBar5

for _, event in ipairs(events) do
    RegisterEventsToFrame(DragCheckFrameActionBar5, event)
end

DragCheckFrameActionBar5:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        not zUI_SavedSettings[PlayerIdentifier].multiBarRightSetting then
        return
    end

    HandleCursorDraggingInfo("MultiBarRightButton")
end)

---------------------------------------------------------------------------------------------------
-- Make MultiBarLeft visible only on mouseover or if something being dragged
---------------------------------------------------------------------------------------------------
--[[
    In combat it's not really working yet for MultiBarLeft and MultiBarRight, because the way mouseover
    is handled blocked by Blizzard, but it's working outside of combat
    Not a big deal, but should be fixed
]]
local function SetupMultiBarLeftMouseover()
    local barLeft = CreateFrame("Frame", "MultiBarLeftMouseoverFrame", UIParent,
                                "SecureHandlerStateTemplate")
    barLeft:SetAttribute("_onstate-combat", [[
        if newstate == "nocombat" then
            self:Show()
        else
            self:Hide()
        end
    ]])
    RegisterStateDriver(barLeft, "combat", "[combat] combat; nocombat")

    local function OnEnter()
        if not InCombatLockdown() then Alpha(1, "MultiBarLeftButton") end
    end

    local function OnLeave()
        if not InCombatLockdown() then Alpha(0, "MultiBarLeftButton") end
    end

    Alpha(0, "MultiBarLeftButton")

    for i = 1, 12 do
        local button = _G["MultiBarLeftButton" .. i]
        button:HookScript("OnEnter", OnEnter)
        button:HookScript("OnLeave", OnLeave)
    end
end

SetupMultiBarLeftMouseover()

---------------------------------------------------------------------------------------------------
-- Make MultiBarRight visible only on mouseover or if something being dragged
---------------------------------------------------------------------------------------------------

local function SetupMultiBarRightMouseover()
    local barRight = CreateFrame("Frame", "MultiBarRightMouseoverFrame",
                                 UIParent, "SecureHandlerStateTemplate")
    barRight:SetAttribute("_onstate-combat", [[
        if newstate == "nocombat" then
            self:Show()
        else
            self:Hide()
        end
    ]])
    RegisterStateDriver(barRight, "combat", "[combat] combat; nocombat")

    local function OnEnter()
        if not InCombatLockdown() then Alpha(1, "MultiBarRightButton") end
    end

    local function OnLeave()
        if not InCombatLockdown() then Alpha(0, "MultiBarRightButton") end
    end

    Alpha(0, "MultiBarRightButton")

    for i = 1, 12 do
        local button = _G["MultiBarRightButton" .. i]
        button:HookScript("OnEnter", OnEnter)
        button:HookScript("OnLeave", OnLeave)
    end
end

SetupMultiBarRightMouseover()

---------------------------------------------------------------------------------------------------
-- Hide mouseover bars when the spellbook has been closed after opening it
---------------------------------------------------------------------------------------------------
function HideBarWhenSpellbookClosed(barName, barSetting)
    if SettingsInitialized and not barSetting then return end
    local frameState = {spellbookWasOpen = false}

    SpellBookFrame:HookScript("OnShow", function()
        frameState.spellbookWasOpen = true
        Alpha(1, "MultiBarRightButton")
        Alpha(1, "MultiBarLeftButton")
    end)

    SpellBookFrame:HookScript("OnHide", function()
        if frameState.spellbookWasOpen then
            Alpha(0, "MultiBarRightButton")
            Alpha(0, "MultiBarLeftButton")
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
            Alpha(0, "MultiBarRightButton")
            Alpha(0, "MultiBarLeftButton")
        else
            Alpha(1, "MultiBarRightButton")
            Alpha(1, "MultiBarLeftButton")
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
if rawget(_G, "HideObjectiveTrackerArtwork") == nil then
    _G.HideObjectiveTrackerArtwork = CreateFrame("Frame")
else
    print("this object already exist", HideObjectiveTrackerArtwork:GetName())
end

local HideObjectiveTrackerArtwork = _G.HideObjectiveTrackerArtwork

RegisterEventsToFrame(HideObjectiveTrackerArtwork, "PLAYER_ENTERING_WORLD")

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
if rawget(_G, "AutomaticObjectiveTrackerCollapseOnLoad") == nil then
    _G.AutomaticObjectiveTrackerCollapseOnLoad = CreateFrame("Frame")
else
    print("this object already exist",
          AutomaticObjectiveTrackerCollapseOnLoad:GetName())
end

local AutomaticObjectiveTrackerCollapseOnLoad =
    _G.AutomaticObjectiveTrackerCollapseOnLoad

RegisterEventsToFrame(AutomaticObjectiveTrackerCollapseOnLoad,
                      "PLAYER_ENTERING_WORLD")

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
QSB:RegisterEvent("PLAYER_LOGIN")
QSB:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and event == "PLAYER_LOGIN" and
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
if rawget(_G, "CollapseBuffFrame") == nil then
    _G.CollapseBuffFrame = CreateFrame("Frame")
else
    print("this object already exist", CollapseBuffFrame:GetName())
end

local CollapseBuffFrame = _G.CollapseBuffFrame

RegisterEventsToFrame(CollapseBuffFrame, "PLAYER_ENTERING_WORLD")

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
local function SaveChatFramePosition(chatFrame)
    local point, _, relativePoint, xOfs, yOfs = chatFrame:GetPoint()
    zUI_SavedSettings[PlayerIdentifier].ChatFramePosition = {
        point, _, relativePoint, xOfs, yOfs
    }
end

local function MakeChatFrameDraggableToCorner(chatFrame)
    local savedPosition = zUI_SavedSettings[PlayerIdentifier].ChatFramePosition

    if savedPosition and chatFrame:GetName() == "ChatFrame1" and
        zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        chatFrame:SetClampedToScreen(false)
        chatFrame:ClearAllPoints()
        chatFrame:SetPoint(savedPosition[1], savedPosition[2], savedPosition[3],
                           savedPosition[4], savedPosition[5])
    end

    if zUI_SavedSettings[PlayerIdentifier].ChatFrameMovableSetting then
        local width = ChatFrame1:GetWidth()
        local height = ChatFrame1:GetHeight()
        chatFrame:SetWidth(width)
        chatFrame:SetHeight(height)
        if chatFrame:GetName() == "ChatFrame1" then
            chatFrame:SetMovable(true)
            chatFrame:EnableMouse(true)
            chatFrame:RegisterForDrag("LeftButton")
            chatFrame:SetClampedToScreen(false)
            chatFrame:SetScript("OnDragStart", chatFrame.StartMoving)
            chatFrame:SetScript("OnDragStop", function(self)
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

if rawget(_G, "chatDragFrame") == nil then
    _G.chatDragFrame = CreateFrame("Frame")
else
    print("this object already exist", chatDragFrame:GetName())
end

local chatDragFrame = _G.chatDragFrame

RegisterEventsToFrame(chatDragFrame, "PLAYER_ENTERING_WORLD",
                      "PLAYER_TALENT_UPDATE")

chatDragFrame:SetScript("OnEvent", function(self, event, ...)
    if not SettingsInitialized then return end

    if event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_TALENT_UPDATE" then
        C_Timer.After(2, function() MakeAllChatFramesDraggable() end)
    end
end)

---------------------------------------------------------------------------------------------------
-- Player, Target, Target of Target, Party, Pet frame modifications unit / portrait / textures
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

local function HookFrameUpdates()
    hooksecurefunc("PlayerFrame_UpdateStatus", function()
        HookStatusUpdate()
        HidePlayerAndTargetFrames()
    end)

    hooksecurefunc("CompactUnitFrame_UpdateStatusText", function()
        HookStatusUpdate()
        HidePlayerAndTargetFrames()
    end)

end

if rawget(_G, "HidePlayerAndTargetBorders") == nil then
    _G.HidePlayerAndTargetBorders = CreateFrame("Frame")
else
    print("this object already exist HidePlayerAndTargetBorders")
end

local HidePlayerAndTargetBorders = _G.HidePlayerAndTargetBorders

RegisterEventsToFrame(HidePlayerAndTargetBorders, "PLAYER_ENTERING_WORLD",
                      "PLAYER_LOGIN")

HidePlayerAndTargetBorders:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].HidePlayerAndTargetFramesSetting then
        HookFrameUpdates()
    end
end)

---------------------------------------------------------------------------------------------------
-- Move the BNToastFrame
---------------------------------------------------------------------------------------------------
-- local BNFrame = CreateFrame("Frame")
-- BNFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
-- BNFrame:SetScript("OnEvent", function(self, event)
--     if event == "PLAYER_ENTERING_WORLD" then
-- hooksecurefunc(BNToastFrame, "SetPoint", function(self, _, anchor)
--     if anchor == "BNToastFrame" then
--         self:ClearAllPoints()
--         self:SetPoint("BOTTOMRIGHT", ChatFrame1Tab, "TOPRIGHT", 40, 30)
--     end
-- end)

ChatFrame1Tab:HookScript("OnUpdate", function()
    BNToastFrame:ClearAllPoints();
    BNToastFrame:SetPoint("BOTTOMLEFT", ChatFrame1Tab, "TOPRIGHT", 30, 0)
end)
--     end
-- end)

---------------------------------------------------------------------------------------------------
-- Total amount of Honorable kills
---------------------------------------------------------------------------------------------------
--[[
    Being solved in a tricky way atm, since adding all characters' HKs together
    is not always accurate (e.g. if you deleted a char and had honorable kills on it,
    it's still counted)
    updating the displayed value whenever PLAYER_PVP_KILLS_CHANGED is triggered
]]
if rawget(_G, "TotalAmountOfHonorableKills") == nil then
    _G.TotalAmountOfHonorableKills = CreateFrame("Frame")
else
    print("this object already exist", TotalAmountOfHonorableKills:GetName())
end

local TotalAmountOfHonorableKills = _G.TotalAmountOfHonorableKills

RegisterEventsToFrame(TotalAmountOfHonorableKills, "PLAYER_ENTERING_WORLD",
                      "PLAYER_PVP_KILLS_CHANGED")

local achievementID = 5363
local criteriaID = 1
local _, _, _, progress, _ = 0, 0, 0, nil, nil

if rawget(_G, "totalHKFrame") == nil then
    _G.totalHKFrame = CreateFrame("Frame", nil, UIParent)
end

local totalHKFrame = _G.totalHKFrame

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
    if SettingsInitialized and
        zUI_SavedSettings[PlayerIdentifier].TotalAmountOfHonorableKillsSetting then
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
--[[
    - Removing every texture except for the slots
    - Organizing all the bags into one bag, first bag on top, reagent at bottom
    - Moving the searchbox to the bottom left corner, with the moneyframe next to it
    - Next to the moneyframe, displaying the total amount of gold on the current realm
        - Displaying the total amount of gold each character on hover
        - Spacing the amount of gold by thousands
        - Ordering them by the amount of gold, biggest first
    - Hide the auto sort button
    - Token frame is move below the searchbox but hidden atm because <-- NOT WORKING YET
    - Made the containerframes clickthrough
]]
local NUM_ITEMS_PER_ROW = 10
if rawget(_G, "BagFrame") == nil then
    _G.BagFrame = CreateFrame("Frame")
else
    print("this object already exist", BagFrame:GetName())
end

local BagFrame = _G.BagFrame

RegisterEventsToFrame(BagFrame, "PLAYER_LOGIN", "BAG_OPEN", "BAG_CLOSED",
                      "BANKFRAME_OPENED", "BANKFRAME_CLOSED", "QUEST_ACCEPTED",
                      "QUEST_REMOVED", "MAIL_SHOW", "MAIL_CLOSED", "TRADE_SHOW",
                      "TRADE_CLOSED", "AUCTION_HOUSE_SHOW",
                      "AUCTION_HOUSE_CLOSED", "GUILDBANKFRAME_OPENED",
                      "GUILDBANKFRAME_CLOSED", "GOSSIP_SHOW", "GOSSIP_CLOSED",
                      "MERCHANT_SHOW")

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

            if rawget(_G, "bagMoneyUpdater") == nil then
                _G.bagMoneyUpdater = CreateFrame("Frame")
            end

            local bagMoneyUpdater = _G.bagMoneyUpdater

            bagMoneyUpdater:SetScript("OnEvent", function(self, event, ...)
                if event == "PLAYER_MONEY" then
                    _G.totalGoldText:SetText("Total: " ..
                                                 zUI_SavedSettings.TotalGold ..
                                                 "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:4:0|t")
                end
            end)

            RegisterEventsToFrame(bagMoneyUpdater, "PLAYER_MONEY")

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
        local bagFrame = _G["ContainerFrame" .. i]
        if bagFrame then
            bagFrame:EnableMouse(false)
            for _, element in ipairs(elementsToHide) do
                local parts = {}
                for part in string.gmatch(element, "[^.]+") do
                    table.insert(parts, part)
                end
                local target = bagFrame
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
            ["PLAYER_LOGIN"] = true,
            ["BAG_OPEN"] = true,
            ["BAG_CLOSED"] = true,
            ["BANKFRAME_OPENED"] = true,
            ["BANKFRAME_CLOSED"] = true,
            ["QUEST_ACCEPTED"] = true,
            ["QUEST_REMOVED"] = true,
            ["MAIL_SHOW"] = true,
            ["MAIL_CLOSED"] = true,
            ["TRADE_SHOW"] = true,
            ["TRADE_CLOSED"] = true,
            ["AUCTION_HOUSE_SHOW"] = true,
            ["AUCTION_HOUSE_CLOSED"] = true,
            ["GUILDBANKFRAME_OPENED"] = true,
            ["GUILDBANKFRAME_CLOSED"] = true,
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
--[[
    - Saving the gold for each character
    - Storing total amount of gold on the current realm
    - Dynamically changing the total amount of gold on the current realm
    - Always updating on money change
]]
if rawget(_G, "totalGoldFrame") == nil then
    _G.totalGoldFrame = CreateFrame("Frame")
else
    print("this object already exist", totalGoldFrame:GetName())
end

local totalGoldFrame = _G.totalGoldFrame

RegisterEventsToFrame(totalGoldFrame, "PLAYER_ENTERING_WORLD", "PLAYER_MONEY")

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

---------------------------------------------------------------------------------------------------
-- BankFrame
---------------------------------------------------------------------------------------------------
--[[
    - Removing every texture/art except for the slots
    - Combining all bags into one big
    - Put the search box on top of it
    - Made the frames clickthrough
    - Hiding the bank slots when switching tab to reagent
    - Organization of the slots now works
    - Hiding the auto sort button
    - Bags always blow last row
    - Tabs always below last bags, on reagent tab reset 
    - Purchase button new slots next to the last bag with price
]]
if rawget(_G, "BankFrameMod") == nil then
    _G.BankFrameMod = CreateFrame("Frame")
else
    print("this object already exist", BankFrameMod:GetName())
end

local BankFrameMod = _G.BankFrameMod

RegisterEventsToFrame(BankFrameMod, "BAG_UPDATE", "BANKFRAME_OPENED",
                      "PLAYERBANKSLOTS_CHANGED", "PLAYERBANKBAGSLOTS_CHANGED",
                      "PLAYERREAGENTBANKSLOTS_CHANGED")

local frameElementsToHide = {
    "NineSlice", "Bg", "CloseButton", "PortraitOverlay", "PortraitOverlayFrame",
    "PortraitContainer", "TitleText", "TitleContainer"
}

function StripTextures(frame)
    local regions = {frame:GetRegions()}
    for _, region in ipairs(regions) do
        if region:IsObjectType("Texture") then
            region:SetTexture(nil)
        elseif region:IsObjectType("FontString") and region ~=
            BankFramePurchaseInfo then
            region:SetText(nil)
        end
    end
end

local validEvents = {
    ["BAG_UPDATE"] = true,
    ["BANKFRAME_OPENED"] = true,
    ["PLAYERBANKSLOTS_CHANGED"] = true,
    ["PLAYERBANKBAGSLOTS_CHANGED"] = true,
    ["PLAYERREAGENTBANKSLOTS_CHANGED"] = true
}

BankFrameMod:SetScript("OnEvent", function(self, event, changedBagSlotID)
    if SettingsInitialized then
        if zUI_SavedSettings[PlayerIdentifier].CustomBankSetting then
            if validEvents[event] then
                for i = 7, 13 do
                    local bankBagSlotFrame = _G["ContainerFrame" .. i]
                    if bankBagSlotFrame then
                        bankBagSlotFrame:EnableMouse(false)
                        for _, element in ipairs(frameElementsToHide) do
                            local subFrame = bankBagSlotFrame[element]
                            if subFrame then
                                subFrame:Hide()
                            end
                        end
                    end
                end

                BankFrame:EnableMouse(false)
                BankFrame.NineSlice:Hide()
                BankFrame.Bg:Hide()
                BankItemAutoSortButton:Hide()
                BankFrame.PortraitContainer:Hide()
                BankFrame.CloseButton:Hide()
                BankFrameTitleText:Hide()
                BankFrame.TopTileStreaks:Hide()
                BankFrameMoneyFrame:Hide()
                BankFrameMoneyFrameInset.NineSlice:Hide()

                StripTextures(BankFrameMoneyFrameInset)
                StripTextures(BankFrameMoneyFrameBorder)
                StripTextures(BankFrameMoneyFrame)
                StripTextures(BankFrame)
                StripTextures(BankSlotsFrame)
                StripTextures(ReagentBankFrame)

                ReagentBankFrame:DisableDrawLayer("BACKGROUND")
                ReagentBankFrame:DisableDrawLayer("ARTWORK")

                local frame = _G["BankFrame"]
                local perRow = 20
                local lastSlot = nil
                local firstSlotInRow = nil
                local slotCounter = 0

                if frame then

                    local firstSlotOfCurrentRow

                    for bankMainSlot = 1, 28 do
                        local slot = _G["BankFrameItem" .. bankMainSlot]
                        if slot then
                            slot:ClearAllPoints()
                            local bg = CreateFrame("Frame", nil, slot)
                            bg:SetAllPoints()
                            bg:SetFrameLevel(slot:GetFrameLevel() - 1)
                            local texture = bg:CreateTexture(nil, "BACKGROUND")
                            texture:SetAllPoints()
                            texture:SetTexture(
                                "Interface/PaperDoll/UI-Backpack-EmptySlot")
                            if slotCounter % perRow == 0 then
                                if slotCounter == 0 then
                                    slot:SetPoint("TOPLEFT", frame, "TOPLEFT",
                                                  0, 0)
                                else
                                    slot:SetPoint("TOP", firstSlotInRow,
                                                  "BOTTOM", 0, 0)
                                end
                                firstSlotInRow = slot
                                firstSlotOfCurrentRow = slot
                            else
                                slot:SetPoint("LEFT", lastSlot, "RIGHT", 0, 0)
                            end
                            lastSlot = slot
                            slotCounter = slotCounter + 1
                        end
                    end
                    C_Timer.After(0, function()
                        local firstSlotOfLastRow

                        for bagID = 7, 13 do
                            local numSlots =
                                C_Container.GetContainerNumSlots(bagID - 1)
                            for bagSlotID = 1, numSlots do
                                local slot =
                                    _G["ContainerFrame" .. bagID .. "Item" ..
                                        bagSlotID]
                                if slot then
                                    slot:ClearAllPoints()
                                    if slotCounter % perRow == 0 then
                                        slot:SetPoint("TOP", firstSlotInRow,
                                                      "BOTTOM", 0, 0)
                                        firstSlotInRow = slot
                                        firstSlotOfLastRow = slot
                                    else
                                        slot:SetPoint("LEFT", lastSlot, "RIGHT",
                                                      0, 0)
                                    end
                                    lastSlot = slot
                                    slotCounter = slotCounter + 1
                                end
                            end
                        end

                        BankItemSearchBox:ClearAllPoints()
                        BankItemSearchBox:SetPoint("BOTTOM", BankFrameItem10,
                                                   "TOP", 0, 0)

                        local lastBag

                        for bagID = 1, 7 do
                            local bag = BankSlotsFrame["Bag" .. bagID]
                            if bag then
                                bag:ClearAllPoints()
                                if bagID == 1 then
                                    if firstSlotOfLastRow ~= nil then
                                        bag:SetPoint("TOP", firstSlotOfLastRow,
                                                     "BOTTOM", 0, 0)
                                    elseif firstSlotOfCurrentRow ~= nil then
                                        bag:SetPoint("TOP",
                                                     firstSlotOfCurrentRow,
                                                     "BOTTOM", 0, 0)
                                    end
                                else
                                    bag:SetPoint("LEFT", lastBag, "RIGHT", 0, 0)
                                end
                                lastBag = bag
                            end
                        end

                        BankFrameSlotCost:ClearAllPoints()
                        BankFrameSlotCost:SetPoint("LEFT", lastBag, "RIGHT", 5,
                                                   0)

                        BankFramePurchaseButton:ClearAllPoints()
                        BankFramePurchaseButton:SetPoint("LEFT",
                                                         BankFrameSlotCost,
                                                         "RIGHT", 50, 0)

                        BankFramePurchaseInfo:ClearAllPoints()
                        BankFramePurchaseInfo:SetPoint("TOP",
                                                       BankFramePurchaseButton,
                                                       "BOTTOM", 5, 0)

                        local point1, relativeTo1, relativePoint1, xOfs1, yOfs1 =
                            BankFrameTab1:GetPoint()
                        local point2, relativeTo2, relativePoint2, xOfs2, yOfs2 =
                            BankFrameTab2:GetPoint()

                        BankFrameTab1:ClearAllPoints()
                        BankFrameTab1:SetPoint("TOPLEFT", BankSlotsFrame.Bag1,
                                               "BOTTOMLEFT", 0, 0)

                        BankFrameTab1:HookScript("OnClick", function()
                            BankFrameTab1:ClearAllPoints()
                            BankFrameTab1:SetPoint("TOPLEFT",
                                                   BankSlotsFrame.Bag1,
                                                   "BOTTOMLEFT", 0, 0)
                        end)

                        BankFrameTab2:HookScript("OnClick", function()
                            if point1 and relativeTo1 and relativePoint1 and
                                xOfs1 and yOfs1 then
                                BankFrameTab1:ClearAllPoints()
                                BankFrameTab1:SetPoint(point1, relativeTo1,
                                                       relativePoint1, xOfs1,
                                                       yOfs1)
                            end
                            if BankFrameTab2:IsShown() then
                                point2, relativeTo2, relativePoint2, xOfs2, yOfs2 =
                                    BankFrameTab2:GetPoint()
                            end
                            BankFrameTab2:ClearAllPoints()
                            BankFrameTab2:SetPoint(point2, relativeTo2,
                                                   relativePoint2, xOfs2, yOfs2)
                        end)
                    end)
                end

                local function toggleContainerFrames(show)
                    for bagID = 7, 13 do
                        local numSlots =
                            C_Container.GetContainerNumSlots(bagID - 1)
                        for bagSlotID = 1, numSlots do
                            local slot =
                                _G["ContainerFrame" .. bagID .. "Item" ..
                                    bagSlotID]
                            if slot then
                                if show then
                                    slot:Show()
                                else
                                    slot:Hide()
                                end
                            end
                        end
                    end
                end

                BankFrameTab1:HookScript("OnClick", function()
                    toggleContainerFrames(true)
                end)
                BankFrameTab2:HookScript("OnClick", function()
                    toggleContainerFrames(false)
                end)

                if event == "BANKFRAME_OPENED" or event ==
                    "PLAYERBANKSLOTS_CHANGED" or event ==
                    "PLAYERBANKBAGSLOTS_CHANGED" or event ==
                    "PLAYERREAGENTBANKSLOTS_CHANGED" then
                    for bag = 6, 13 do OpenBag(bag) end
                end
                if event == "BAG_UPDATE" and changedBagSlotID > 5 then
                    OpenBag(changedBagSlotID)
                end
            end
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Custom minimap
---------------------------------------------------------------------------------------------------
--[[
    - Hiding the minimap's border
    - Making the minimap movable
    - Hiding the minimap buttons border
    - Saving the position of the minimap
]]
if rawget(_G, "MinimapMod") == nil then
    _G.MinimapMod = CreateFrame("Frame")
else
    print("this object already exist", MinimapMod:GetName())
end

local MinimapMod = _G.MinimapMod

RegisterEventsToFrame(MinimapMod, "PLAYER_LOGIN", "PLAYER_ENTERING_WORLD")

MinimapMod:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized then
        if zUI_SavedSettings[PlayerIdentifier].CustomMinimapSetting then
            C_Timer.After(1, function()
                MinimapBackdrop:Hide()

                Minimap:EnableMouse(true)
                Minimap:SetMovable(true)
                Minimap:RegisterForDrag("LeftButton")

                Minimap:SetScript("OnDragStart", Minimap.StartMoving)
                local minimapPosition = zUI_SavedSettings[PlayerIdentifier]
                                            .minimapPosition
                if minimapPosition then
                    Minimap:ClearAllPoints()
                    Minimap:SetPoint(minimapPosition.point, nil,
                                     minimapPosition.relativePoint,
                                     minimapPosition.xOfs, minimapPosition.yOfs)
                end

                Minimap:SetScript("OnDragStop", function(self)
                    self:StopMovingOrSizing()
                    local point, _, relativePoint, xOfs, yOfs = self:GetPoint()

                    zUI_SavedSettings[PlayerIdentifier].minimapPosition = {
                        point = point,
                        relativePoint = relativePoint,
                        xOfs = xOfs,
                        yOfs = yOfs
                    }
                    -- print(
                    --     zUI_SavedSettings[PlayerIdentifier].minimapPosition["point"],
                    --     zUI_SavedSettings[PlayerIdentifier].minimapPosition["relativePoint"],
                    --     zUI_SavedSettings[PlayerIdentifier].minimapPosition["xOfs"],
                    --     zUI_SavedSettings[PlayerIdentifier].minimapPosition["yOfs"])
                end)

                for _, child in ipairs({Minimap:GetChildren()}) do
                    if child:GetName() and child:GetName():match("LibDBIcon") then
                        local regions = {child:GetRegions()}
                        for i, region in ipairs(regions) do
                            if region:IsObjectType("Texture") then
                                if i ~= #regions then
                                    region:SetTexture(nil)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

---------------------------------------------------------------------------------------------------
-- Hiding borders on the Vigor
---------------------------------------------------------------------------------------------------

if rawget(_G, "VigorMod") == nil then
    _G.VigorMod = CreateFrame("Frame")
else
    print("this object already exist", VigorMod:GetName())
end

local VigorMod = _G.VigorMod

RegisterEventsToFrame(VigorMod, "PLAYER_LOGIN", "PLAYER_ENTERING_WORLD",
                      "UNIT_AURA")

VigorMod:SetScript("OnEvent", function(self, event, ...)
    if SettingsInitialized then
        if zUI_SavedSettings[PlayerIdentifier].CustomVigorSetting then
            if IsMounted() then
                C_Timer.After(0.5, function()
                    local children = {
                        UIWidgetPowerBarContainerFrame:GetChildren()
                    }

                    for _, child in ipairs(children) do
                        if child.DecorRight then
                            child.DecorRight:Hide()
                        end

                        if child.DecorLeft then
                            child.DecorLeft:Hide()
                        end

                        local grandChildren = {child:GetChildren()}

                        for _, grandChild in ipairs(grandChildren) do

                            -- grandChild.BG:Hide()
                            grandChild.Frame:Hide()
                        end
                    end
                end)
            end
        end
    end
end)

