game.Players.PlayerAdded:Connect(function(player)
    print("Welcome, " .. player.Name .. "!")
    local message = Instance.new("Message")
    message.Text = "Welcome gagong " .. player.Name .. " sa Mount Tala!"
    message.Parent = workspace
    task.delay(5, function()
        message:Destroy()
    end)
end)


