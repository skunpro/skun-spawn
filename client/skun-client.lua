local display = false
local resourceName = GetCurrentResourceName()

RegisterNetEvent("skun-spawn:openMenu")
AddEventHandler("skun-spawn:openMenu", function()
    SetDisplay(true)
end)

RegisterNUICallback("spawn", function(data)
    SetDisplay(false)
    local spawnPoint = Config.Spawns[data.spawnIndex + 1]
    if spawnPoint then
        local playerPed = PlayerPedId()
        SetEntityCoords(playerPed, spawnPoint.x, spawnPoint.y, spawnPoint.z, false, false, false, true)
        SetEntityHeading(playerPed, spawnPoint.w)

        local spawnNumber = data.spawnIndex + 1
        ESX.ShowNotification(Config.NotificationTexts.spawn_chosen:gsub("{spawnNumber}", spawnNumber))
    else
        print(Config.NotificationTexts.invalid_spawn)
    end
end)

RegisterNUICallback("exit", function()
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        DisableControlAction(0, 1, display)
        DisableControlAction(0, 2, display)
        DisableControlAction(0, 142, display)
        DisableControlAction(0, 18, display)
        DisableControlAction(0, 322, display)
        DisableControlAction(0, 106, display)
    end
end)
