-------------------------------------------- BUTTON & PAGE CREATION --------------------------------------------
-- Create the menu buttons
generalButton = CreateFrame("Button", nil, zUI_Panel, "GameMenuButtonTemplate")
generalButton:SetPoint("TOPLEFT", 10, -30)
generalButton:SetSize(100, 20)
generalButton:SetText("General")
generalButton:SetNormalFontObject("GameFontNormal")

hideShowButton = CreateFrame("Button", nil, zUI_Panel, "GameMenuButtonTemplate")
hideShowButton:SetPoint("TOPLEFT", generalButton, "BOTTOMLEFT", 0, -10)
hideShowButton:SetSize(100, 20)
hideShowButton:SetText("Hide & Show")
hideShowButton:SetNormalFontObject("GameFontNormal")

actionBarsButton = CreateFrame("Button", nil, zUI_Panel,
                               "GameMenuButtonTemplate")
actionBarsButton:SetPoint("TOPLEFT", hideShowButton, "BOTTOMLEFT", 0, -10)
actionBarsButton:SetSize(100, 20)
actionBarsButton:SetText("ActionBars")
actionBarsButton:SetNormalFontObject("GameFontNormal")

-- Create the pages
generalPage = CreateFrame("Frame", nil, zUI_Panel)
generalPage:SetSize(200, 200)
generalPage:SetPoint("TOPLEFT", generalButton, "TOPRIGHT", 10, 0)
generalPage:Show()

hideShowPage = CreateFrame("Frame", nil, zUI_Panel)
hideShowPage:SetSize(200, 200)
hideShowPage:SetPoint("TOPLEFT", hideShowButton, "TOPRIGHT", 10, 0)
hideShowPage:Hide()

-- Create the ActionBars page
actionBarsPage = CreateFrame("Frame", nil, zUI_Panel)
actionBarsPage:SetSize(200, 200)
actionBarsPage:SetPoint("TOPLEFT", actionBarsButton, "TOPRIGHT", 10, 0)
actionBarsPage:Hide()

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
    generalPage:Hide()
    hideShowPage:Hide()
    actionBarsPage:Show()
end)