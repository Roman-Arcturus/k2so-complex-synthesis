-- File: /overrides/krastorio2/k2-smelting-tier2.lua

local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe

data:extend({
  {
    type = "recipe",
    name = "rx-purified-steel-melting",
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

