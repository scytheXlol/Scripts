-- Expedition Antarctica
local Path = game:GetService("Players").LocalPlayer.PlayerGui.Boosts_Display.Frame.DisplayFrame
local Boosts = {"Jump", "Speed", "Tightrope", "Avalanche", "Fall Resistance", "Invincibility"}

local function Disable(boost)
    local Duration = boost:FindFirstChild("Duration")
    local Timer = boost:FindFirstChild("Timer_LocalScript")

    if Duration then
        Duration.Archivable = false
    end

    if Timer and Timer:IsA("LocalScript") then
        Timer.Disabled = true
    end
end

local function FreezeBoosts()
    for _, boost in pairs(Path:GetChildren()) do
        if boost:IsA("Frame") and table.find(Boosts, boost.Name) then
            Disable(boost)
        end
    end
end

FreezeBoosts()
