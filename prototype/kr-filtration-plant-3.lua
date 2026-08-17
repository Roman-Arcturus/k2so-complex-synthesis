-- File: prototype/kr-filtration-plant.lua

--[[Prototypes and recipes produced in #kr-flitration-plant.
`categories = { "kr-fluid-filtration" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

-- local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"



-- ============================= Stage 1/2: =============================
-- ========================= Define new items: ==========================

data:extend({
	{
		type = "fluid",
		name = "rx-waste-liquid",
		icon = rx_fx .. "/fluid/rx-waste-liquid.png",
		icon_size = 128,
		subgroup = "intermediate-product",
		default_temperature = 20,
		heat_capacity = "0.1kJ",
		base_color = { r = 0.77, g = 0.32, b = 0.18 },
		flow_color = { r = 0.77, g = 0.32, b = 0.18 },
		auto_barrel = true,
	}
})
match_k2_sorting("rx-waste-liquid", "kr-dirty-water", "-b" )

--- --- ---

data:extend({
	{
		type = "item",
		name = "rx-waste-solid",
		subgroup = "intermediate-product",
		icon = rx_fx .. "/item/rx-waste-solid.png",
		icon_size = 128,
		subgroup = "intermediate-product",
		stack_size = 200,
		weight = 1 * kg,
		default_request_amount = 50,
	}
})
match_k2_sorting("rx-waste-solid", "kr-dirty-water", "-c" )

--- --- ---

data:extend({
	{
		type = "item",
		name = "rx-filter-gas-used",
		subgroup = "intermediate-product",
		icon = rx_fx .. "/item/rx-filter-gas-used.png",
		icon_size = 128,
		subgroup = "intermediate-product",
		stack_size = 200,
		weight = 2 * kg,
		default_request_amount = 50,
	}
})
match_k2_sorting("rx-filter-gas-used", "kr-used-pollution-filter", "-b" )



-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
	{
		type = "recipe",
		name = "rx-waste-liquid-filtration",
		categories = {"kr-fluid-filtration"},
		ingredients = {
			{ type = "fluid", name = "rx-waste-liquid", amount = 72 },
			{ type = "fluid", name = "sulfuric-acid",   amount = 24 },
			{ type = "item",  name = "rx-crushed-coal", amount = 6 },
		},
		results = {
			{ type = "fluid", name = "kr-dirty-water", amount = 48 },
			{ type = "fluid", name = "kr-hydrogen-chloride", amount = 24 },
			{ type = "item",  name = "kr-sand", amount = 6 },
			{ type = "item",  name = "rx-crushed-iron-ore", amount = 3 },
			{ type = "item",  name = "rx-crushed-copper-ore", amount = 3 },
			{ type = "item",  name = "rx-crushed-rare-metal-ore", amount = 2 },
		},
		main_product = "kr-dirty-water",
		energy_required = 12,
		enabled = true,
		icon = rx_fx .. "/fluid/rx-waste-liquid.png",
		icon_size = 128,
		allow_productivity = true,
		allow_decomposition = false,
	}
})


--- --- ---

data:extend({
	{
		type = "recipe",
		name = "rx-waste-solid-filtration",
		categories = {"kr-fluid-filtration"},
		ingredients = {
			{ type = "item",  name = "rx-waste-solid",            amount = 12 },
			{ type = "fluid", name = "kr-ammonia",                amount = 36 },
			{ type = "fluid", name = "kr-nitric-acid",            amount = 24 },
		},
		results = {
			{ type = "fluid", name = "kr-dirty-water",            amount = 36 },
			{ type = "fluid", name = "sulfuric-acid",             amount = 12 },
			{ type = "item",  name = "kr-quartz",                 amount = 4 },
			{ type = "item",  name = "rx-crushed-rare-metal-ore", amount = 3 },
			{ type = "item",  name = "rx-crushed-copper-ore",     amount = 4 },
			{ type = "item",  name = "kr-sand",                   amount = 6 },
		},
		main_product = "kr-dirty-water",
		energy_required = 12,
		enabled = true,
		icon = rx_fx .. "/item/rx-waste-solid.png",
		icon_size = 128,
		allow_productivity = true,
		allow_decomposition = false,
	}
})


--- --- ---


data:extend({
	{
		type = "recipe",
		name = "rx-restore-filter-gas",
		categories = {"kr-fluid-filtration"},
		ingredients = {
			{ type = "item",  name = "rx-filter-gas-used",  amount = 1 },
			{ type = "fluid", name = "rx-wood-pulp",        amount = 36 },
			{ type = "item",  name = "rx-crushed-coal",     amount = 12 },
			{ type = "fluid", name = "water",								amount = 72 },
		},
		results = {
			{ type = "item",  name = "rx-filter-gas",       amount = 1 },
			{ type = "fluid", name = "kr-dirty-water",      amount = 72 },
		},
		main_product = "rx-filter-gas",
		energy_required = 3,
		enabled = true,
		icon = rx_fx .. "/recipe/rx-restore-filter-gas.png",
		icon_size = 128,
		allow_productivity = false,
		allow_decomposition = false,
	}
})




-- ============================ End of File: ============================

