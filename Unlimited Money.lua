local GamepassID = 123456789 -- Replace with your Gamepass ID

game.Players.PlayerAdded:Connect(function(player)
    local GamepassPurchased = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(player.UserId, GamepassID)

    if GamepassPurchased then
        local PlayerMoney = game:GetService("ServerStorage"):WaitForChild("PlayerMoney"):WaitForChild(player.Name)
        PlayerMoney.Value = "Unlimited"
    end
end)