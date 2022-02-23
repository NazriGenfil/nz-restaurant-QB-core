## nz-restaurant-QB-core

# Qb-target config (Config.BoxZones)
```lua
Config.BoxZones = {
    -- pedagang
    ["RestaurantDrink"] = {
        name = "RestaurantDrink",
        coords = vector3(-173.69, 306.96, 98.52),
        length = 3.15,
        width = 0.2,
        heading = 0,
        debugPoly = false,
        minZ = 98.57,
        maxZ = 99.77,
        options = {
            {
                type = "client",
                event = "nz-restaurant:client:drink",
                icon = "fas fa-sign-in-alt",
                label = "Drink",
                job = "roosters"
            }
        },
        distance = 1.0
    },
    ["RestaurantOven"] = {
        name = "RestaurantOven",
        coords = vector3(-173.82, 292.59, 99.2),
        length = 1.4,
        width = 1.2,
        heading = 0,
        debugPoly = false,
        minZ = 98.45,
        maxZ = 99.4,
        options = {
            {
                type = "client",
                event = "nz-restaurant:client:oven",
                icon = "fas fa-sign-in-alt",
                label = "Oven",
                job = "roosters"
            }
        },
        distance = 1.0
    },
    ["RestaurantPrep"] = {
        name = "RestaurantPrep",
        coords = vector3(-171.44, 295.98, 99.2),
        length = 2.3,
        width = 0.65,
        heading = 0,
        debugPoly = false,
        minZ = 98.25,
        maxZ = 99.5,
        options = {
            {
                type = "client",
                event = "nz-restaurant:client:prep",
                icon = "fas fa-sign-in-alt",
                label = "Prep Station",
                job = "roosters"
            }
        },
        distance = 1.0
    },
    ["RestaurantNampan"] = {
        name = "RestaurantNampan",
        coords = vector3(-171.0, 301.37, 98.52),
        length = 0.6,
        width = 0.4,
        heading = 359,
        debugPoly = false,
        minZ = 98.57,
        maxZ = 98.77,
        options = {
            {
                type = "client",
                event = "nz-restaurant:client:nampan",
                icon = "fas fa-sign-in-alt",
                label = "Nampan"
                -- job = "police",
            }
        },
        distance = 1.0
    },
    ["RestaurantStash"] = {
        name = "RestaurantStash",
        coords = vector3(-174.06, 301.67, 98.52),
        length = 2.1,
        width = 0.65,
        heading = 0,
        debugPoly = false,
        minZ = 96.97,
        maxZ = 98.47,
        options = {
            {
                type = "client",
                event = "nz-restaurant:client:stash",
                icon = "fas fa-sign-in-alt",
                label = "Stash",
                job = "roosters"
            }
        },
        distance = 1.0
    }
}
```
# Qb-Core config (qb-core/shared/items.lua)
```lua
-- MENU RESTORAN (ROOSTERS REST)
	['orangejuice'] 				 = {['name'] = 'orangejuice', 			  	  	['label'] = 'Orange Juice', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'orangejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best drink from Roosters Rest'},
	['oolongtea'] 				 	 = {['name'] = 'oolongtea', 			  	  	['label'] = 'Oolong Tea', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'oolongtea.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best drink from Roosters Rest'},
	['milktea'] 				 	 = {['name'] = 'milktea', 			  	  		['label'] = 'milk Tea', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'milktea.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best drink from Roosters Rest'},
	['chivastea'] 				 	 = {['name'] = 'chivastea', 			  	  	['label'] = 'Chivas with Tea', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'chivastea.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best drink from Roosters Rest'},
	['friendrice'] 				 	 = {['name'] = 'friendrice', 			  	  	['label'] = 'Friend Rice', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'friendrice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},
	['friednoodle'] 				 = {['name'] = 'friednoodle', 			  	  	['label'] = 'Fried Noodle', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'friednoodle.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},
	['scrambledegg'] 			 	 = {['name'] = 'scrambledegg', 			  	  	['label'] = 'Scrambled Egg', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'scrambledegg.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},
	['boiledfish'] 				 	 = {['name'] = 'boiledfish', 			  	  	['label'] = 'Boiled Fish', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'boiledfish.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},
	['spicychicken'] 			 	 = {['name'] = 'spicychicken', 			  	  	['label'] = 'Spicy Chicken', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'spicychicken.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},
	['crispyprawn'] 			 	 = {['name'] = 'crispyprawn', 			  	  	['label'] = 'Crispy Prawn', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'crispyprawn.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Best food from Roosters Rest'},

	-- BAHAN RESTORAN (ROOSTERS REST)
	['seasoning'] 			 		 = {['name'] = 'seasoning', 			  	  	['label'] = 'Seasoning', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'seasoning.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['friedseasoning'] 			 	 = {['name'] = 'friedseasoning', 			  	['label'] = 'Fried Seasoning', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'friedseasoning.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['onion'] 			 			 = {['name'] = 'onion', 			  	  		['label'] = 'Onion', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'onion.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['chilly'] 					 	 = {['name'] = 'chilly', 			  	  		['label'] = 'Chilly', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'chilly.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['salt'] 					 	 = {['name'] = 'salt', 			  	  			['label'] = 'Salt', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'salt.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['papper'] 					 	 = {['name'] = 'papper', 			  	  		['label'] = 'Papper', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'papper.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['tomato'] 			 			 = {['name'] = 'tomato', 			  	  		['label'] = 'Tomato', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'tomato.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['oil'] 					 	 = {['name'] = 'oil', 			  	 		 	['label'] = 'Oil', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'oil.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['rice'] 			 			 = {['name'] = 'rice', 			  	 		 	['label'] = 'Rice', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'rice.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['egg'] 					 	 = {['name'] = 'egg', 			  	  			['label'] = 'Egg', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'egg.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['noodle'] 					 	 = {['name'] = 'noodle', 			  	  		['label'] = 'Noodle', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'noodle.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['paprika'] 					 = {['name'] = 'paprika', 			  	  		['label'] = 'Paprika', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'paprika.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['fish'] 					 	 = {['name'] = 'fish', 			  	  			['label'] = 'Fish', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['chicken'] 					 = {['name'] = 'chicken', 			  	  		['label'] = 'Chicken', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'chicken.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['mushroom'] 					 = {['name'] = 'mushroom', 			  	  		['label'] = 'Mshroom', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'mushroom.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['soursauce'] 					 = {['name'] = 'soursauce', 			  	  	['label'] = 'Sour Sauce', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'soursauce.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
	['oystersauce'] 				 = {['name'] = 'oystersauce', 			  	  	['label'] = 'Oyster Sauce', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'oystersauce.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'cooking ingredients'},
 ```
 
#qb-smallresources config (config.lua)

 ```lua
 ConsumeablesEat = {
    ---roosters
    ["friendrice"] = math.random(25, 40),
    ["friednoodle"] = math.random(25, 40),
    ["scrambledegg"] = math.random(25, 40),
    ["boiledfish"] = math.random(25, 40),
    ["spicychicken"] = math.random(25, 40),
    ["crispyprawn"] = math.random(25, 40),
}
ConsumeablesDrink = {
    --ROOSTERS
    ["orangejuice"] = math.random(25, 25),
    ["oolongtea"] = math.random(25, 25),
    ["milktea"] = math.random(25, 25),
}
```
#qb-smallresources config (server/consumables.lua)
```lua
-- roosters

QBCore.Functions.CreateUseableItem("friendrice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("friednoodle", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("scrambledegg", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("boiledfish", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("spicychicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("crispyprawn", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("orangejuice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("oolongtea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("milktea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkResto", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("chivastea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)
```

##JANGAN DI JUAL SCRIPT INI GERATIS 100%
##DO NOT SALE THIS SCRIPT THIS SCRIPT IS FREE 100%
