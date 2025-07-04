


game.Players.PlayerAdded:Connect(function(player)
    print("Welcome, " .. player.Name .. "!")
    local message = Instance.new("Message")
    message.Text = "Welcome mga gago sa Mount Tala, " .. player.Name .. "!"
    message.Parent = workspace
    task.delay(5, function()
        message:Destroy()
    end)
end)


