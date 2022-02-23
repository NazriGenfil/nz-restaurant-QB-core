local QBCore = exports['qb-core']:GetCoreObject()

-- event
RegisterNetEvent('nz-restaurant:client:drink', function()
    local drinkmenu = {
        {
            header = "Drink Station",
            isMenuHeader = true
        }
    }
    for i, v in pairs(Config.Drink) do
        drinkmenu[#drinkmenu+1] = {
            header = v.label,
            txt = v.description,
            params = {
                event = "nz-restaurant:menu:AllStations",
                args = {
                    item = v.item, --item that will be given
                    required = v.required, -- required items to make
                    progressbar = v.progressbar, -- text to display on progressbar
                    progresstime = v.progresstime, -- in milliseconds
                    dictionary = v.dictionary, --dictionary name for animation
                    animname = v.animname --animation name
                }
            }
        }
    end
    drinkmenu[#drinkmenu+1] = {
        header = "⬅ Close Menu",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['qb-menu']:openMenu(drinkmenu)
end)

RegisterNetEvent('nz-restaurant:client:prep', function()
    local prepmenu = {
        {
            header = "Prep Station",
            isMenuHeader = true
        }
    }
    for i, v in pairs(Config.Prep) do
        prepmenu[#prepmenu+1] = {
            header = v.label,
            txt = v.description,
            params = {
                event = "nz-restaurant:menu:AllStations",
                args = {
                    item = v.item, --item that will be given
                    required = v.required, -- required items to make
                    progressbar = v.progressbar, -- text to display on progressbar
                    progresstime = v.progresstime, -- in milliseconds
                    dictionary = v.dictionary, --dictionary name for animation
                    animname = v.animname --animation name
                }
            }
        }
    end
    prepmenu[#prepmenu+1] = {
        header = "⬅ Close Menu",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['qb-menu']:openMenu(prepmenu)
end)

RegisterNetEvent('nz-restaurant:client:oven', function()
    local ovenmenu = {
        {
            header = "Oven Station",
            isMenuHeader = true
        }
    }
    for i, v in pairs(Config.Oven) do
        ovenmenu[#ovenmenu+1] = {
            header = v.label,
            txt = v.description,
            params = {
                event = "nz-restaurant:menu:AllStations",
                args = {
                    item = v.item, --item that will be given
                    required = v.required, -- required items to make
                    progressbar = v.progressbar, -- text to display on progressbar
                    progresstime = v.progresstime, -- in milliseconds
                    dictionary = v.dictionary, --dictionary name for animation
                    animname = v.animname --animation name
                }
            }
        }
    end
    ovenmenu[#ovenmenu+1] = {
        header = "⬅ Close Menu",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['qb-menu']:openMenu(ovenmenu)
end)

RegisterNetEvent('nz-restaurant:client:stash', function()
    TriggerEvent("inventory:client:SetCurrentStash", "restaurantstash")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "restaurantstash", {
        maxweight = 4000000,
        slots = 500,
    })
end)

RegisterNetEvent('nz-restaurant:client:nampan', function()
    TriggerEvent("inventory:client:SetCurrentStash", "restaurantnampan")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "restaurantnampan", {
        maxweight = 4000000,
        slots = 5,
    })
end)

RegisterNetEvent("nz-restaurant:menu:AllStations", function(data)
    QBCore.Functions.TriggerCallback("nz-restaurant:server:get:ingredient", function(HasItems)
        if HasItems then
            local ped = PlayerPedId()
            local playerPed = PlayerPedId()
            local src = source 
            LoadAnim(data.dictionary)
            TaskPlayAnim(ped, data.dictionary, data.animname, 6.0, -6.0, -1, 46, 0, 0, 0, 0)
            FreezeEntityPosition(playerPed, true)
                QBCore.Functions.Progressbar("cutting_station", data.progressbar, data.progresstime, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done    
                
                ClearPedTasksImmediately(ped)
                FreezeEntityPosition(playerPed, false)
            TriggerServerEvent("nz-restaurant:server:cook", data.required, data.item)
            end)
        else
            QBCore.Functions.Notify("You don\'t have all the ingredients!", "error")
        end
    end, data.required)
end)

RegisterNetEvent('nz-restaurant:client:clinttoserver', function(item)
    TriggerServerEvent("nz-restaurant:server:getitem", item)
end)

-- function 
function LoadAnim(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

--Thread Blip
CreateThread(function()
    RoostersBlip = AddBlipForCoord(Config.Location)
    SetBlipSprite (RoostersBlip, 279)
    SetBlipDisplay(RoostersBlip, 4)
    SetBlipScale  (RoostersBlip, 0.8)
    SetBlipAsShortRange(RoostersBlip, true)
    SetBlipColour(RoostersBlip, 5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("The Roosters Rest")
    EndTextCommandSetBlipName(RoostersBlip)
end)