-- file: /prototype/kr-electrolysis-plant.lua

--[[Prototypes and recipes produced in #kr-electrolysis-plant. 
`categories = { "kr-electrolysis" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

-- local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "fluid",
    name = "rx-wood-pulp", 
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/fluid/rx-wood-pulp.png", 
    icon_size = 128,
    subgroup = "fluid",
    default_temperature = 20,
    heat_capacity = "0.1kJ",
    base_color = { r = 0.45, g = 0.32, b = 0.18 }, -- Wood pulp brown
    flow_color = { r = 0.65, g = 0.50, b = 0.30 },
    auto_barrel = true,
  }
})

data:extend({
  {
    type = "item",
    name = "rx-crude-guncotton",
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/item/rx-crude-guncotton.png",
    icon_size = 128,
    stack_size = 200,
    weight = 1 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crude-guncotton", "explosives", "-b[crude]")

--- --- ---

data:extend({
  {
    type = "item",
    name = "rx-nitrocellulose",
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/item/rx-nitrocellulose.png",
    icon_size = 128,
    stack_size = 200,
    weight = 2 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-nitrocellulose", "explosives", "-a[advanced]")

--- --- ---

data:extend({
  {
    type = "item",
    name = "rx-bakelite", 
    icon = rx_fx .. "/item/rx-bakelite.png", 
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 1 * kg, 
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-bakelite", "plastic-bar", "-b[crude]")

--- --- ---

data:extend({
  {
    type = "item",
    name = "rx-filter-gas",
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/item/rx-filter-gas.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 2 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-filter-gas", "kr-pollution-filter", "-b[gas]" )

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
match_k2_sorting("rx-filter-gas-used", "kr-used-pollution-filter", "-b[gas]" )

--- --- ---

data:extend({
  {
    type = "item",
    name = "rx-filter-liquid",
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/item/rx-filter-liquid.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 2 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-filter-liquid", "kr-pollution-filter", "-b[liquid]" )

data:extend({
  {
    type = "item",
    name = "rx-filter-liquid-used",
    subgroup = "intermediate-product",    
    icon = rx_fx .. "/item/rx-filter-liquid-used.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 2 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-filter-liquid-used", "kr-used-pollution-filter", "-b[liquid]" )


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-wood-pulp",
    categories = {"kr-electrolysis"},
    ingredients = {
      { type = "item",  name = "rx-crushed-wood",   amount = 18 },
      { type = "fluid", name = "water",             amount = 72 },
      { type = "fluid", name = "kr-chlorine",       amount = 18 },
    },
    results = {
      { type = "fluid", name = "rx-wood-pulp",      amount = 72 },
      { type = "item",  name = "kr-biomass",        amount = 3 },
    },
    main_product = "rx-wood-pulp",
    energy_required = 6,
    enabled = true, 
    allow_productivity = true,     
    allow_decomposition = false,
  }
})
match_k2_sorting("rx-wood-pulp", "wood", "-b[pulp]")

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-crude-guncotton",
    categories = { "kr-electrolysis" },
    energy_required = 3,     
    ingredients = {
      { type = "fluid", name = "rx-wood-pulp",          amount = 24 },
      { type = "fluid", name = "sulfuric-acid",         amount = 24 },
      { type = "item",  name = "sulfur",                amount = 2 },
    },
    results = {
      { type = "item",  name = "rx-crude-guncotton",    amount = 2 },
      { type = "fluid", name = "kr-dirty-water",        amount = 12 },
    },
    main_product = "rx-crude-guncotton",
    allow_productivity = true, 
    allow_decomposition = false,         
    crafting_machine_tint = {
      primary = { r = 0.11, g = 0.77, b = 0.77, a = 0.77 },
    },       
  }
})
match_k2_sorting("rx-crude-guncotton", "explosives", "-b[crude]")

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-nitrocellulose",
    categories = { "kr-electrolysis" },
    energy_required = 4,
    ingredients = {
      { type = "item",  name = "rx-crude-guncotton",    amount = 2 },
      { type = "fluid", name = "kr-nitric-acid",        amount = 36 },
    },
    results = {
      { type = "item",  name = "rx-nitrocellulose",     amount = 4 },
      { type = "fluid", name = "kr-dirty-water",        amount = 24 },
    },
    main_product = "rx-nitrocellulose",
    allow_productivity = true, 
    allow_decomposition = false,         
    crafting_machine_tint = {
      primary = { r = 0.11, g = 0.77, b = 0.77, a = 0.77 },
    },       
  }
})
match_k2_sorting("rx-nitrocellulose", "explosives", "-b[nitro]")

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-bakelite",
    categories = { "kr-electrolysis" }, 
    ingredients = {
      { type = "fluid", name = "rx-wood-pulp",          amount = 36 },
      { type = "item",  name = "rx-crushed-coal",       amount = 4 },
      { type = "fluid", name = "steam",                 amount = 36 },
    },
    results = {
      { type = "item", name = "rx-bakelite",            amount = 4 },
    },
    main_product = "rx-bakelite",
    energy_required = 3,

    icon = rx_fx .. "/item/rx-bakelite.png", 
    icon_size = 128,
    enabled = true,
    allow_productivity = true, 
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.92, g = 0.16, b = 0.08, a = 0.50 },
    },    
  }
})

--- --- ---

data:extend({
  {
    type = "recipe",
    name = "rx-filter-gas",
    categories = { "kr-electrolysis" }, 
    ingredients = {
      { type = "item",  name = "kr-steel-beam",    amount = 2 },  -- Fine stainless steel wire mesh
      { type = "item",  name = "rx-bakelite",      amount = 6 },  -- Structural outer casing
      { type = "fluid", name = "rx-wood-pulp",     amount = 12 }, -- Light porous binder matrix
      { type = "item",  name = "rx-crushed-coal",  amount = 24 }, -- Activated carbon adsorption media (2x increase)
    },
    results = {
      { type = "item",  name = "rx-filter-gas",     amount = 1 },
    },
    main_product = "rx-filter-gas",
    energy_required = 3,
    enabled = true, 
    icon = rx_fx .. "/item/rx-filter-gas.png", 
    icon_size = 128,
    allow_productivity = false,     
    allow_decomposition = false,
  }
})

--- --- ---


data:extend({
  {
    type = "recipe",
    name = "rx-filter-liquid",
    categories = { "kr-electrolysis" }, 
    ingredients = {
      { type = "item",  name = "kr-steel-beam",    amount = 2 },  -- High-pressure support grid
      { type = "item",  name = "rx-bakelite",      amount = 8 },  -- Reinforced acid-resistant housing
      { type = "fluid", name = "rx-wood-pulp",     amount = 64 }, -- Dense cellulose filter pad (1.6x increase)
      { type = "item",  name = "kr-sand",          amount = 12 }, -- Mineral depth filter bed (coarse pre-filter)
      { type = "item",  name = "rx-crushed-coal",  amount = 6 },  -- Minor chemical trapping      
    },
    results = {
      { type = "item",  name = "rx-filter-liquid", amount = 1 },
    },
    main_product = "rx-filter-liquid",
    energy_required = 3,
    enabled = true, 
    icon = rx_fx .. "/item/rx-filter-liquid.png", 
    icon_size = 128,
    allow_productivity = false,     
    allow_decomposition = false,
  }
})

--- --- ---
  
data:extend({
  {
    type = "recipe",
    name = "rx-purify-noble-gases",
    categories = { "kr-electrolysis" }, 
    energy_required = 12.0,
    ingredients = {
      { type = "fluid", name = "rx-noble-gases",        amount = 24 },
      { type = "fluid", name = "kr-hydrogen",           amount = 96 }, -- 72 + 24 for high pressure
      { type = "item",  name = "kr-rare-metals",        amount = 2 }, -- Noble metal catalyst
      { type = "item",  name = "rx-filter-liquid",      amount = 1 }, -- Dehydration filter
    },
    results = {
      { type = "fluid", name = "rx-noble-gases",        amount = 72 },
      { type = "fluid", name = "water",                 amount = 24 },
      
      -- Catalyst Loop (May degrade)
      { type = "item",  name = "kr-rare-metals",        amount = 2, 
          independent_probability = 0.90 },
      -- Filter Loop (Degradation Check, 10% of filter loss)
      { type = "item",  name = "rx-filter-liquid",      amount = 1, 
          independent_probability = 0.50 },
      { type = "item",  name = "rx-filter-liquid-used", amount = 1, 
          independent_probability = 0.40 },
    },
    main_product = "rx-noble-gases",
    icon = rx_fx .. "/recipe/rx-purify-noble-gases.png",
    icon_size = 128,
    subgroup = "fluid-recipes",
    enabled = true,
  }
})

--- ================================================================

data:extend({
  {
    type = "recipe",
    categories = { "kr-electrolysis" }, 
    name = "rx-purify-sulfuric-acid",
    ingredients = {
      { type = "fluid", name = "kr-nitrogen", 	amount = 200 },
      { type = "fluid", name = "kr-oxygen", 	  amount = 100 },
      -- { type = "fluid", name = "kr-hydrogen", 	amount = 100 },
      { type = "item",  name = "sulfur", 			  amount = 4 },			
    },
    results = {
      { type = "fluid", name = "sulfuric-acid", amount = 250 },
    },
    crafting_machine_tint = {
      primary = { r = 0.85, g = 0.75, b = 0.20, a = 1.0 },
      secondary = { r = 0.30, g = 0.50, b = 0.30, a = 1.0 },
    },
    energy_required = 4.0,
    enabled = true,
    icon = rx_fx .. "/recipe/rx-purify-sulfuric-acid.png",
    icon_size = 128,

    item_group = "intermediate-product",
    subgroup = "fluid-recipes",
    -- order = "a[fluid]-b[sulfuric-acid-nitrosyl]"

    allow_productivity = true,         
    allow_decomposition = false,		
  }
})
match_k2_sorting("rx-purify-sulfuric-acid", "sulfuric-acid", "-b[nitrosyl]")


-- ============================ End of File: ============================

