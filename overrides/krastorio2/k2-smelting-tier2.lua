-- File: /overrides/krastorio2/k2-smelting-tier2.lua

local update_recipe = require("rx-util").update_recipe

-- =========================== Enriched Metals: ============================

update_recipe({
    name = "kr-iron-plate-from-enriched-iron", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "kr-enriched-iron", amount = 6 },
        { type = "item", name = "kr-quartz", amount = 1 },
        { type = "item", name = "kr-coke", amount = 2 }, -- extra heat
    },
    results = {
        { type = "item", name = "iron-plate", amount = 6 },
    },  
    energy = 24, 
    stack_size = 200, -- 200
    rocket_capacity = 1000, -- 1k  
})

update_recipe({
    name = "kr-copper-plate-from-enriched-copper", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "kr-enriched-copper", amount = 6 },
        { type = "item", name = "kr-quartz", amount = 3 },
    },
    results = {
        { type = "item", name = "copper-plate", amount = 6 },
    },  
    energy = 24, 
    stack_size = 200, 
    rocket_capacity = 1000, -- 1k  
})

update_recipe({
    name = "kr-rare-metals-from-enriched-rare-metals", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = 
    {
        { type = "item", name = "kr-enriched-rare-metals", amount = 6 }, --
        { type = "item", name = "kr-enriched-copper", amount = 2 }, --
        { type = "item", name = "kr-quartz", amount = 1 }, --        
    },
    results = {
        { type = "item", name = "kr-rare-metals", amount = 6 },
    },  
    energy = 27.2,
    stack_size = 200,
    rocket_capacity = 1000,
})

