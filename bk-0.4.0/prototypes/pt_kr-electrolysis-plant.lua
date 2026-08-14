-- File: prototypes/pt_kr-electrolysis-plant.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

--[[New recipes produced in #facility_kr-electrolysis-plant. 
`categories = { "kr-electrolysis" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

local update_recipe = require("rx-util").update_recipe




-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "fluid",
    name = "rx-wood-pulp", 
    icon = rx_fx .. "/icons/rx-wood-pulp.png", 
    icon_size = 64,
    subgroup = "fluid",
    -- order = "a[wood]-c[pulp]",
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
    name = "rx-bakelite", 
    icon = rx_fx .. "/icons/item_rx-bakelite.png", 
    icon_size = 128,
    subgroup = "intermediate-product",
    -- order = "a[wood]-d[bakelite]",
    stack_size = 200,
    weight = 1 * kg, 
    default_request_amount = 50,    
  }
})


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-wood-pulp",
    categories = {"kr-electrolysis"},
    ingredients = {
      { type = "item", name = "rx-crushed-wood", amount = 18 },
      { type = "fluid", name = "water", amount = 72 },
      { type = "fluid", name = "kr-chlorine", amount = 18 }, -- Chlorine-assisted chemical pulping
    },
    results = {
      { type = "fluid", name = "rx-wood-pulp", amount = 72 },
      { type = "item", name = "kr-biomass", amount = 6 }, -- Solid byproduct
    },
    main_product = "rx-wood-pulp",
    energy_required = 6,
    enabled = true, 
    allow_productivity = true,     
    allow_decomposition = false,
  }
})


data:extend({
  {
    type = "recipe",
    name = "rx-bakelite",
    categories = { "kr-electrolysis" }, 
  
    ingredients = {
      { type = "fluid", name = "rx-wood-pulp", amount = 36 },
      { type = "item", name = "rx-crushed-coal", amount = 4 },
      { type = "fluid", name = "steam", amount = 36 },
    },
    results = {
      { type = "item", name = "rx-bakelite", amount = 4 },
    },
    main_product = "rx-bakelite",
    energy_required = 3,

    icon = rx_fx .. "/recipes/recipe_rx-bakelite.png", 
    icon_size = 128,
    subgroup = "raw-material",
    --order = "b[bakelite]-a[synthetic-resin]",
    enabled = true, 
    allow_productivity = true, 
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.92, g = 0.16, b = 0.08, a = 0.50 },
    },    
  }
})

--[[
data:extend({
  {
    type = "recipe",
    name = "rx-purify-quartz",
    categories = { "kr-electrolysis" }, 
    energy_required = 12,
    ingredients = {
      { type = "item", name = "kr-sand", amount = 12 },
      { type = "item", name = "rx-crushed-coal", amount = 3 },
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 36 },
    },
    results = {
      { type = "item", name = "kr-quartz", amount = 18 },
      { type = "fluid", name = "kr-chlorine", amount = 24 },
    },
    main_product = "kr-quartz",
    enabled = true,    
    allow_productivity = true,
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.08, g = 0.16, b = 0.92, a = 0.50 },
    },          
  }
})
]]

-- ============================ End of file =============================
