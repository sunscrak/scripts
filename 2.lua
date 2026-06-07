local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Ragdoll Stack",
   LoadingTitle = "Loading Script...",
   LoadingSubtitle = "by sunscrak",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "RagdollStackConfig",
      FileName = "BigHub"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = true
   },
   KeySystem = false
})

local TeleportTab = Window:CreateTab("Teleports", 4483362458)

local AutoBeatEnabled = false
local TallWallsEnabled = false
local SlopeEnabled = false
local BigWallEnabled = false
local PyramidStepsEnabled = false
local TowerEnabled = false
local MountainEnabled = false
local AbyssEnabled = false
local StatuesEnabled = false

TeleportTab:CreateToggle({
   Name = "Auto Beat First Walls",
   CurrentValue = false,
   Flag = "AutoBeatToggle",
   Callback = function(Value)
      AutoBeatEnabled = Value
      task.spawn(function()
         while AutoBeatEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(19.01, 10.46, -254.38)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Tall Walls",
   CurrentValue = false,
   Flag = "TallWallsToggle",
   Callback = function(Value)
      TallWallsEnabled = Value
      task.spawn(function()
         while TallWallsEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(-268.62, 13.00, 205.55)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Slope",
   CurrentValue = false,
   Flag = "SlopeToggle",
   Callback = function(Value)
      SlopeEnabled = Value
      task.spawn(function()
         while SlopeEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(118.95, 9.87, 276.91)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Big Wall",
   CurrentValue = false,
   Flag = "BigWallToggle",
   Callback = function(Value)
      BigWallEnabled = Value
      task.spawn(function()
         while BigWallEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(118.95, 9.87, 276.91)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Pyramid's Steps",
   CurrentValue = false,
   Flag = "PyramidStepsToggle",
   Callback = function(Value)
      PyramidStepsEnabled = Value
      task.spawn(function()
         while PyramidStepsEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(184.55, 212.18, 336.64)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Tower",
   CurrentValue = false,
   Flag = "TowerToggle",
   Callback = function(Value)
      TowerEnabled = Value
      task.spawn(function()
         while TowerEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(-49.56, 211.34, 338.59)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat Mountain",
   CurrentValue = false,
   Flag = "MountainToggle",
   Callback = function(Value)
      MountainEnabled = Value
      task.spawn(function()
         while MountainEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(189.35, 307.82, 397.47)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat The Abyss",
   CurrentValue = false,
   Flag = "AbyssToggle",
   Callback = function(Value)
      AbyssEnabled = Value
      task.spawn(function()
         while AbyssEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(-96.10, 9.25, 398.38)
            end
            task.wait(0.5)
         end
      end)
   end,
})

TeleportTab:CreateToggle({
   Name = "Auto Beat The Statues",
   CurrentValue = false,
   Flag = "StatuesToggle",
   Callback = function(Value)
      StatuesEnabled = Value
      task.spawn(function()
         while StatuesEnabled do
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
               player.Character.HumanoidRootPart.CFrame = CFrame.new(19.18, 411.32, 472.62)
            end
            task.wait(0.5)
         end
      end)
   end,
})

Rayfield:Notify({
   Title = "Script Loaded",
   Content = "Ready to use!",
   Duration = 5,
   Image = 4483362458,
})
