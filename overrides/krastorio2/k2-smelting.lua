-- File: /overrides/krastorio2/k2-smelting.lua

local update_recipe = require("rx-util").update_recipe

--[[
smelting recipes:
    stone-brick
    kr-coke
    steel-plate
        rx-steel-from-enriched-mix / data-updates.lua
    kr-rare-metals
    kr-rare-metals-from-enriched-rare-metals
    kr-copper-plate-from-enriched-copper
    kr-iron-plate-from-enriched-iron
    kr-glass
    kr-silicon
    kr-imersium-plate
]]

update_recipe({
    name = "stone-brick",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "stone", amount = 6 },
        { type = "item", name = "iron-ore", amount = 2 }, -- Added iron oxide binding flux
    },
    results = {
        { type = "item", name = "stone-brick", amount = 2 },
    },
    energy = 4, -- 4s base cook time
    stack_size = 200,
    rocket_capacity = 600, 
})

update_recipe({
    name = "kr-coke", -- 6x < 6*wood, 6*coal
    categories = { "smelting" }, 
    allow_productivity = true,  
    ingredients = 
    {
        { type = "item", name = "wood", amount = 6 }, --
        { type = "item", name = "coal", amount = 6 }, --
    },
    energy = 16, -- 16s
    result_amount = 6, -- 6
    stack_size = 200, -- 200
    rocket_capacity = 1000, -- 1k
})

update_recipe({
    name = "steel-plate", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "iron-plate", amount = 12 },
        { type = "item", name = "kr-quartz", amount = 2 },
        { type = "item", name = "kr-coke", amount = 4 }, 
    },
    results = {
        { type = "item", name = "steel-plate", amount = 6 },
    },
    energy = 36, -- 
    stack_size = 200, -- 200
    rocket_capacity = 800, 
})

update_recipe({
    name = "kr-rare-metals", -- 1x < 2*kr-rare-metal-ore
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = 
    {
        { type = "item", name = "kr-rare-metal-ore", amount = 12 }, --
        { type = "item", name = "copper-ore", amount = 1 }, --
    },
    results = {
        { type = "item", name = "kr-rare-metals", amount = 6 },
    },      
    energy = 16, -- 3.2
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
        { type = "item", name = "kr-enriched-copper", amount = 1 }, --
    },
    results = {
        { type = "item", name = "kr-rare-metals", amount = 6 },
    },  
    energy = 16,
    stack_size = 200,
    rocket_capacity = 1000,
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
    energy = 8, -- 3.2
    stack_size = 200, -- 200
    rocket_capacity = 1000, -- 1k  
})

update_recipe({
    name = "kr-iron-plate-from-enriched-iron", 
    categories = { "smelting" },
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "kr-enriched-iron", amount = 6 },
        { type = "item", name = "kr-quartz", amount = 2 },
        { type = "item", name = "kr-coke", amount = 2 }, -- extra heat
    },
    results = {
        { type = "item", name = "iron-plate", amount = 6 },
    },
    energy = 8, -- 3.2
    stack_size = 200, -- 200
    rocket_capacity = 1000, -- 1k  
})

update_recipe({
    name = "kr-glass",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "kr-sand", amount = 12 },
    },
    results = {
        { type = "item", name = "kr-glass", amount = 6 },
    },
    energy = 16,
    stack_size = 200,
    rocket_capacity = 1000, 
})

update_recipe({
    name = "kr-silicon",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "kr-quartz", amount = 8 },
        { type = "item", name = "kr-coke", amount = 4 }, -- Doubled carbon reduction cost
    },
    results = {
        { type = "item", name = "kr-silicon", amount = 4 },
    },
    energy = 24,
    stack_size = 200,
    rocket_capacity = 1000, 
})

update_recipe({
    name = "kr-imersium-plate",
    categories = { "smelting" },
    allow_productivity = true,
    ingredients = {
        { type = "item", name = "kr-imersite-powder", amount = 9 },
        { type = "item", name = "kr-rare-metals", amount = 6 },
        { type = "item", name = "kr-coke", amount = 6 },
    },
    results = {
        { type = "item", name = "kr-imersium-plate", amount = 3 },
    },
    energy = 36, -- 32
    stack_size = 100,
    rocket_capacity = 300,
})


