local player = game.Players.LocalPlayer
player.DevEnableMouseLock = true
player.DevComputerCameraMovementMode = Enum.DevComputerCameraMovementMode.Classic
player.CameraMode = Enum.CameraMode.Classic

local function enableShiftLock()
    local success, playerModule = pcall(function()
        return require(player.PlayerScripts:WaitForChild("PlayerModule"))
    end)
    if success and playerModule then
        local controls = playerModule:GetControls()
        if controls then
            controls:SetIsMouseLocked(true)
        end
    end
end
enableShiftLock()
player.CharacterAdded:Connect(enableShiftLock)
