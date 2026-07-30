-- File: /prototypes/rx-items.lua

--[[
recipes of the newly created items:
    rx-wood-pulp-filtration
    rx-phenolic-resin-synthesis
]]

-- local update_recipe = require("rex-util").update_recipe

data:extend({
  {
    type = "recipe",
    name = "rx-wood-pulp-filtration",
    categories = { "kr-fluid-filtration" }, -- Correct K2 filtration plant category
    enabled = true,                    -- Set to true for immediate ingame testing
    energy_required = 6,               -- Washing and spinning duration
    ingredients = {
      { type = "item", name = "rx-wood-chips", amount = 18 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "fluid", name = "kr-dirty-water", amount = 40 },
    },
    main_product = "rx-wood-pulp",     -- Tells the UI to prioritize the pulp icon
    allow_productivity = true,         -- Enables your compounding yield strategy
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-phenolic-resin-synthesis",
    categories = { "chemistry" },      -- Standard chemical plant category
    enabled = true,                     -- Enabled for immediate runtime testing
    energy_required = 8,                
    ingredients = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "rx-phenolic-resin", amount = 12 },
    },
    main_product = "rx-phenolic-resin",
    allow_productivity = true,          -- Critical for compounding yield benefits
    allow_decomposition = false,
  }
})