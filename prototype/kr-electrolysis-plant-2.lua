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
    --subgroup = "intermediate-product",    
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
match_k2_sorting("rx-filter-gas", "kr-pollution-filter", "-b" )



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
-- match_k2_sorting("rx-wood-pulp", "water", "-b[pulp]")

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
      { type = "item",  name = "kr-steel-beam",							amount = 2 },
      { type = "item",  name = "rx-bakelite",								amount = 6 },			
      { type = "fluid", name = "rx-wood-pulp",              amount = 36 },      
      { type = "item",  name = "rx-crushed-coal",           amount = 12 },
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


-- ============================ End of File: ============================

