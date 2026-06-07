local ContextActionService = game:GetService("ContextActionService")
local Workspace = game:GetService("Workspace")

local SNAP_ANGLE = math.rad(45) -- 45 degrees in radians
local Camera = Workspace.CurrentCamera

local function handleCameraSnap(actionName, inputState, inputObject)
    -- Only trigger on the initial key press down
    if inputState ~= Enum.UserInputState.Begin then return end
    
    if actionName == "SnapLeft" then
        Camera.CFrame = Camera.CFrame * CFrame.Angles(0, SNAP_ANGLE, 0)
    elseif actionName == "SnapRight" then
        Camera.CFrame = Camera.CFrame * CFrame.Angles(0, -SNAP_ANGLE, 0)
    end
    
    -- Crucial: Returns ContextActionResult.Sink to block Roblox's default Emote menu
    return Enum.ContextActionResult.Sink
end

-- Bind the keys and force them to override default game actions
ContextActionService:BindAction("SnapLeft", handleCameraSnap, false, Enum.KeyCode.Comma)
ContextActionService:BindAction("SnapRight", handleCameraSnap, false, Enum.KeyCode.Period)
