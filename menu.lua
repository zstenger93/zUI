-------------------------------------------- BUTTON & PAGE CREATION --------------------------------------------
-- Create the menu buttons
GeneralButton = CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
GeneralButton:SetPoint("TOPLEFT", 10, -30)
GeneralButton:SetSize(100, 20)
GeneralButton:SetText("General")
GeneralButton:SetNormalFontObject("GameFontNormal")

HideShowButton = CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
HideShowButton:SetPoint("TOPLEFT", GeneralButton, "BOTTOMLEFT", 0, -10)
HideShowButton:SetSize(100, 20)
HideShowButton:SetText("Hide & Show")
HideShowButton:SetNormalFontObject("GameFontNormal")

ActionBarsButton = CreateFrame("Button", nil, ZUI_Panel,
                               "GameMenuButtonTemplate")
ActionBarsButton:SetPoint("TOPLEFT", HideShowButton, "BOTTOMLEFT", 0, -10)
ActionBarsButton:SetSize(100, 20)
ActionBarsButton:SetText("ActionBars")
ActionBarsButton:SetNormalFontObject("GameFontNormal")

-- Create the pages
GeneralPage = CreateFrame("Frame", nil, ZUI_Panel)
GeneralPage:SetSize(200, 200)
GeneralPage:SetPoint("TOPLEFT", GeneralButton, "TOPRIGHT", 10, 0)
GeneralPage:Show()

HideShowPage = CreateFrame("Frame", nil, ZUI_Panel)
HideShowPage:SetSize(200, 200)
HideShowPage:SetPoint("TOPLEFT", HideShowButton, "TOPRIGHT", 10, 0)
HideShowPage:Hide()

-- Create the ActionBars page
ActionBarsPage = CreateFrame("Frame", nil, ZUI_Panel)
ActionBarsPage:SetSize(200, 200)
ActionBarsPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ActionBarsPage:Hide()

GeneralButton:SetScript("OnClick", function()
    GeneralPage:Show()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
end)

HideShowButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Show()
    ActionBarsPage:Hide()
end)

ActionBarsButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Show()
end)
