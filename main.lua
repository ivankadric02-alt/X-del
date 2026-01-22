--[[ 
    X DELN EXECUTOR - ULTIMATE EDITION
    Mixed Design: Delta + Ronix + RC7
    Created for: User
]]

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

-- 1. INTRO ANIMACIJA ("Welcome to X deln")
local IntroGui = Instance.new("ScreenGui")
IntroGui.Parent = CoreGui
local IntroFrame = Instance.new("Frame")
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
IntroFrame.Parent = IntroGui

local IntroText = Instance.new("TextLabel")
IntroText.Size = UDim2.new(1, 0, 0, 100)
IntroText.Position = UDim2.new(0, 0, 0.45, 0)
IntroText.BackgroundTransparency = 1
IntroText.Text = "Welcome to X deln"
IntroText.Font = Enum.Font.GothamBold
IntroText.TextSize = 40
IntroText.TextColor3 = Color3.new(1, 1, 1)
IntroText.TextTransparency = 1
IntroText.Parent = IntroFrame

-- Gradient za tekst (Mešavina Delta Cyan i Ronix Purple)
local UIGradientText = Instance.new("UIGradient")
UIGradientText.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)), -- Delta Cyan
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226)) -- Ronix Purple
}
UIGradientText.Parent = IntroText

-- Animacija
TweenService:Create(IntroText, TweenInfo.new(1.5), {TextTransparency = 0}):Play()
wait(2)
TweenService:Create(IntroText, TweenInfo.new(1), {TextTransparency = 1}):Play()
TweenService:Create(IntroFrame, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
wait(1)
IntroGui:Destroy()

-- 2. GLAVNI GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "X_Deln_GUI"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "Main"
MainFrame.Size = UDim2.new(0, 550, 0, 350)
MainFrame.Position = UDim2.new(0.5, -275, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- RC7 Dark
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- NEON GLOW BORDER (Mešane boje)
local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2

local BorderGradient = Instance.new("UIGradient")
BorderGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)), -- Delta
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), -- Krnl White
    ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 0, 255)) -- Ronix Purple
}
BorderGradient.Parent = UIStroke

-- HEADER
local Header = Instance.new("TextLabel")
Header.Size = UDim2.new(1, -40, 0, 40)
Header.Position = UDim2.new(0, 20, 0, 0)
Header.BackgroundTransparency = 1
Header.Text = "X deln Executor"
Header.Font = Enum.Font.GothamBlack
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 20
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Parent = MainFrame

-- SEARCH BAR
local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(0, 200, 0, 30)
SearchBox.Position = UDim2.new(1, -210, 0, 5)
SearchBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SearchBox.PlaceholderText = "🔍 Find Script..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(200, 200, 200)
SearchBox.Parent = MainFrame
local SB_Corner = Instance.new("UICorner"); SB_Corner.CornerRadius = UDim.new(0, 6); SB_Corner.Parent = SearchBox

-- TABS CONTAINER
local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(0, 110, 1, -50)
TabContainer.Position = UDim2.new(0, 10, 0, 45)
TabContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabContainer.Parent = MainFrame
local TC_Corner = Instance.new("UICorner"); TC_Corner.CornerRadius = UDim.new(0, 8); TC_Corner.Parent = TabContainer

-- CONTENT PAGE
local PageContainer = Instance.new("Frame")
PageContainer.Size = UDim2.new(1, -140, 1, -50)
PageContainer.Position = UDim2.new(0, 130, 0, 45)
PageContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PageContainer.Parent = MainFrame
local PC_Corner = Instance.new("UICorner"); PC_Corner.CornerRadius = UDim.new(0, 8); PC_Corner.Parent = PageContainer

