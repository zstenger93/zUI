-------------------------------------------- UI SETTINGS PANEL DESIGN --------------------------------------------
-- Create a frame for the UI
ZUI_Panel = CreateFrame("Frame", "zUIConfig", UIParent, "BackdropTemplate")

ZUI_Panel:SetSize(600, 500)

ZUI_Panel:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = {left = 8, right = 8, top = 8, bottom = 8}
})

-- Create a vertical line next to the menu buttons
local verticalLine = ZUI_Panel:CreateTexture(nil, "BACKGROUND")
verticalLine:SetColorTexture(0.7, 0.7, 0.7, 0.7)
verticalLine:SetPoint("TOPLEFT", ZUI_Panel, "TOPLEFT", 110, -10)
verticalLine:SetPoint("BOTTOMLEFT", ZUI_Panel, "BOTTOMLEFT", 110, 10)
verticalLine:SetWidth(3)

-- UI Panel Title
local UI_Title = ZUI_Panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
UI_Title:SetFontObject("GameFontNormalLarge")
UI_Title:SetPoint("TOP", ZUI_Panel, "TOP", 50, -20)
UI_Title:SetText("zUI Settings")

-- Create a horizontal line below the title
local line = ZUI_Panel:CreateTexture(nil, "BACKGROUND")
line:SetHeight(2)
line:SetWidth(ZUI_Panel:GetWidth() - 120)
line:SetColorTexture(0.7, 0.7, 0.7, 0.7)
line:SetPoint("TOP", UI_Title, "BOTTOM", 0, -10)

-- Set the backdrop color to 50% transparent black
ZUI_Panel:SetPoint("CENTER")
ZUI_Panel:Hide()

-- Hide the addon UI when combat starts
local HideZuiInCombat = CreateFrame("Frame")
HideZuiInCombat:RegisterEvent("PLAYER_REGEN_DISABLED")
HideZuiInCombat:RegisterEvent("PLAYER_REGEN_ENABLED")
local wasOpenBeforeCombat

HideZuiInCombat:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_DISABLED" then
        wasOpenBeforeCombat = ZUI_Panel:IsVisible()
        ZUI_Panel:Hide()
    elseif event == "PLAYER_REGEN_ENABLED" and wasOpenBeforeCombat then
        ZUI_Panel:Show()
    end
end)

local closeButton = CreateFrame("Button", nil, ZUI_Panel, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT")

-- Handle the OnClick event for the close button
closeButton:SetScript("OnClick", function() ZUI_Panel:Hide() end)

-- Create a reload button at the bottom middle of the panel
local reloadButton = CreateFrame("Button", nil, ZUI_Panel,
                                 "GameMenuButtonTemplate")
reloadButton:SetPoint("BOTTOM", 50, 20)
reloadButton:SetSize(100, 20)
reloadButton:SetText("Reload")
reloadButton:SetNormalFontObject("GameFontNormal")

reloadButton:SetScript("OnClick", function() ReloadUI() end)
