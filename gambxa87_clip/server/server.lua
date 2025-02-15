ESX = nil
local item = Config.Settings.Itemname

ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem(item, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('Gambxa87:checkWeapon', source)
end)


RegisterNetEvent('Gambxa87:useWeaponClip')
AddEventHandler('Gambxa87:useWeaponClip', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem(item).count > 0 then
        xPlayer.removeInventoryItem(item, 1)
        TriggerClientEvent('Gambxa87:weaponclip', source)
    else
        TriggerClientEvent('esx:showNotification', source, "You have no magazine left.")
    end
end)
