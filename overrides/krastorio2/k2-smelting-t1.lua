-- File: /overrides/krastorio2/k2-smelting-tier1.lua

local k2_assets = "__Krastorio2Assets__" -- K2 graphics
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe

-- =========================== Basic Metals: ============================

update_recipe({
    name = "iron-plate", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "iron-ore", amount = 6 },
        { type = "item", name = "stone", amount = 1 }, -- basic flux
    },
    result_amount = 3,
    energy = 11, 
    stack_size = 200, 
    rocket_capacity = 1000, 
})

update_recipe({
    name = "copper-plate", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "copper-ore", amount = 6 },
        { type = "item", name = "stone", amount = 1 }, -- basic flux
    },
    result_amount = 3,
    energy = 11, 
    stack_size = 200, -- 200
    rocket_capacity = 1000, -- 1000
})

update_recipe({
    name = "steel-plate", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "iron-plate", amount = 12 }, 
        { type = "item", name = "kr-coke", amount = 3 },
    },
    result_amount = 6,
    energy = 65.1, 
    stack_size = 200, -- 200
    rocket_capacity = 600, -- 400
})

update_recipe({
    name = "kr-rare-metals", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "kr-rare-metal-ore", amount = 12 }, --
        { type = "item", name = "copper-ore", amount = 3 },
    },
    result_amount = 6,
    energy = 23.1, 
    stack_size = 200, -- 200
    rocket_capacity = 800, -- 1000
})

-- =========================== Basic Minerals: ============================

update_recipe({
    name = "stone-brick",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "stone", amount = 12 },
        { type = "item", name = "iron-ore", amount = 3 }, 
    },
    result_amount = 6,
    energy = 23.1, 
    stack_size = 200,
    rocket_capacity = 600, 
})

update_recipe({
    name = "kr-coke", 
    categories = { "smelting" }, 
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "rx-wood-chips", amount = 12 }, 
        { type = "item", name = "rx-crushed-carbon", amount = 6 }, 
        { type = "item", name = "kr-sand", amount = 3 }, 
    },
    energy = 27, 
    results = {
        { type = "item", name = "kr-coke", amount = 9 },
    },    
    stack_size = 200, 
    rocket_capacity = 1000, 
})


update_recipe({
    name = "kr-glass",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "kr-sand", amount = 16 }, 
        { type = "item", name = "copper-ore", amount = 2 }, 
    },
    result_amount = 8,
    energy = 18.2,
    stack_size = 200,
    rocket_capacity = 1000, 
})

update_recipe({
    name = "kr-silicon", -- Fixed from duplicate name entry
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "kr-quartz", amount = 18 },
        { type = "item", name = "kr-coke", amount = 4 }, -- Dense coke drain
    },
    result_amount = 9,
    energy = 18.6,
    stack_size = 200,
    rocket_capacity = 1000, 
})
