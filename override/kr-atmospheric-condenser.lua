-- file: /prototype/kr-amospheric-condenser.lua

--[[#mod_Krastorio2 recipes produced in #facility_kr-amospheric-condenser.
`categories = { "kr-atmosphere-condensation" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]


local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---


local facility = data.raw["assembling-machine"]["kr-atmospheric-condenser"]
if facility then
		-- Allow up to 4 solid item ingredients
		facility.ingredient_count = 4
end

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---


--[[#### K2: #recipe_kr-hydrogen : ⏳20s, 📚/
→ none ← 30 #fluid_kr-hydrogen]]

update_recipe({
	name = "kr-hydrogen",
	categories = { "kr-atmosphere-condensation" },
	ingredients = {
		{ type = "item",  name = "rx-filter-atmospheric",   amount = 1 },
	},
	results = {
		{ type = "fluid", name = "kr-ammonia",             amount = 36 },
		{ type = "item",  name = "rx-filter-atmospheric", amount = 1, independent_probability = 0.8 },
		{ type = "item",  name = "rx-filter-atmospheric-used", amount = 1, independent_probability = 0.2 }
	},
	-- icon = k2_fx .. "/items/enriched-iron.png",
	-- main_product = "kr-enriched-iron",
	-- allow_productivity = true,
	energy = 36.0,
})