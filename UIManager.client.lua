-- UIManager.client.lua

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local UIManager = {}

function UIManager:ShowMessage(message)
    StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = message,
    })
end

return UIManager