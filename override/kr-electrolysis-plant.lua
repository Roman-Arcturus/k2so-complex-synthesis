-- file: /override/kr-electrolysis-plant.lua

--[[#mod_Krastorio2 recipes produced in #facility_kr-electrolysis-plant. 
`categories = { "kr-electrolysis" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting



--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

-- #tech_kr-enriched-ores originally are done in chemical-plant.
-- RX moves them to kr-electrolysis-plant.

--[[#### K2: #recipe_kr-enriched-iron : ⏳3s, 📚200/1000  
→ 9 #item_iron-ore + 3 #fluid_sulfuric-acid + 25 #fluid_water
← 6 #item_kr-enriched-iron + 25 #fluid_kr-dirty-water]]

update_recipe({
	name = "kr-enriched-iron", 
	categories = { "kr-electrolysis" },
	ingredients = {
		{ type = "item",  name = "rx-crushed-iron-ore",     amount = 8 },
		{ type = "fluid", name = "kr-hydrogen-chloride",    amount = 36 },
		{ type = "fluid", name = "sulfuric-acid",           amount = 24 },
	},
	results = {
		{ type = "item",  name = "kr-enriched-iron",        amount = 6 },
		{ type = "fluid", name = "kr-dirty-water",          amount = 48 },
		{ type = "fluid", name = "kr-hydrogen",             amount = 12 },
	},
	icon = k2_fx .. "/items/enriched-iron.png",
	main_product = "kr-enriched-iron",
	allow_productivity = true,      
	energy = 3.0, 
})

--[[#### K2: #recipe_kr-enriched-copper : ⏳3s, 📚200/1000  
→ 9 #item_copper-ore + 6 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water]]

update_recipe({
    name = "kr-enriched-copper", 
		categories = { "kr-electrolysis" },
    ingredients = {
        { type = "item",  name = "rx-crushed-copper-ore",   amount = 8 },
        { type = "fluid", name = "kr-nitric-acid",          amount = 36 },
        { type = "fluid", name = "kr-ammonia",              amount = 24 },
    },
    results = {
        { type = "item",  name = "kr-enriched-copper",      amount = 6 },
        { type = "fluid", name = "kr-dirty-water",          amount = 48 },
        { type = "fluid", name = "kr-nitrogen",             amount = 12 },
    },
    icon = k2_fx .. "/items/enriched-copper.png",
    main_product = "kr-enriched-copper", 
    allow_productivity = true,      
    energy = 3.0, 
})

--[[#### K2: #recipe_kr-enriched-rare-metals : ⏳3s, 📚200/1000  
→ 9 #item_kr-rare-metal-ore + 10 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water]]

update_recipe({
    name = "kr-enriched-rare-metals", 
		categories = { "kr-electrolysis" },
    ingredients = {
        { type = "item",  name = "rx-crushed-rare-metal-ore",   amount = 8 },
        { type = "fluid", name = "kr-hydrogen-chloride",        amount = 36 },
        { type = "fluid", name = "kr-nitric-acid",              amount = 24 },
    },
    results = {
        { type = "item",  name = "kr-enriched-rare-metals",     amount = 6 },
        { type = "fluid", name = "kr-dirty-water",              amount = 48 },
        { type = "fluid", name = "kr-chlorine",                 amount = 12 },
    },
    icon = k2_fx .. "/items/enriched-rare-metals.png",
    main_product = "kr-enriched-rare-metals", 
    allow_productivity = true,      
    energy = 3.0, 
})

--- --- ---
