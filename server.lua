ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)










ESX.RegisterUsableItem('lotto', function(source)


  Karte = math.random(1,3)
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.removeInventoryItem('lotto', 1)
  if Karte == 3 then 
    
    TriggerClientEvent('wone', source, Config.winMoney, source)
    --TriggerClientEvent('wone', source, 5)
    xPlayer.addMoney(Config.winMoney)
  else
    TriggerClientEvent('lose', source, Config.loseMoney, Config.canLose, source)
    --TriggerClientEvent('losed', source, 5, true)
    if Config.canLose then
      xPlayer.addMoney(Config.loseMoney)
    end
  end
  
  
end)















