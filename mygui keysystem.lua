
local ScreenGui = Instance.new("ScreenGui")
local KeyLoin = Instance.new("Frame")
local Design = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Design_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Submit = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIScale = Instance.new("UIScale")
local KeyLink = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIScale_2 = Instance.new("UIScale")
local Check = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Main = Instance.new("Frame")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



KeyLoin.Name = "KeyLoin"
KeyLoin.Parent = ScreenGui
KeyLoin.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
KeyLoin.Position = UDim2.new(0.261398196, 0, 0.147509575, 0)
KeyLoin.Size = UDim2.new(0, 470, 0, 276)

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.145896658, 0, 0.272030652, 0)
Main.Size = UDim2.new(0, 100, 0, 100)
Main.Visible = false

Design.Name = "Design"
Design.Parent = KeyLoin
Design.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Design.BorderSizePixel = 0
Design.Position = UDim2.new(0, 0, 0.938405812, 0)
Design.Size = UDim2.new(0, 470, 0, 17)

UICorner.Parent = Design

UICorner_2.Parent = KeyLoin

Design_2.Name = "Design"
Design_2.Parent = KeyLoin
Design_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Design_2.BorderSizePixel = 0
Design_2.Size = UDim2.new(0, 470, 0, 17)

UICorner_3.Parent = Design_2



Submit.Name = "Submit"
Submit.Parent = KeyLoin
Submit.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Submit.BorderSizePixel = 0
Submit.Position = UDim2.new(0.538297892, 0, 0.597826064, 0)
Submit.Size = UDim2.new(0, 200, 0, 50)
Submit.Font = Enum.Font.SourceSans
Submit.Text = "Submit"
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
Submit.TextSize = 44.000
Submit.MouseButton1Click:Connect(function()
local thing = {}

function thing:GetKey()
    return "okkid"
end

local key = thing:GetKey()

if Check.Text == key then 
KeyLoin.Visible = false
wait(0.5)
Main.Visible = true

end
    end)
UICorner_4.Parent = Submit

UITextSizeConstraint.Parent = Submit

UIScale.Parent = Submit

KeyLink.Name = "Key Link"
KeyLink.Parent = KeyLoin
KeyLink.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyLink.BorderSizePixel = 0
KeyLink.Position = UDim2.new(0.0510638356, 0, 0.597826064, 0)
KeyLink.Size = UDim2.new(0, 200, 0, 50)
KeyLink.Font = Enum.Font.SourceSans
KeyLink.Text = "Key Link"
KeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyLink.TextSize = 44.000
KeyLink.MouseButton1Click:Connect(function()
setclipboard("ok")
end)
UICorner_5.Parent = KeyLink

UITextSizeConstraint_2.Parent = KeyLink

UIScale_2.Parent = KeyLink

Check.Name = "Check"
Check.Parent = KeyLoin
Check.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Check.BorderSizePixel = 0
Check.Position = UDim2.new(0.159574479, 0, 0.322463781, 0)
Check.Size = UDim2.new(0, 321, 0, 50)
Check.Font = Enum.Font.SourceSans
Check.Text = "	Enter Key Here"
Check.TextColor3 = Color3.fromRGB(255, 255, 255)
Check.TextSize = 34.000

TextLabel.Parent = KeyLoin
TextLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0615941994, 0)
TextLabel.Size = UDim2.new(0, 470, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ArrowSploit Key"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 51.000



Close.Name = "Close"
Close.Parent = KeyLoin
Close.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.910942197, 0, -0.00104114413, 0)
Close.Size = UDim2.new(0, 41, 0, 17)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 37.000
Close.TextWrapped = true

UICorner.Parent = Close


