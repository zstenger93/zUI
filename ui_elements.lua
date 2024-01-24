
-------------------------------------------- UI SETTINGS PANEL DESIGN --------------------------------------------
-- Create a frame for the UI
zUI_Panel = CreateFrame("Frame", "zUIConfig", UIParent, "BackdropTemplate")

zUI_Panel:SetSize(600, 500)

zUI_Panel:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = {left = 8, right = 8, top = 8, bottom = 8}
})

-- Create a vertical line next to the menu buttons
local verticalLine = zUI_Panel:CreateTexture(nil, "BACKGROUND")
verticalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
verticalLine:SetPoint("TOPLEFT", zUI_Panel, "TOPLEFT", 110, -10)
verticalLine:SetPoint("BOTTOMLEFT", zUI_Panel, "BOTTOMLEFT", 110, 10)
verticalLine:SetWidth(3)

-- UI Panel Title
local UI_Title = zUI_Panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
UI_Title:SetFontObject("GameFontNormalLarge")
UI_Title:SetPoint("TOP", zUI_Panel, "TOP", 50, -20)
UI_Title:SetText("zUI Settings")

-- Create a horizontal line below the title
local line = zUI_Panel:CreateTexture(nil, "BACKGROUND")
line:SetHeight(2)
line:SetWidth(zUI_Panel:GetWidth() - 110)
line:SetColorTexture(0.5, 0.5, 0.5, 0.5)
line:SetPoint("TOP", UI_Title, "BOTTOM", 0, -10)

-- Set the backdrop color to 50% transparent black
zUI_Panel:SetPoint("CENTER")
zUI_Panel:Hide()

-- Hide the addon UI when combat starts
local HideZuiInCombat = CreateFrame("Frame")
HideZuiInCombat:RegisterEvent("PLAYER_REGEN_DISABLED")
HideZuiInCombat:RegisterEvent("PLAYER_REGEN_ENABLED")
local wasOpenBeforeCombat

HideZuiInCombat:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_DISABLED" then
        wasOpenBeforeCombat = zUI_Panel:IsVisible()
        zUI_Panel:Hide()
    elseif event == "PLAYER_REGEN_ENABLED" and wasOpenBeforeCombat then
        zUI_Panel:Show()
    end
end)

local closeButton = CreateFrame("Button", nil, zUI_Panel, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT")

-- Handle the OnClick event for the close button
closeButton:SetScript("OnClick", function() zUI_Panel:Hide() end)

-- Create a reload button at the bottom middle of the panel
local reloadButton = CreateFrame("Button", nil, zUI_Panel,
                                 "GameMenuButtonTemplate")
reloadButton:SetPoint("BOTTOM", 50, 20)
reloadButton:SetSize(100, 20)
reloadButton:SetText("Reload")
reloadButton:SetNormalFontObject("GameFontNormal")

reloadButton:SetScript("OnClick", function() ReloadUI() end)
