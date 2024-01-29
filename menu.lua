-------------------------------------------- BUTTON & PAGE CREATION --------------------------------------------
---------------------------------------------------------------------------------------------------
-- Create the menu buttons
---------------------------------------------------------------------------------------------------
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

ClassPageButton =
    CreateFrame("Button", nil, ZUI_Panel, "GameMenuButtonTemplate")
ClassPageButton:SetPoint("TOPLEFT", ActionBarsButton, "BOTTOMLEFT", 0, -10)
ClassPageButton:SetSize(100, 20)
ClassPageButton:SetText("Class")
ClassPageButton:SetNormalFontObject("GameFontNormal")

-- Create the pages
---------------------------------------------------------------------------------------------------
-- General
---------------------------------------------------------------------------------------------------
GeneralPage = CreateFrame("Frame", nil, ZUI_Panel)
GeneralPage:SetSize(600, 500)
GeneralPage:SetPoint("TOPLEFT", GeneralButton, "TOPRIGHT", 10, 0)
GeneralPage:Show()

---------------------------------------------------------------------------------------------------
-- Hide & Show
---------------------------------------------------------------------------------------------------
HideShowPage = CreateFrame("Frame", nil, ZUI_Panel)
HideShowPage:SetSize(600, 500)
HideShowPage:SetPoint("TOPLEFT", HideShowButton, "TOPRIGHT", 10, 0)
HideShowPage:Hide()

local HideShowPageMiddleVerticalLine = HideShowPage:CreateTexture(nil,
                                                                  "BACKGROUND")
HideShowPageMiddleVerticalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
HideShowPageMiddleVerticalLine:SetPoint("TOP", HideShowPage, "TOP", -70, 12)
HideShowPageMiddleVerticalLine:SetPoint("BOTTOM", HideShowPage, "BOTTOM", -70,
                                        65)
HideShowPageMiddleVerticalLine:SetWidth(3)

local HideShowPageTopHorizontalLine = HideShowPage:CreateTexture(nil,
                                                                 "BACKGROUND")
HideShowPageTopHorizontalLine:SetHeight(2)
HideShowPageTopHorizontalLine:SetWidth(HideShowPage:GetWidth() - 120)
HideShowPageTopHorizontalLine:SetColorTexture(0.5, 0.5, 0.5, 0.5)
HideShowPageTopHorizontalLine:SetPoint("TOP", HideShowPage, "TOP", -70, -30)

local HideType1 = HideShowPage:CreateFontString(nil, "OVERLAY",
                                                "GameFontHighlight")
HideType1:SetFontObject("GameFontNormalLarge")
HideType1:SetPoint("TOP", HideShowPage, "TOP", -190, 0)
HideType1:SetText("Hide In Combat")

local HideType2 = HideShowPage:CreateFontString(nil, "OVERLAY",
                                                "GameFontHighlight")
HideType2:SetFontObject("GameFontNormalLarge")
HideType2:SetPoint("TOP", HideShowPage, "TOP", 50, 0)
HideType2:SetText("Hide Permanently")

---------------------------------------------------------------------------------------------------
-- ActionBars
---------------------------------------------------------------------------------------------------
ActionBarsPage = CreateFrame("Frame", nil, ZUI_Panel)
ActionBarsPage:SetSize(600, 500)
ActionBarsPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ActionBarsPage:Hide()

ClassPage = CreateFrame("Frame", nil, ZUI_Panel)
ClassPage:SetSize(600, 500)
ClassPage:SetPoint("TOPLEFT", ActionBarsButton, "TOPRIGHT", 10, 0)
ClassPage:Hide()

---------------------------------------------------------------------------------------------------
-- Set which page is shown when a button is clicked
---------------------------------------------------------------------------------------------------
GeneralButton:SetScript("OnClick", function()
    GeneralPage:Show()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
    ClassPage:Hide()
end)

HideShowButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Show()
    ActionBarsPage:Hide()
    ClassPage:Hide()
end)

ActionBarsButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Show()
    ClassPage:Hide()
end)

ClassPageButton:SetScript("OnClick", function()
    GeneralPage:Hide()
    HideShowPage:Hide()
    ActionBarsPage:Hide()
    ClassPage:Show()
end)
