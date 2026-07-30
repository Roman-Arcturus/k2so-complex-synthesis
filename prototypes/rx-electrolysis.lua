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
    name = "rx-solid-oxidizer",
    subgroup = "raw-material",
    icon = rx_assets .. "/rx-solid-oxidizer.png",
    order = "a[chemical]-b[oxidizer]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5,
  }
})


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================


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

-- ============================ End of file =============================
