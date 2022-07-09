ESX = nil

Citizen.CreateThread(function()
 while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
 end
end)

RegisterNetEvent('wone')
AddEventHandler('wone', function(wonMoney, source)

    ESX.ShowNotification("Du hast " .. wonMoney .. "$ gewonnen!", "success")
    
end)




RegisterNetEvent('lose')
AddEventHandler('lose', function(loseMoney, canLose, source)
    if canLose then
        ESX.ShowNotification("Du hast verloren, kriegst aber " .. loseMoney .. "$!", "error")
    else
        ESX.ShowNotification("Du hast verloren!", "error")
    end




    
end)



