-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Player Setup
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Main GUI Container
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

-- Main Frame Window
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 200, 0, 120)
MainFrame.Position = UDim2.new(0.5, -100, 0.1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Title Bar
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 25)
TitleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TitleLabel.Text = "Coordinates"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.Parent = MainFrame

-- Live Coordinates Display
local CoordsDisplay = Instance.new("TextLabel")
CoordsDisplay.Size = UDim2.new(1, 0, 0, 50)
CoordsDisplay.Position = UDim2.new(0, 0, 0, 30)
CoordsDisplay.Text = "X: 0, Y: 0, Z: 0"
CoordsDisplay.TextColor3 = Color3.new(1, 1, 1)
CoordsDisplay.BackgroundTransparency = 1
CoordsDisplay.Parent = MainFrame

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 50, 0, 25)
CloseButton.Position = UDim2.new(1, -50, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 0, 0)
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Copy to Clipboard Button
local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(1, -10, 0, 25)
CopyButton.Position = UDim2.new(0, 5, 1, -40)
CopyButton.Text = "Copy Coordinates"
CopyButton.TextColor3 = Color3.new(0, 1, 0)
CopyButton.Parent = MainFrame

CopyButton.MouseButton1Click:Connect(function()
    setclipboard(CoordsDisplay.Text)
end)

-- Live Update Loop
RunService.RenderStepped:Connect(function()
    if HumanoidRootPart then
        local pos = HumanoidRootPart.Position
        CoordsDisplay.Text = string.format("X: %.2f | Y: %.2f | Z: %.2f", pos.X, pos.Y, pos.Z)
    end
end)
