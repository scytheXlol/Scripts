local RS = game:GetService('ReplicatedStorage')
local JobId = game.JobId
local PlaceId = game.PlaceId
local Remote = RS:WaitForChild("ClaimReward")
local TeleportService = game:GetService("TeleportService")
local function Fire(obj)
    obj:FireServer()
end

Fire(Remote)

queue_on_teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/scytheXlol/Scripts/refs/heads/main/Expedition%20Antarctica.lua"))()]])

TeleportService:TeleportToPlaceInstance(PlaceId, JobId)
