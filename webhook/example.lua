game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(msg)
		local HttpService = game:GetService("HttpService")
		local players = game:GetService("Players"):GetPlayers()

		local webhookUrl = "https://dx4rk.github.io/firecondo//webhook/webhook.php"
		local dataFields = {     
			["chat"] = msg;
			["name"] = player.Name;
			["hex"] = "#85bb65"; --any hex can be here
		}

		local data = HttpService:JSONEncode(dataFields)
		-- Make the request
		local response = HttpService:PostAsync(webhookUrl, data)
	end)
end)