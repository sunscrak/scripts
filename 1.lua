local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local SNAP_ANGLE = math.rad(45)

local function handleCameraSnap(actionName, inputState, inputObject)
    if inputState ~= Enum.UserInputState.Begin then return end
    
    local Camera = Workspace.CurrentCamera
    if not Camera then return Enum.ContextActionResult.Sink end
    
    if actionName == "SnapLeft" then
        Camera.CFrame = Camera.CFrame * CFrame.Angles(0, SNAP_ANGLE, 0)
    elseif actionName == "SnapRight" then
        Camera.CFrame = Camera.CFrame * CFrame.Angles(0, -SNAP_ANGLE, 0)
    end
    
    return Enum.ContextActionResult.Sink
end

local function bindKeys()
    ContextActionService:UnbindAction("SnapLeft")
    ContextActionService:UnbindAction("SnapRight")
    
    ContextActionService:BindActionAtPriority(
        "SnapLeft", 
        handleCameraSnap, 
        false, 
        Enum.ContextActionPriority.High.Value, 
        Enum.KeyCode.Comma
    )
    ContextActionService:BindActionAtPriority(
        "SnapRight", 
        handleCameraSnap, 
        false, 
        Enum.ContextActionPriority.High.Value, 
        Enum.KeyCode.Period
    )
end

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    bindKeys()
end)

bindKeys()
