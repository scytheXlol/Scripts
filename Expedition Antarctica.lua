local RS = game:GetService('ReplicatedStorage')
local JobId = game.JobId
local PlaceId = game.PlaceId
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ClaimReward")
local TeleportService = game:GetService("TeleportService")
local function Fire(obj)
    obj:FireServer()
end

Fire(Remote)

queue_on_teleport([[loadstring(game:HttpGet(""))()]])

TeleportService:TeleportToPlaceInstance(PlaceId, JobId)
