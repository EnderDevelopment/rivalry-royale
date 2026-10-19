-- PlayerManager.server.lua

local Players = game:GetService("Players")

local PlayerManager = {}

function PlayerManager:OnPlayerAdded(player)
    print(player.Name .. " joined the game")
    -- Initialize player-specific logic
end

function PlayerManager:OnPlayerRemoving(player)
    print(player.Name .. " left the game")
    -- Clean up player-specific logic
end

Players.PlayerAdded:Connect(function(player)
    PlayerManager:OnPlayerAdded(player)
end)

Players.PlayerRemoving:Connect(function(player)
    PlayerManager:OnPlayerRemoving(player)
end)

return PlayerManager