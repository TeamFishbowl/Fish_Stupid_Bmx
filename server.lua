ESX = nil
TriggerEvent("esx:getSharedObject",function(obj)
    ESX = obj
end)

RegisterServerEvent('bmxrewardseasy:payment')
AddEventHandler('bmxrewardseasy:payment', function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addAccountMoney('bank', Config.EasyReward)
    end)

RegisterServerEvent('bmxrewardsmedium:payment')
AddEventHandler('bmxrewardsmedium:payment', function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addAccountMoney('bank', Config.MediumReward)
    end)

RegisterServerEvent('bmxrewardshard:payment')
AddEventHandler('bmxrewardshard:payment', function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
     xPlayer.addAccountMoney('bank', Config.HardReward)
    end)

