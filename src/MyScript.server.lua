
-- When a player joins, print a welcome message and show a message box
game.Players.PlayerAdded:Connect(function(player)
    print("Welcome, " .. player.Name .. "!")

    -- Create a message to show to the player
    local message = Instance.new("Message")
    message.Text = "Welcome mga gago sa Mount Tala, " .. player.Name .. "!"
    message.Parent = workspace

    -- Remove the message after 3 seconds
    task.delay(3, function()
        message:Destroy()
    end)
end)
