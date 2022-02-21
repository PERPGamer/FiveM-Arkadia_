ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterCommand('togglehud', 'user', function(xPlayer, args, user)
	local source = xPlayer.source
	if not args then 
		TriggerClientEvent('chatMessage', source, "[SYNTAX]", {255, 0, 0}, "/togglehud [on/off]") 
	else
	local a = tostring(args[1])
		if a == "off" then
			TriggerClientEvent('ui:toggle', source,false)
		elseif a == "on" then
			TriggerClientEvent('ui:toggle', source,true)
		else
			TriggerClientEvent('chatMessage', source, "[SYNTAX]", {255, 0, 0}, "/togglehud [on/off]") 
		end
	end
end, function(xPlayer, args, user)
	TriggerClientEvent('chat:addMessage', xPlayer.source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = "Toggles the hud on and off"})
