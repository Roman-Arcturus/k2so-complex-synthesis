-- file: /overrides/kr-electrolysis-plant.lua

--[[#mod_Krastorio2 recipes produced in #facility_kr-electrolysis-plant. 
`categories = { "kr-electrolysis" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 


--[[#recipe_kr-water-electrolysis **K2**: ⏳2s 
→ 10 #item_kr-sand  + 40 #fluid_water
← 30 #fluid_kr-chlorine + 20 #fluid_kr-hydrogen]]

update_recipe({
    name = "kr-water-electrolysis", 
    ingredients = {
        { type = "item",  name = "kr-sand",             amount = 12 },
        { type = "item",  name = "coal",                amount = 2 },        
        { type = "fluid", name = "water",               amount = 48 },
        { type = "fluid", name = "steam",               amount = 24 },
    },
    results = {
        { type = "fluid", name = "kr-chlorine",         amount = 24 },
        { type = "fluid", name = "kr-hydrogen",         amount = 24 },
    },
    -- main_product = "kr-chlorine",
    icon = k2_fx .. "/recipes/water-electrolysis.png",
    icon_size = 128,
    allow_productivity = true,
    energy = 2.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[#recipe_kr-water-separation **K2**: ⏳2s 
→ 50 #fluid_water ← 20 #fluid_kr-oxygen + 30 #fluid_kr-hydrogen]]

update_recipe({
    name = "kr-water-separation", 
    ingredients = {
        { type = "fluid", name = "water",               amount = 48 },
        { type = "fluid", name = "sulfuric-acid",       amount = 12 },
    },
    results = {
        { type = "fluid", name = "kr-hydrogen",         amount = 48 },        
        { type = "fluid", name = "kr-oxygen",           amount = 24 },
        { type = "item",  name = "sulfur",              amount = 2 },
    },
    icon = k2_fx .. "/recipes/water-separation.png",
    icon_size = 128,
    allow_productivity = true,
    energy = 2.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[#recipe_kr-lithium-chloride **K2**: ⏳25s 
→ 5 #item_kr-lithium-chloride + 50 #fluid_water 
← 5 #item_kr-lithium + 10 #fluid_kr-chlorine ]]

update_recipe({
    name = "kr-lithium", 
    ingredients = {
        { type = "item",  name = "kr-lithium-chloride", amount = 6 },
        { type = "item",  name = "copper-plate",        amount = 2 },
        { type = "fluid", name = "steam",               amount = 48 },
    },
    results = {
        { type = "item",  name = "kr-lithium",          amount = 6 },
        { type = "fluid", name = "kr-chlorine",         amount = 24 },        
        { type = "fluid", name = "water",               amount = 12 },
    },
    icon = k2_fx .. "/items/lithium.png",
    icon_size = 64,
    allow_productivity = true,
    energy = 24.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[### #recipe_kr-heavy-water **K2**: ⏳120s 
→ 500 #fluid_water ← 20 #fluid_kr-heavy-water ]]

update_recipe({
    name = "kr-heavy-water", 
    ingredients = {
        { type = "item",  name = "kr-rare-metals",      amount = 2 },
        { type = "fluid", name = "sulfuric-acid",       amount = 24 },
        { type = "fluid", name = "water",               amount = 480 },
    },
    results = {
        { type = "fluid", name = "kr-heavy-water",      amount = 12 },
        { type = "item",  name = "sulfur",              amount = 4 },
        { type = "fluid", name = "kr-hydrogen",         amount = 96 },        
    },
    icon = k2_fx .. "/fluids/heavy-water.png",
    icon_size = 64,
    allow_productivity = true,
    energy = 120.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

