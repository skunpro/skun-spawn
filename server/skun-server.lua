ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("spawn", function(source, args, rawCommand)
    local targetId = tonumber(args[1])
    if targetId then
        local xPlayer = ESX.GetPlayerFromId(source)
        local targetPlayer = ESX.GetPlayerFromId(targetId)

        if xPlayer and targetPlayer then
            local playerGroup = xPlayer.getGroup()

            for _, group in ipairs(Config.AdminGroups) do
                if playerGroup == group then
                    TriggerClientEvent("skun-spawn:openMenu", targetId)
                    local message = Config.NotificationTexts.spawn_opened:gsub("{targetId}", targetId)
                    TriggerClientEvent("esx:showNotification", source, message)
                    return
                end
            end

            TriggerClientEvent('esx:showNotification', source, Config.NotificationTexts.no_permission)
        else
            TriggerClientEvent('esx:showNotification', source, Config.NotificationTexts.invalid_player_id)
        end
    else
        TriggerClientEvent('esx:showNotification', source, Config.NotificationTexts.provide_player_id)
    end
end, false)
