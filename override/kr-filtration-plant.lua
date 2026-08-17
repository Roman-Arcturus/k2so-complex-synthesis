-- file: /override/kr-filtration-plant.lua

--[[#mod_Krastorio2 recipes produced in #facility_kr-filtration-plant. 
`categories = { "kr-fluid-filtration" }`
check `/data-updates.lua`  

Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[
#### K2: #recipe_kr-filter-iron-ore-from-dirty-water : ⏳2s, 📚/
→ 100 #fluid_kr-dirty-water
← 30% #item_stone + 10% #item_iron-ore + 100 #fluid_water

#### K2: #recipe_kr-filter-copper-ore-from-dirty-water : ⏳2s, 📚/
→ 100 #fluid_kr-dirty-water
← 30% #item_stone + 10% #item_copper-ore + 100 #fluid_water

#### K2: #recipe_kr-filter-rare-metal-ore-from-dirty-water : ⏳2s, 📚/
→ 100 #fluid_kr-dirty-water
← 30% #item_stone + 5% #item_rare-metal-ore + 100 #fluid_water
]]

update_recipe({
    name = "kr-filter-iron-ore-from-dirty-water",
    category = "kr-fluid-filtration",
    ingredients = {
        { type = "fluid", name = "kr-dirty-water", amount = 96 },
        { type = "fluid", name = "sulfuric-acid", amount = 12 },
    },
    results = {
        { type = "fluid", name = "water", amount = 72 },
        { type = "fluid", name = "kr-dirty-water", amount = 12 },
        { type = "item",  name = "rx-crushed-iron-ore", amount = 6 },
        { type = "item",  name = "kr-sand", amount = 4 },
        { type = "item",  name = "rx-waste-solid", amount = 1, independent_probability = 0.15 },
    },
    energy_required = 3.0,
    allow_productivity = true,
})

update_recipe({
    name = "kr-filter-copper-ore-from-dirty-water",
    category = "kr-fluid-filtration",
    ingredients = {
        { type = "fluid", name = "kr-dirty-water", amount = 96 },
        { type = "fluid", name = "kr-hydrogen-chloride", amount = 12 }
    },
    results = {
        { type = "fluid", name = "water", amount = 72 },
        { type = "fluid", name = "kr-dirty-water", amount = 12 },
        { type = "item",  name = "rx-crushed-copper-ore", amount = 6 },
        { type = "item",  name = "kr-sand", amount = 4 },
        { type = "item",  name = "rx-waste-solid", amount = 1, independent_probability = 0.15 },
    },
    energy_required = 3.0,
    allow_productivity = true,		
})

update_recipe({
	name = "kr-filter-rare-metal-ore-from-dirty-water",
	category = "kr-fluid-filtration",
	ingredients = {
			{ type = "fluid", name = "kr-dirty-water", amount = 96 },
			{ type = "fluid", name = "kr-nitric-acid", amount = 12 }
	},
	results = {
			{ type = "fluid", name = "water", amount = 72 },
			{ type = "fluid", name = "kr-dirty-water", amount = 12 },
			{ type = "item",  name = "rx-crushed-rare-metal-ore", amount = 3 },
			{ type = "item",  name = "kr-sand", amount = 4 },
			{ type = "item",  name = "rx-waste-solid", amount = 1, independent_probability = 0.15 }
	},
	energy_required = 3.0,		
})