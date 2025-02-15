ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
    end
end)

RegisterCommand('use_weapon_clip', function()
    TriggerEvent('Gambxa87:checkWeapon')
end, false)

RegisterKeyMapping('use_weapon_clip', 'Use Magazine', 'keyboard', Config.Settings.DefaultKey)

RegisterNetEvent('Gambxa87:checkWeapon')
AddEventHandler('Gambxa87:checkWeapon', function()
    local playerPed = PlayerPedId()

    if IsPedArmed(playerPed, 4) then
        local weapon = GetSelectedPedWeapon(playerPed)
        local ammo = GetAmmoInPedWeapon(playerPed, weapon)

        if ammo >= 250 then
            ESX.ShowNotification(Config.Language.ammo_full)
        else
            TriggerServerEvent('Gambxa87:useWeaponClip')
        end
    else
        ESX.ShowNotification(Config.Language.no_weapon)
    end
end)

RegisterNetEvent('Gambxa87:weaponclip')
AddEventHandler('Gambxa87:weaponclip', function()
    local playerPed = PlayerPedId()
    local lib, anim = 'cover@weapon@1h', 'high_reload'

    if Config.Settings.ProgressbarActiv == true then
        exports['progressBars']:startUI(2000, Config.Language.progressbar_message)
    end

    local weapon = GetSelectedPedWeapon(playerPed)
    AddAmmoToPed(playerPed, weapon, Config.Settings.AmountOfAmmo)
    ESX.ShowNotification(Config.Language.clip_used)
end)
