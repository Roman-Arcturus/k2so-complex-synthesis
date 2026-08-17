-- File: prototype/industrial-furnace.lua

--[[Prototypes and recipes produced in #industrial-furnace. 
`categories = { "smelting" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

--local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

-- ============================= Stage 1/1: ============================= 
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-purified-steel",
    categories = { "smelting" }, 
    ingredients = {
		{ type = "item",  name = "kr-enriched-iron", 	amount = 6 },
		{ type = "item",  name = "kr-coke", 			amount = 6 }, -- Flux
		{ type = "item",  name = "steel-plate", 		amount = 3 }, -- Seed, not consumed
		{ type = "fluid", name = "kr-oxygen", 			amount = 36 },
		{ type = "fluid", name = "sulfuric-acid",       amount = 12 }, -- Pickling agent
    },
    results = {
		{ type = "item",  name = "steel-plate", 		amount = 9 }, -- 6 Net + 3 Seed
		{ type = "item",  name = "rx-waste-solid", 		amount = 6 },		
		{ type = "fluid", name = "rx-waste-liquid", 	amount = 48 },
    },
    energy_required = 114.2, --🧮 factor 3.12 * (6+6+0+3.6+1.2 + 9+6+4.8)
    main_product = "steel-plate",

    enabled = true,
    icon = rx_fx .. "/recipe/rx-purified-steel.png",
    icon_size = 128,
    allow_productivity = true,         
    allow_decomposition = false,
  }
})
match_k2_sorting("rx-purified-steel", "steel-plate", "-b[purified]")

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-purified-glass",
    categories = { "smelting" }, 
    ingredients = { 
      { type = "item",  name = "kr-quartz", 				    amount = 12 },
      { type = "item",  name = "rx-crushed-coal", 		  amount = 4 }, -- Flux
      { type = "item",  name = "kr-glass", 				      amount = 3 }, -- Seed, not consumed
      { type = "fluid", name = "kr-hydrogen-chloride",	amount = 36 },
      { type = "fluid", name = "water",                	amount = 36 }, -- Quench & rinse
    },-- 
    results = {
      { type = "item",  name = "kr-glass", 				      amount = 15 }, -- 12 + 3 (seed) 
      { type = "item",  name = "rx-waste-solid", 			  amount = 4 },
      { type = "fluid", name = "rx-waste-liquid", 		  amount = 72 },
    },
    energy_required = 69.2, 
	-- 🧮34.6 = factor 0.7 *(12+4+0+3.6+3.6 + 15+4+7.2)
	-- multiply x2 to encourage using beacons with speed-modules
    main_product = "kr-glass",

    enabled = true,
    icon = rx_fx .. "/recipe/rx-purified-glass.png",
    icon_size = 128,

  	allow_productivity = true,         
    allow_decomposition = false,
  }
})
match_k2_sorting("rx-purified-glass", "kr-glass", "-b[purified]")

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-purified-silicon",
    categories = { "smelting" }, 
    ingredients = {
      { type = "item",  name = "kr-quartz", 			 amount = 18 },
      { type = "item",  name = "rx-crushed-coal", 	 amount = 6 }, -- Flux
      { type = "item",  name = "kr-silicon", 			 amount = 6 }, -- Seed Crystal, not consumed
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 36 }, -- Chlorination stage
      { type = "fluid", name = "kr-hydrogen",          amount = 24 }, -- CVD reduction agent
    },
    results = {
      { type = "item",  name = "kr-silicon", 			 amount = 24 }, -- 18 Net + 6 Seed
      { type = "item",  name = "rx-waste-solid", 		 amount = 6 },		      
      { type = "fluid", name = "rx-waste-liquid", 	 amount = 36 },
      { type = "fluid", name = "kr-chlorine",        	 amount = 24 }, -- Recyclable off-gas
    },
    energy_required = 79.2, 
	-- 🧮39.6 = factor  0.6 * (18+6+0+3.6+2.4 + 24+6+3.6+2.4)
	-- multiply x2 to encourage using beacons with speed-modules
    main_product = "kr-silicon",

    enabled = true,
    icon = rx_fx .. "/recipe/rx-purified-silicon.png",    
    icon_size = 128,
    allow_productivity = true,         
    allow_decomposition = false,
  }
})
match_k2_sorting("rx-purified-silicon", "kr-silicon", "-b[purified]")

-- =========================== End of file: =============================
