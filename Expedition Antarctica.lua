print('.')
local RS = game:GetService('ReplicatedStorage')
local LP = game:GetService("Players").LocalPlayer
local JobId = game.JobId
local PlaceId = game.PlaceId
local Remote = RS:WaitForChild("ClaimReward")
local TeleportService = game:GetService("TeleportService")
local Stat = LP:WaitForChild(["Expedition Data"])
local function Fire(obj)
    obj:FireServer()
end

Fire(Remote)

queue_on_teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/scytheXlol/Scripts/refs/heads/main/Expedition%20Antarctica.lua"))()]])

Stat.Coins.Changed:Connect(function(Value)
    TeleportService:TeleportToPlaceInstance(PlaceId, JobId)
end)
