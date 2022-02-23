# nz-restaurant-QB-core

## Qb-target config (Config.BoxZones)
```
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
