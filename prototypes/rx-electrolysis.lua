-- File: prototypes/rx-electrolysis.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"


-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "item",
    name = "rx-bakelite", 
    icon = k2_assets .. "/icons/items/black-reinforced-plate-kl.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-d[bakelite]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5, 
  }
})

data:extend({
  {
    type = "item",
    name = "rx-solid-oxidizer",
    subgroup = "raw-material",
    icon = rx_assets .. "/rx-solid-oxidizer.png",
    order = "a[chemical]-b[oxidizer]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5,
  }
})

data:extend({
  {
    type = "item",
    name = "rx-enriched-steel-mix",
    --icon = rx_assets .. "/rx-enriched-steel-mix.png",
    icon = k2_assets .. "/icons/items/imersite-crystal-4-light.png",
    subgroup = "intermediate-product",
    order = "a[chemical]-c[steel-mix]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 1,
  }
})



-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================


data:extend({
  {
    type = "recipe",
    name = "rx-bakelite-synthesis",
    categories = { "kr-electrolysis" }, 
    enabled = true,                    -- Enabled for immediate runtime testing
    energy_required = 12,                
    ingredients = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 24 },
    },
    results = {
      { type = "item", name = "rx-bakelite", amount = 12 },
    },
    main_product = "rx-bakelite",
    allow_productivity = true,          -- Critical for compounding yield benefits
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-oxidizer-production",
    categories = { "kr-electrolysis" }, 
    enabled = true,                     
    energy_required = 60,               
    ingredients = {
      { type = "fluid", name = "kr-oxygen", amount = 360 }, -- raw oxygen
      { type = "fluid", name = "kr-nitric-acid", amount = 36 }, -- chemical oxidizer
      { type = "item", name = "rx-pulverized-carbon", amount = 6 }, -- binding
    },
    results = {
      { type = "item", name = "rx-solid-oxidizer", amount = 18 },
    },
    main_product = "rx-solid-oxidizer",
    allow_productivity = true,          
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.92, g = 0.16, b = 0.08, a = 0.50 },
    },    
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-enriched-steel-mix-synthesis",
    categories = { "kr-electrolysis" }, -- Shifted to Electrolysis Plant to expand machine utility
    enabled = true,                     
    energy_required = 12,               
    ingredients = {
      { type = "item", name = "kr-enriched-iron", amount = 6 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 42 }, -- 6*7
    },
    results = {
      { type = "item", name = "rx-enriched-steel-mix", amount = 6 },
      { type = "fluid", name = "kr-dirty-water", amount = 24 }, -- 6*4
      { type = "fluid", name = "chlorine", amount = 12 }, -- 6*2 
    },
    main_product = "rx-enriched-steel-mix",
    allow_productivity = true,          
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.08, g = 0.16, b = 0.92, a = 0.50 },
    },        
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-advanced-quartz-electrolysis",
    categories = { "kr-electrolysis" }, -- Expanded usage for the Electrolysis Plant
    enabled = true,                     -- Active for immediate runtime testing
    energy_required = 8.0,              -- High-throughput industrial separation speed
    ingredients = {
      { type = "item", name = "kr-sand", amount = 12 },
      { type = "item", name = "rx-pulverized-carbon", amount = 3 },
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "item", name = "kr-quartz", amount = 18 },
      { type = "fluid", name = "chlorine", amount = 20 },
    },
    main_product = "kr-quartz",
    allow_productivity = true,         -- Vital for compounding resource conservation loops
    allow_decomposition = false,
  }
})


-- ============================ End of file =============================
