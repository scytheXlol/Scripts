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

local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local altimeter = playerGui:WaitForChild("Altimeter")
local imageLabel = altimeter:WaitForChild("ImageLabel")
local coinImage = imageLabel:WaitForChild("Coin_Image")
local coinAmount = coinImage:WaitForChild("Coin_Amount")

coinAmount.Changed:Connect(function(Value)
    TeleportService:TeleportToPlaceInstance(PlaceId, JobId)
end)
