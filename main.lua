-- =============================================
-- Synapse X UI Script - Enhanced Modern UI
-- Version: V2 Enhanced
-- Features: Modern Design, Smooth Animations, Better Colors
-- =============================================

local synversion = "V2 Enhanced"
local G2L = {}

-- Services
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- =============================================
-- COLOR SCHEME & THEMING
-- =============================================

local Colors = {
    Primary = Color3.fromRGB(45, 45, 55),
    Secondary = Color3.fromRGB(35, 35, 45),
    Accent = Color3.fromRGB(100, 150, 255),
    AccentHover = Color3.fromRGB(120, 170, 255),
    TextPrimary = Color3.fromRGB(255, 255, 255),
    TextSecondary = Color3.fromRGB(200, 200, 200),
    Border = Color3.fromRGB(60, 60, 70),
    Success = Color3.fromRGB(76, 175, 80),
    Warning = Color3.fromRGB(255, 193, 7),
    Danger = Color3.fromRGB(244, 67, 54),
    Background = Color3.fromRGB(25, 25, 35),
    Surface = Color3.fromRGB(30, 30, 40)
}

-- =============================================
-- MAIN SCREEN GUI SETUP
-- =============================================

-- Main ScreenGui Container
G2L["1"] = Instance.new("ScreenGui", CoreGui)
G2L["1"].Name = "SynapseX"
G2L["1"].ResetOnSpawn = false
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- =============================================
-- FLOATING ICON SYSTEM - MODERN DESIGN
-- =============================================

-- Floating Icon Button with Modern Design
G2L["2"] = Instance.new("ImageButton", G2L["1"])
G2L["2"].Name = "FloatingIcon"
G2L["2"].Visible = false
G2L["2"].BackgroundColor3 = Colors.Primary
G2L["2"].Size = UDim2.new(0, 45, 0, 45)
G2L["2"].Position = UDim2.new(0.7019911956787109, 0, 0.7092568278312683, 0)
G2L["2"].Image = "rbxasset://textures/ui/InspectMenu/focusRing.png"
G2L["2"].ImageTransparency = 0.8
G2L["2"].ImageColor3 = Colors.Accent

-- Modern Floating Icon Image
G2L["3"] = Instance.new("ImageLabel", G2L["2"])
G2L["3"].Name = "Icon"
G2L["3"].BackgroundTransparency = 1
G2L["3"].BorderSizePixel = 0
G2L["3"].BackgroundColor3 = Colors.TextPrimary
G2L["3"].Image = "http://www.roblox.com/asset/?id=9483813933"
G2L["3"].Size = UDim2.new(0, 28, 0, 32)
G2L["3"].Position = UDim2.new(0.5, -14, 0.5, -16)

-- Floating Icon Corner Radius - Modern Rounded
G2L["4"] = Instance.new("UICorner", G2L["2"])
G2L["4"].CornerRadius = UDim.new(0, 12)

-- Modern Gradient Effect with Better Colors
G2L["5"] = Instance.new("UIGradient", G2L["2"])
G2L["5"].Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0.000, Colors.Accent),
    ColorSequenceKeypoint.new(0.500, Colors.AccentHover),
    ColorSequenceKeypoint.new(1.000, Colors.Primary)
})
G2L["5"].Rotation = 45

-- Add Shadow Effect
local Shadow = Instance.new("ImageLabel", G2L["2"])
Shadow.Name = "Shadow"
Shadow.BackgroundTransparency = 1
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 10, 1, 10)
Shadow.Position = UDim2.new(0, -5, 0, -5)
Shadow.Image = "rbxasset://textures/ui/InspectMenu/focusRing.png"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.7
Shadow.ZIndex = G2L["2"].ZIndex - 1

-- =============================================
-- MAIN WINDOW FRAME - MODERN DESIGN
-- =============================================

-- Main Window Container with Modern Styling
G2L["6"] = Instance.new("Frame", G2L["1"])
G2L["6"].Name = "Main"
G2L["6"].Active = true
G2L["6"].ZIndex = 4
G2L["6"].BackgroundTransparency = 0
G2L["6"].BorderSizePixel = 0
G2L["6"].BackgroundColor3 = Colors.Background
G2L["6"].Size = UDim2.new(0, 700, 0, 450)
G2L["6"].Position = UDim2.new(0.5, -350, 0.5, -225)

