-- GameManager.server.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameManager = {}

function GameManager:Start()
    print("Game started")
    -- Initialize game state
end

function GameManager:End()
    print("Game ended")
    -- Clean up game state
end

return GameManager