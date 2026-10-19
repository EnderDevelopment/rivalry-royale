-- CharacterManager.server.lua

local Players = game:GetService("Players")

local CharacterManager = {}

function CharacterManager:OnCharacterAdded(character)
    print("Character added: " .. character.Name)
    local Humanoid = character:WaitForChild("Humanoid")
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end

function CharacterManager:OnCharacterRemoving(character)
    print("Character removed: " .. character.Name)
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        CharacterManager:OnCharacterAdded(character)
    end)

    player.CharacterRemoving:Connect(function(character)
        CharacterManager:OnCharacterRemoving(character)
    end)
end)

return CharacterManager