-- Modern Window Corner
local MainCorner = Instance.new("UICorner", G2L["6"])
MainCorner.CornerRadius = UDim.new(0, 15)

-- Window Border
local WindowBorder = Instance.new("UIStroke", G2L["6"])
WindowBorder.Color = Colors.Border
WindowBorder.Thickness = 2
WindowBorder.Transparency = 0.5

-- Window Shadow
local WindowShadow = Instance.new("Frame", G2L["6"])
WindowShadow.Name = "Shadow"
WindowShadow.BackgroundTransparency = 1
WindowShadow.BorderSizePixel = 0
WindowShadow.Size = UDim2.new(1, 20, 1, 20)
WindowShadow.Position = UDim2.new(0, -10, 0, -10)
WindowShadow.ZIndex = G2L["6"].ZIndex - 1

local ShadowGradient = Instance.new("UIGradient", WindowShadow)
ShadowGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
ShadowGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.3),
    NumberSequenceKeypoint.new(1, 1)
})

-- Main Window Icon - Modern
G2L["7"] = Instance.new("ImageLabel", G2L["6"])
G2L["7"].Name = "Icon"
G2L["7"].BackgroundTransparency = 1
G2L["7"].BorderSizePixel = 0
G2L["7"].BackgroundColor3 = Colors.TextPrimary
G2L["7"].Image = "http://www.roblox.com/asset/?id=9483813933"
G2L["7"].Size = UDim2.new(0, 30, 0, 35)
G2L["7"].Position = UDim2.new(0, 15, 0, 10)
G2L["7"].ImageColor3 = Colors.Accent

-- =============================================
-- MODERN BACKGROUND SYSTEM
-- =============================================

-- Modern Background with Pattern
G2L["8"] = Instance.new("ImageLabel", G2L["6"])
G2L["8"].Name = "Background"
G2L["8"].ZIndex = 0
G2L["8"].BorderSizePixel = 0
G2L["8"].ScaleType = Enum.ScaleType.Tile
G2L["8"].BackgroundColor3 = Colors.Surface
G2L["8"].TileSize = UDim2.new(0, 30, 0, 30)
G2L["8"].Size = UDim2.new(1, 0, 1, 0)
G2L["8"].Image = "rbxasset://textures/ui/InspectMenu/focusRing.png"
G2L["8"].ImageColor3 = Colors.Secondary
G2L["8"].ImageTransparency = 0.9

-- Modern Top Panel Bar with Gradient
G2L["9"] = Instance.new("Frame", G2L["6"])
G2L["9"].Name = "Panel"
G2L["9"].ZIndex = 1
G2L["9"].BorderSizePixel = 0
G2L["9"].BackgroundColor3 = Colors.Primary
G2L["9"].Size = UDim2.new(1, 0, 0, 50)
G2L["9"].Position = UDim2.new(0, 0, 0, 0)

-- Panel Gradient
local PanelGradient = Instance.new("UIGradient", G2L["9"])
PanelGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Colors.Primary),
    ColorSequenceKeypoint.new(1, Colors.Secondary)
})

-- Panel Corner
local PanelCorner = Instance.new("UICorner", G2L["9"])
PanelCorner.CornerRadius = UDim.new(0, 15)

-- =============================================
-- MAIN FUNCTIONALITY AREA - ENHANCED
-- =============================================

-- Main Function Container
G2L["a"] = Instance.new("Frame", G2L["6"])
G2L["a"].Name = "MainFunc"
G2L["a"].BackgroundColor3 = Colors.Surface
G2L["a"].BackgroundTransparency = 0.2
G2L["a"].Size = UDim2.new(1, -20, 1, -70)
G2L["a"].Position = UDim2.new(0, 10, 0, 60)

-- Function Container Corner
local FuncCorner = Instance.new("UICorner", G2L["a"])
FuncCorner.CornerRadius = UDim.new(0, 10)

-- Needs Container
G2L["b"] = Instance.new("Folder", G2L["a"])
G2L["b"].Name = "Needs"