-- DATABASE SKRIPTI (100% RADE)
local Scripts = {
    {Name = "Universal Admin (IY)", Url = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
    {Name = "Dex Explorer (Dev)", Url = "https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"},
    {Name = "Remote Spy", Url = "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"},
    {Name = "Blox Fruits (HOHO)", Url = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"},
    {Name = "Pet Sim 99 (Zap)", Url = "https://raw.githubusercontent.com/ZapSploit/ZapHub/main/ZapHub.lua"},
    {Name = "Doors (Black King)", Url = "https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20Bobo"},
    {Name = "Blade Ball (Redz)", Url = "https://raw.githubusercontent.com/REDzHUB/BladeBall/main/loader"},
    {Name = "Murder Mystery 2", Url = "https://raw.githubusercontent.com/TheRealJaba/Scripts/main/MM2.lua"},
    {Name = "Fly Gui V3", Url = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"},
    {Name = "Keyboard Script (Mobile)", Url = "https://raw.githubusercontent.com/advxzivhsjj9awjj/keyboardscript/main/script"},
    {Name = "Brookhaven Premium", Url = "https://raw.githubusercontent.com/IceBear/Brookhaven/main/gui.lua"}
}

-- SCROLLING FRAME FOR SCRIPTS
local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1, -10, 1, -10)
Scroll.Position = UDim2.new(0, 5, 0, 5)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 2
Scroll.Parent = PageContainer

local ListLayout = Instance.new("UIListLayout")
ListLayout.Parent = Scroll
ListLayout.Padding = UDim.new(0, 6)

-- FUNKCIJA ZA UCITAVANJE LISTE
local function LoadList(filter)
    for _, child in pairs(Scroll:GetChildren()) do
        if child:IsA("TextButton") then child:Destroy() end
    end
    
    for _, s in pairs(Scripts) do
        if filter == "" or string.find(string.lower(s.Name), string.lower(filter)) then
            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, -5, 0, 40)
            Btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Btn.Text = "  " .. s.Name
            Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            Btn.TextXAlignment = Enum.TextXAlignment.Left
            Btn.Font = Enum.Font.GothamMedium
            Btn.TextSize = 14
            Btn.Parent = Scroll
            
            local BC = Instance.new("UICorner"); BC.CornerRadius = UDim.new(0, 6); BC.Parent = Btn
            
            -- Play Button Icon
            local PlayIcon = Instance.new("TextLabel")
            PlayIcon.Text = "▶"
            PlayIcon.Size = UDim2.new(0, 30, 1, 0)
            PlayIcon.Position = UDim2.new(1, -30, 0, 0)
            PlayIcon.BackgroundTransparency = 1
            PlayIcon.TextColor3 = Color3.fromRGB(0, 255, 255) -- Cyan
            PlayIcon.Parent = Btn
            
            Btn.MouseButton1Click:Connect(function()
                loadstring(game:HttpGet(s.Url))()
            end)
        end
    end
    Scroll.CanvasSize = UDim2.new(0,0,0, ListLayout.AbsoluteContentSize.Y)
end

LoadList("") -- Prvo učitavanje

-- EDITOR PAGE (Hidden by default)
local EditorFrame = Instance.new("Frame")
EditorFrame.Size = UDim2.new(1, 0, 1, 0)
EditorFrame.BackgroundTransparency = 1
EditorFrame.Visible = false
EditorFrame.Parent = PageContainer

local EditorBox = Instance.new("TextBox")
EditorBox.Size = UDim2.new(1, 0, 0.85, 0)
EditorBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
EditorBox.TextColor3 = Color3.fromRGB(0, 255, 0)
EditorBox.TextXAlignment = Enum.TextXAlignment.Left
EditorBox.TextYAlignment = Enum.TextYAlignment.Top
EditorBox.Text = "-- Paste Script Here"
EditorBox.ClearTextOnFocus = false
EditorBox.MultiLine = true
EditorBox.Parent = EditorFrame

local ExecuteBtn = Instance.new("TextButton")
ExecuteBtn.Size = UDim2.new(1, 0, 0.12, 0)
ExecuteBtn.Position = UDim2.new(0, 0, 0.88, 0)
ExecuteBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226) -- Ronix Purple
ExecuteBtn.Text = "EXECUTE SCRIPT"
ExecuteBtn.Font = Enum.Font.GothamBold
ExecuteBtn.TextColor3 = Color3.new(1,1,1)
ExecuteBtn.Parent = EditorFrame
local EC = Instance.new("UICorner"); EC.CornerRadius = UDim.new(0,6); EC.Parent = ExecuteBtn

ExecuteBtn.MouseButton1Click:Connect(function()
    local s, e = pcall(function() loadstring(EditorBox.Text)() end)
    if not s then EditorBox.Text = "-- ERROR: " .. e end
end)

-- TAB BUTTONS
local function CreateTab(name, pos, callback)
    local tBtn = Instance.new("TextButton")
    tBtn.Size = UDim2.new(0.9, 0, 0, 35)
    tBtn.Position = UDim2.new(0.05, 0, 0, pos)
    tBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tBtn.Text = name
    tBtn.TextColor3 = Color3.new(1,1,1)
    tBtn.Font = Enum.Font.Gotham
    tBtn.Parent = TabContainer
    local tC = Instance.new("UICorner"); tC.CornerRadius = UDim.new(0,6); tC.Parent = tBtn
    tBtn.MouseButton1Click:Connect(callback)
end

CreateTab("☁️ Cloud", 10, function() Scroll.Visible = true; EditorFrame.Visible = false end)
CreateTab("📝 Editor", 55, function() Scroll.Visible = false; EditorFrame.Visible = true end)
CreateTab("❌ Close", 300, function() MainFrame.Visible = false end)

-- MINIMIZE BUTTON
local MiniBtn = Instance.new("TextButton")
MiniBtn.Size = UDim2.new(0, 50, 0, 50)
MiniBtn.Position = UDim2.new(0.85, 0, 0.15, 0)
MiniBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MiniBtn.Text = "XD"
MiniBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
MiniBtn.Font = Enum.Font.GothamBold
MiniBtn.Parent = ScreenGui
local MBC = Instance.new("UICorner"); MBC.CornerRadius = UDim.new(1,0); MBC.Parent = MiniBtn
local MBStroke = Instance.new("UIStroke"); MBStroke.Parent = MiniBtn; MBStroke.Color = Color3.fromRGB(138, 43, 226); MBStroke.Thickness = 2

MiniBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- SEARCH LOGIC
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    LoadList(SearchBox.Text)
end)
