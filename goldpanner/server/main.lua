TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent("RegisterUsableItem:goldpan")
AddEventHandler("RegisterUsableItem:goldpan", function(source)
    TriggerClientEvent('FrankieGoldPanner:StartGoldPan', source)
end)
--[[
RegisterNetEvent("gdhdrfgrdf")
AddEventHandler("gdhdrfgrdf", function()
    local item1 = "goldflake"
    local item2 = "goldnugget"
    local r = math.random(1,50)
    local r2 = math.random(1,100)
	print(r)
    if r <= 10 then
        TriggerEvent('redemrp:getPlayerFromId', source, function(user)
            if r >= 2 then
            data.addItem(source, item1,math.random(1,3))
            else
            data.addItem(source, item2,math.random(1,1))
            end
        end)
        TriggerClientEvent("redemrp_notification:start",source, "You found some gold!", 2)
    else
        TriggerClientEvent("redemrp_notification:start",source, "You didnt find anything!", 2)
    end
end)]]

RegisterNetEvent("gdhdrfgrdf")
AddEventHandler("gdhdrfgrdf", function()
    local item1 = "goldflake"
    local item2 = "goldnugget"
    local r = math.random(1,10)--75%
    local r2 = math.random(1,200)--25%
    if r < 4 then
        TriggerEvent('redemrp:getPlayerFromId', source, function(user)
            if r2 > 75 then
            data.addItem(source, item1,math.random(2,4))
            elseif r2 < 75 then
            data.addItem(source, item2,math.random(1,2))
            end
        end)
        TriggerClientEvent("redemrp_notification:start",source, "You found some gold!", 2)
    else
        TriggerClientEvent("redemrp_notification:start",source, "You didnt find anything!", 2)
    end
end)