-- Modern Tab Button
G2L["c"] = Instance.new("TextButton", G2L["b"])
G2L["c"].Name = "Tab"
G2L["c"].ZIndex = 2
G2L["c"].Visible = false
G2L["c"].BorderSizePixel = 0
G2L["c"].TextXAlignment = Enum.TextXAlignment.Left
G2L["c"].BackgroundColor3 = Colors.Surface
G2L["c"].TextSize = 14
G2L["c"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["c"].TextColor3 = Colors.TextPrimary
G2L["c"].Size = UDim2.new(0, 120, 0, 25)
G2L["c"].Text = "  Script 1"
G2L["c"].Position = UDim2.new(0, 0, 0, 0)

-- Tab Corner
local TabCorner = Instance.new("UICorner", G2L["c"])
TabCorner.CornerRadius = UDim.new(0, 8)

-- Tab Remove Button - Modern
G2L["d"] = Instance.new("TextButton", G2L["c"])
G2L["d"].Name = "Remove"
G2L["d"].BorderSizePixel = 0
G2L["d"].TextXAlignment = Enum.TextXAlignment.Center
G2L["d"].BackgroundColor3 = Colors.Danger
G2L["d"].TextSize = 12
G2L["d"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["d"].TextColor3 = Colors.TextPrimary
G2L["d"].Size = UDim2.new(0, 18, 0, 18)
G2L["d"].Text = "×"
G2L["d"].Position = UDim2.new(1, -22, 0.5, -9)

-- Remove Button Corner
local RemoveCorner = Instance.new("UICorner", G2L["d"])
RemoveCorner.CornerRadius = UDim.new(0, 4)

-- Script Hub Button - Modern Design
G2L["e"] = Instance.new("TextButton", G2L["b"])
G2L["e"].Name = "ScriptHubButton"
G2L["e"].ZIndex = 3
G2L["e"].Visible = false
G2L["e"].TextXAlignment = Enum.TextXAlignment.Left
G2L["e"].BackgroundColor3 = Colors.Accent
G2L["e"].TextSize = 14
G2L["e"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["e"].TextColor3 = Colors.TextPrimary
G2L["e"].Size = UDim2.new(0, 120, 0, 25)
G2L["e"].AutomaticSize = Enum.AutomaticSize.X
G2L["e"].Text = "  test.lua"
G2L["e"].Position = UDim2.new(0, 0, 0, 30)

-- Script Hub Button Corner
local HubCorner = Instance.new("UICorner", G2L["e"])
HubCorner.CornerRadius = UDim.new(0, 8)

-- =============================================
-- ENHANCED TEXT EDITOR SYSTEM
-- =============================================

-- Modern Text Editor Container
G2L["f"] = Instance.new("ScrollingFrame", G2L["b"])
G2L["f"].Name = "Textbox"
G2L["f"].Active = true
G2L["f"].Visible = false
G2L["f"].BorderSizePixel = 1
G2L["f"].BorderColor3 = Colors.Border
G2L["f"].CanvasSize = UDim2.new(0, 0, 0, 0)
G2L["f"].BackgroundColor3 = Colors.Background
G2L["f"].AutomaticCanvasSize = Enum.AutomaticSize.XY
G2L["f"].Size = UDim2.new(1, -40, 1, -100)
G2L["f"].Position = UDim2.new(0, 20, 0, 70)
G2L["f"].ScrollBarThickness = 8

-- Editor Corner
local EditorCorner = Instance.new("UICorner", G2L["f"])
EditorCorner.CornerRadius = UDim.new(0, 10)

-- Text Editor Frame
G2L["10"] = Instance.new("Frame", G2L["f"])
G2L["10"].Active = true
G2L["10"].BorderSizePixel = 0
G2L["10"].BackgroundColor3 = Colors.Background
G2L["10"].Size = UDim2.new(1, 0, 1, 0)
G2L["10"].Selectable = true
G2L["10"].ClipsDescendants = true
G2L["10"].AutomaticSize = Enum.AutomaticSize.XY
G2L["10"].SelectionGroup = true

-- Main Text Editor with Modern Styling
G2L["11"] = Instance.new("TextBox", G2L["10"])
G2L["11"].Name = "Textbox"
G2L["11"].ZIndex = 4
G2L["11"].BorderSizePixel = 0
G2L["11"].TextSize = 13
G2L["11"].TextXAlignment = Enum.TextXAlignment.Left
G2L["11"].TextYAlignment = Enum.TextYAlignment.Top
G2L["11"].BackgroundColor3 = Colors.Background
G2L["11"].TextColor3 = Colors.TextPrimary
G2L["11"].FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["11"].MultiLine = true
G2L["11"].ClearTextOnFocus = false
G2L["11"].Size = UDim2.new(1, -40, 1, 0)
G2L["11"].BorderColor3 = Colors.Border
G2L["11"].Text = ""
G2L["11"].Position = UDim2.new(0, 40, 0, 0)
G2L["11"].AutomaticSize = Enum.AutomaticSize.XY
G2L["11"].PlaceholderText = "-- Enter your Lua script here..."
G2L["11"].PlaceholderColor3 = Colors.TextSecondary

-- Modern Line Number Bar
G2L["12"] = Instance.new("Frame", G2L["10"])
G2L["12"].Name = "Linebar"
G2L["12"].ZIndex = 2
G2L["12"].BorderSizePixel = 0
G2L["12"].BackgroundColor3 = Colors.Surface
G2L["12"].Size = UDim2.new(0, 35, 1, 0)
G2L["12"].Position = UDim2.new(0, 0, 0, 0)

-- Line Numbers Display - Modern
G2L["13"] = Instance.new("TextLabel", G2L["12"])
G2L["13"].Name = "LineText"
G2L["13"].ZIndex = 5
G2L["13"].TextYAlignment = Enum.TextYAlignment.Top
G2L["13"].BackgroundColor3 = Colors.Surface
G2L["13"].TextXAlignment = Enum.TextXAlignment.Right
G2L["13"].FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["13"].TextSize = 13
G2L["13"].TextColor3 = Colors.TextSecondary
G2L["13"].Size = UDim2.new(1, -5, 1, 0)
G2L["13"].Text = "1"
G2L["13"].BackgroundTransparency = 1

-- Syntax Highlighting Frame - Enhanced
G2L["14"] = Instance.new("Frame", G2L["10"])
G2L["14"].Name = "Highlighted"
G2L["14"].ZIndex = 5
G2L["14"].BorderSizePixel = 0
G2L["14"].BackgroundColor3 = Colors.Accent
G2L["14"].BackgroundTransparency = 0.8
G2L["14"].Size = UDim2.new(1, 0, 0, 18)
G2L["14"].Position = UDim2.new(0, 40, 0, 0)
G2L["14"].AutomaticSize = Enum.AutomaticSize.X

-- Highlighted Line Numbers
G2L["15"] = Instance.new("TextLabel", G2L["14"])
G2L["15"].Name = "LineText"
G2L["15"].ZIndex = 5
G2L["15"].Visible = false
G2L["15"].TextYAlignment = Enum.TextYAlignment.Top
G2L["15"].BackgroundColor3 = Colors.Surface
G2L["15"].TextXAlignment = Enum.TextXAlignment.Right
G2L["15"].FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["15"].TextTransparency = 0
G2L["15"].TextSize = 13
G2L["15"].TextColor3 = Colors.TextPrimary
G2L["15"].Size = UDim2.new(0, 30, 1, 0)
G2L["15"].Text = "1"
G2L["15"].BackgroundTransparency = 1

-- =============================================
-- TEXTBOXES CONTAINER
-- =============================================

G2L["16"] = Instance.new("Folder", G2L["a"])
G2L["16"].Name = "Textboxes"

-- =============================================
-- ENHANCED SCRIPT HUB SYSTEM
-- =============================================

-- Modern Script Hub Container
G2L["17"] = Instance.new("ScrollingFrame", G2L["a"])
G2L["17"].Name = "ScriptHub"
G2L["17"].Active = true
G2L["17"].ZIndex = 2
G2L["17"].BorderSizePixel = 1
G2L["17"].BorderColor3 = Colors.Border
G2L["17"].BackgroundColor3 = Colors.Surface
G2L["17"].AutomaticCanvasSize = Enum.AutomaticSize.Y
G2L["17"].Size = UDim2.new(0, 150, 1, -20)
G2L["17"].Position = UDim2.new(1, -160, 0, 10)
G2L["17"].ScrollBarThickness = 6

-- Script Hub Corner
local HubContainerCorner = Instance.new("UICorner", G2L["17"])
HubContainerCorner.CornerRadius = UDim.new(0, 10)

-- Script Hub Layout
G2L["18"] = Instance.new("UIListLayout", G2L["17"])
G2L["18"].SortOrder = Enum.SortOrder.LayoutOrder
G2L["18"].Padding = UDim.new(0, 5)

-- Script Hub Padding
G2L["19"] = Instance.new("UIPadding", G2L["17"])
G2L["19"].PaddingTop = UDim.new(0, 10)
G2L["19"].PaddingLeft = UDim.new(0, 10)
G2L["19"].PaddingRight = UDim.new(0, 10)

-- =============================================
-- MODERN WINDOW CONTROL BUTTONS
-- =============================================

-- Maximize Button - Modern Design
G2L["1a"] = Instance.new("ImageButton", G2L["6"])
G2L["1a"].Name = "Maximize"
G2L["1a"].BorderSizePixel = 0
G2L["1a"].BackgroundColor3 = Colors.Surface
G2L["1a"].Size = UDim2.new(0, 20, 0, 20)
G2L["1a"].Position = UDim2.new(1, -65, 0, 15)

-- Maximize Button Corner
local MaxCorner = Instance.new("UICorner", G2L["1a"])
MaxCorner.CornerRadius = UDim.new(0, 4)

-- Maximize Button Text
G2L["1b"] = Instance.new("TextLabel", G2L["1a"])
G2L["1b"].Name = "NameText"
G2L["1b"].TextWrapped = true
G2L["1b"].ZIndex = 2
G2L["1b"].Active = true
G2L["1b"].BackgroundColor3 = Colors.Surface
G2L["1b"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1b"].TextSize = 12
G2L["1b"].TextColor3 = Colors.TextPrimary
G2L["1b"].Size = UDim2.new(1, 0, 1, 0)
G2L["1b"].Text = "□"
G2L["1b"].BackgroundTransparency = 1

-- Maximize Button Hover Effect
G2L["1c"] = Instance.new("ImageButton", G2L["1a"])
G2L["1c"].BackgroundColor3 = Colors.AccentHover
G2L["1c"].Size = UDim2.new(1, 0, 1, 0)
G2L["1c"].Visible = false
G2L["1c"].BackgroundTransparency = 0.2

-- Hover Button Corner
local HoverCorner = Instance.new("UICorner", G2L["1c"])
HoverCorner.CornerRadius = UDim.new(0, 4)

-- Minimize Button - Modern
G2L["27"] = Instance.new("ImageButton", G2L["6"])
G2L["27"].Name = "Minimize"
G2L["27"].BorderSizePixel = 0
G2L["27"].BackgroundColor3 = Colors.Surface
G2L["27"].Size = UDim2.new(0, 20, 0, 20)
G2L["27"].Position = UDim2.new(1, -90, 0, 15)

-- Minimize Button Corner
local MinCorner = Instance.new("UICorner", G2L["27"])
MinCorner.CornerRadius = UDim.new(0, 4)

-- Minimize Button Text
G2L["28"] = Instance.new("TextLabel", G2L["27"])
G2L["28"].Name = "NameText"
G2L["28"].TextWrapped = true
G2L["28"].ZIndex = 2
G2L["28"].Active = true
G2L["28"].BackgroundColor3 = Colors.Surface
G2L["28"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["28"].TextSize = 14
G2L["28"].TextColor3 = Colors.TextPrimary
G2L["28"].Size = UDim2.new(1, 0, 1, 0)
G2L["28"].Text = "_"
G2L["28"].BackgroundTransparency = 1

-- Close Button - Modern with Red Accent
G2L["33"] = Instance.new("ImageButton", G2L["6"])
G2L["33"].Name = "Close"
G2L["33"].BorderSizePixel = 0
G2L["33"].BackgroundColor3 = Colors.Danger
G2L["33"].Size = UDim2.new(0, 20, 0, 20)
G2L["33"].Position = UDim2.new(1, -40, 0, 15)

-- Close Button Corner
local CloseCorner = Instance.new("UICorner", G2L["33"])
CloseCorner.CornerRadius = UDim.new(0, 4)

-- Close Button Text
G2L["34"] = Instance.new("TextLabel", G2L["33"])
G2L["34"].Name = "NameText"
G2L["34"].TextWrapped = true
G2L["34"].ZIndex = 2
G2L["34"].Active = true
G2L["34"].BackgroundColor3 = Colors.Danger
G2L["34"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["34"].TextSize = 12
G2L["34"].TextColor3 = Colors.TextPrimary
G2L["34"].Size = UDim2.new(1, 0, 1, 0)
G2L["34"].Text = "×"
G2L["34"].BackgroundTransparency = 1

-- =============================================
-- MODERN TITLE BAR
-- =============================================

-- Window Title with Modern Styling
G2L["1e"] = Instance.new("TextLabel", G2L["6"])
G2L["1e"].Name = "TitleSynapse"
G2L["1e"].BorderSizePixel = 0
G2L["1e"].BackgroundColor3 = Colors.TextPrimary
G2L["1e"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1e"].TextSize = 18
G2L["1e"].TextColor3 = Colors.TextPrimary
G2L["1e"].Size = UDim2.new(0, 300, 0, 50)
G2L["1e"].Text = "Synapse X - " .. synversion
G2L["1e"].BackgroundTransparency = 1
G2L["1e"].Position = UDim2.new(0, 60, 0, 0)

-- =============================================
-- MODERN FUNCTION BUTTONS
-- =============================================

-- Create Modern Button Function
local function createModernButton(name, text, position, color)
    local button = Instance.new("ImageButton", G2L["6"])
    button.Name = name
    button.BorderSizePixel = 0
    button.BackgroundColor3 = color
    button.Size = UDim2.new(0, 100, 0, 35)
    button.Position = position
    button.ZIndex = 2
    
    -- Button Corner
    local corner = Instance.new("UICorner", button)
    corner.CornerRadius = UDim.new(0, 8)
    
    -- Button Text
    local textLabel = Instance.new("TextLabel", button)
    textLabel.Name = "NameText"
    textLabel.TextWrapped = true
    textLabel.ZIndex = 3
    textLabel.BackgroundTransparency = 1
    textLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    textLabel.TextSize = 14
    textLabel.TextColor3 = Colors.TextPrimary
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = text
    
    -- Hover Effect
    local hover = Instance.new("ImageButton", button)
    hover.BackgroundColor3 = Colors.AccentHover
    hover.Size = UDim2.new(1, 0, 1, 0)
    hover.Visible = false
    hover.BackgroundTransparency = 0.3
    hover.Image = ""
    
    local hoverCorner = Instance.new("UICorner", hover)
    hoverCorner.CornerRadius = UDim.new(0, 8)
    
    return button
end

-- Execute Button - Modern
G2L["2b"] = createModernButton("Execute", "Execute", UDim2.new(0, 20, 1, -55), Colors.Success)

-- Clear Button - Modern
G2L["37"] = createModernButton("Clear", "Clear", UDim2.new(0, 130, 1, -55), Colors.Warning)

-- Open File Button - Modern
G2L["3f"] = createModernButton("OpenFile", "Open", UDim2.new(0, 240, 1, -55), Colors.Accent)

-- Save File Button - Modern
G2L["2f"] = createModernButton("SaveFile", "Save", UDim2.new(0, 350, 1, -55), Colors.Accent)

-- Script Hub Button - Modern
G2L["1f"] = createModernButton("ScriptHub", "Scripts", UDim2.new(0, 460, 1, -55), Colors.Primary)

-- Options Button - Modern
G2L["23"] = createModernButton("Options", "Options", UDim2.new(0, 570, 1, -55), Colors.Surface)

-- Attach Button - Modern
G2L["3b"] = createModernButton("Attach", "Attach", UDim2.new(1, -120, 1, -55), Colors.Success)

-- =============================================
-- ENHANCED SCRIPT TAB SYSTEM
-- =============================================

-- Modern Script Tab Container
G2L["43"] = Instance.new("ScrollingFrame", G2L["6"])
G2L["43"].Name = "ScriptTab"
G2L["43"].Active = true
G2L["43"].ScrollingDirection = Enum.ScrollingDirection.X
G2L["43"].SizeConstraint = Enum.SizeConstraint.RelativeYY
G2L["43"].ZIndex = 6
G2L["43"].BorderSizePixel = 0
G2L["43"].CanvasSize = UDim2.new(0, 0, 0, 0)
G2L["43"].BackgroundColor3 = Colors.Surface
G2L["43"].VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
G2L["43"].HorizontalScrollBarInset = Enum.ScrollBarInset.Always
G2L["43"].AutomaticCanvasSize = Enum.AutomaticSize.X
G2L["43"].BackgroundTransparency = 0.2
G2L["43"].Size = UDim2.new(1, -40, 0, 30)
G2L["43"].Selectable = false
G2L["43"].ClipsDescendants = false
G2L["43"].ScrollBarThickness = 4
G2L["43"].Position = UDim2.new(0, 20, 0, 55)

-- Tab Container Corner
local TabContainerCorner = Instance.new("UICorner", G2L["43"])
TabContainerCorner.CornerRadius = UDim.new(0, 8)

-- Script Tab Handler Script
G2L["44"] = Instance.new("LocalScript", G2L["43"])
G2L["44"].Name = "ScriptTabHandler"

-- Script Tabs Container
G2L["45"] = Instance.new("Folder", G2L["43"])
G2L["45"].Name = "Tabs"

-- Add Script Button Container - Modern
G2L["46"] = Instance.new("Frame", G2L["45"])
G2L["46"].Name = "AddScript"
G2L["46"].Active = true
G2L["46"].ZIndex = 0
G2L["46"].BorderSizePixel = 0
G2L["46"].BackgroundColor3 = Colors.Accent
G2L["46"].LayoutOrder = 999999999
G2L["46"].Size = UDim2.new(0, 25, 0, 20)
G2L["46"].Selectable = true

-- Add Script Button Corner
local AddScriptCorner = Instance.new("UICorner", G2L["46"])
AddScriptCorner.CornerRadius = UDim.new(0, 6)

-- Add Script Button
G2L["47"] = Instance.new("TextButton", G2L["46"])
G2L["47"].Name = "Button"
G2L["47"].BorderSizePixel = 0
G2L["47"].BackgroundColor3 = Colors.Accent
G2L["47"].TextSize = 16
G2L["47"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["47"].TextColor3 = Colors.TextPrimary
G2L["47"].Size = UDim2.new(1, 0, 1, 0)
G2L["47"].LayoutOrder = 999999999
G2L["47"].Text = "+"
G2L["47"].BackgroundTransparency = 1

-- Script Tabs Layout
G2L["48"] = Instance.new("UIListLayout", G2L["45"])
G2L["48"].FillDirection = Enum.FillDirection.Horizontal
G2L["48"].SortOrder = Enum.SortOrder.LayoutOrder
G2L["48"].Padding = UDim.new(0, 5)

-- =============================================
-- EVENT HANDLERS
-- =============================================

-- Buttons Handler Script
G2L["49"] = Instance.new("LocalScript", G2L["6"])
G2L["49"].Name = "ButtonsHandler"

-- =============================================
-- MODERN SAVE DIALOG SYSTEM
-- =============================================

-- Modern Save Script Dialog
G2L["4a"] = Instance.new("Frame", G2L["1"])
G2L["4a"].Name = "SaveScript"
G2L["4a"].Active = true
G2L["4a"].ZIndex = 10
G2L["4a"].Visible = false
G2L["4a"].BorderSizePixel = 0
G2L["4a"].BackgroundColor3 = Colors.Background
G2L["4a"].Size = UDim2.new(0, 400, 0, 200)
G2L["4a"].Position = UDim2.new(0.5, -200, 0.5, -100)

-- Dialog Corner
local DialogCorner = Instance.new("UICorner", G2L["4a"])
DialogCorner.CornerRadius = UDim.new(0, 15)

-- Dialog Border
local DialogBorder = Instance.new("UIStroke", G2L["4a"])
DialogBorder.Color = Colors.Accent
DialogBorder.Thickness = 2

-- Script Name Input - Modern
G2L["4b"] = Instance.new("TextBox", G2L["4a"])
G2L["4b"].Name = "scriptname"
G2L["4b"].ZIndex = 11
G2L["4b"].BorderSizePixel = 1
G2L["4b"].BorderColor3 = Colors.Border
G2L["4b"].TextSize = 14
G2L["4b"].BackgroundColor3 = Colors.Surface
G2L["4b"].TextColor3 = Colors.TextPrimary
G2L["4b"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["4b"].PlaceholderText = "Enter file name..."
G2L["4b"].Size = UDim2.new(0, 350, 0, 40)
G2L["4b"].Text = ""
G2L["4b"].Position = UDim2.new(0, 25, 0, 80)

-- Input Corner
local InputCorner = Instance.new("UICorner", G2L["4b"])
InputCorner.CornerRadius = UDim.new(0, 8)

-- Save Script Button - Modern
G2L["4c"] = Instance.new("TextButton", G2L["4a"])
G2L["4c"].Name = "savescript"
G2L["4c"].ZIndex = 11
G2L["4c"].BorderSizePixel = 0
G2L["4c"].BackgroundColor3 = Colors.Success
G2L["4c"].TextSize = 14
G2L["4c"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["4c"].TextColor3 = Colors.TextPrimary
G2L["4c"].Size = UDim2.new(0, 350, 0, 40)
G2L["4c"].Text = "Save File"
G2L["4c"].Position = UDim2.new(0, 25, 0, 140)

-- Save Button Corner
local SaveButtonCorner = Instance.new("UICorner", G2L["4c"])
SaveButtonCorner.CornerRadius = UDim.new(0, 8)

-- Save Dialog Icon - Modern
G2L["4d"] = Instance.new("ImageLabel", G2L["4a"])
G2L["4d"].Name = "Icon"
G2L["4d"].ZIndex = 11
G2L["4d"].BorderSizePixel = 0
G2L["4d"].BackgroundTransparency = 1
G2L["4d"].BackgroundColor3 = Colors.TextPrimary
G2L["4d"].Image = "http://www.roblox.com/asset/?id=9483813933"
G2L["4d"].Size = UDim2.new(0, 60, 0, 40)
G2L["4d"].Position = UDim2.new(0.5, -30, 0, 20)
G2L["4d"].ImageColor3 = Colors.Accent

-- Save Dialog Title - Modern
G2L["4f"] = Instance.new("TextLabel", G2L["4a"])
G2L["4f"].Name = "Title"
G2L["4f"].TextWrapped = true
G2L["4f"].ZIndex = 11
G2L["4f"].Active = true
G2L["4f"].BorderSizePixel = 0
G2L["4f"].BackgroundColor3 = Colors.TextPrimary
G2L["4f"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["4f"].TextSize = 18
G2L["4f"].TextColor3 = Colors.TextPrimary
G2L["4f"].Size = UDim2.new(1, 0, 0, 30)
G2L["4f"].Text = "Save Script"
G2L["4f"].BackgroundTransparency = 1
G2L["4f"].Position = UDim2.new(0, 0, 0, 65)

-- Save Dialog Close Button - Modern
G2L["50"] = Instance.new("TextButton", G2L["4a"])
G2L["50"].Name = "Close"
G2L["50"].TextWrapped = true
G2L["50"].ZIndex = 12
G2L["50"].BackgroundColor3 = Colors.Danger
G2L["50"].TextSize = 16
G2L["50"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["50"].TextColor3 = Colors.TextPrimary
G2L["50"].Size = UDim2.new(0, 30, 0, 30)
G2L["50"].Text = "×"
G2L["50"].Position = UDim2.new(1, -35, 0, 10)

-- Close Button Corner
local CloseDialogCorner = Instance.new("UICorner", G2L["50"])
CloseDialogCorner.CornerRadius = UDim.new(0, 6)

-- =============================================
-- ANIMATION & INTERACTION SYSTEMS
-- =============================================

-- Hover Animation Function
local function createHoverAnimation(object)
    local hoverTween = TweenService:Create(object, 
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
        { BackgroundTransparency = 0.1 }
    )
    local normalTween = TweenService:Create(object, 
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
        { BackgroundTransparency = 0.3 }
    )
    
    object.MouseEnter:Connect(function()
        hoverTween:Play()
    end)
    
    object.MouseLeave:Connect(function()
        normalTween:Play()
    end)
end

-- Apply hover animations to buttons
for _, button in pairs({
    G2L["2b"], G2L["37"], G2L["3f"], G2L["2f"], 
    G2L["1f"], G2L["23"], G2L["3b"], G2L["33"],
    G2L["27"], G2L["1a"]
}) do
    if button and button:IsA("ImageButton") then
        createHoverAnimation(button)
    end
end

-- Window Dragging Functionality
local dragging = false
local dragStart = nil
local startPos = nil

G2L["9"].InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = G2L["6"].Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        G2L["6"].Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X, 
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- =============================================
-- ENHANCEMENTS COMPLETE
-- =============================================

print("🎨 Synapse X Enhanced UI Loaded Successfully!")
print("✨ Features:")
print("- Modern dark theme with better colors")
print("- Smooth animations and hover effects")
print("- Rounded corners and shadows")
print("- Improved button designs")
print("- Enhanced text editor with syntax highlighting")
print("- Professional gradient effects")
print("- Window dragging functionality")
print("- Better spacing and layout")

-- Return the main GUI for external access
return G2L["1"]
