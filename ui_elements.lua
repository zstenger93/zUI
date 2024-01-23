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
    insets = { left = 8, right = 8, top = 8, bottom = 8 }
})

-- Create a vertical line next to the menu buttons
local verticalLine = zUI_Panel:CreateTexture(nil, "BACKGROUND")
verticalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
verticalLine:SetPoint("TOPLEFT", zUI_Panel, "TOPLEFT", 110, -10)
verticalLine:SetPoint("BOTTOMLEFT", zUI_Panel, "BOTTOMLEFT", 110, 10)
verticalLine:SetWidth(3)

-- UI Panel Title
local UI_Title = zUI_Panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")

UI_Title:SetPoint("TOP", zUI_Panel, "TOP", 50, -20)
UI_Title:SetText("zUI Settings")

-- Set the backdrop color to 50% transparent black
zUI_Panel:SetBackdropColor(0, 0, 0, 0.9)
zUI_Panel:SetPoint("CENTER")
zUI_Panel:Hide()

local closeButton = CreateFrame("Button", nil, zUI_Panel, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT")

-- Handle the OnClick event for the close button
closeButton:SetScript("OnClick", function()
    zUI_Panel:Hide()
end)