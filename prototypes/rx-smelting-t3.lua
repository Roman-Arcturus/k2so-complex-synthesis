-- File: prototypes/rx-smelting-t3.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-steel",
    icon = rx_assets .. "/rx-purified-steel.png",
    categories = { "smelting" },
    enabled = true,                    -- Set to true for runtime sandbox testing
    energy_required = 195.3,           -- Preserved K2 time factor with triple blast modifier
    ingredients = {
      { type = "item", name = "rx-enriched-steel-mix", amount = 6 },
      { type = "item", name = "rx-pulverized-carbon", amount = 3 },
      { type = "item", name = "rx-solid-oxidizer", amount = 3 },
    },
    results = {
      { type = "item", name = "steel-plate", amount = 9 },
    },
    main_product = "steel-plate",
    allow_productivity = true,         -- Enables compounding yield loops with prod modules
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-glass",
    icon = rx_assets .. "/rx-purified-glass.png",    
    categories = { "smelting" },
    enabled = true,                    
    energy_required = 119.7, -- Calculated via 0.7 base * 19 items * 3 melt * 3 slow cool
    ingredients = {
      { type = "item", name = "kr-quartz", amount = 6 },
      { type = "item", name = "rx-pulverized-carbon", amount = 3 },
      { type = "item", name = "kr-glass", amount = 1 },
    },
    results = {
      { type = "item", name = "kr-glass", amount = 9 },
    },
    main_product = "kr-glass",
    allow_productivity = true,         
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-silicon",
    icon = rx_assets .. "/rx-purified-silicon.png",        
    categories = { "smelting" },
    enabled = true,                    
    energy_required = 113.4, -- Calculated via 0.6 base * 21 items * 3 melt * 3 slow crystallize
    ingredients = {
      { type = "item", name = "kr-quartz", amount = 6 },
      { type = "item", name = "rx-pulverized-carbon", amount = 3 },
      { type = "item", name = "rx-solid-oxidizer", amount = 3 },
    },
    results = {
      { type = "item", name = "kr-silicon", amount = 9 },
    },
    main_product = "kr-silicon",
    allow_productivity = true,         
    allow_decomposition = false,
  }
})
