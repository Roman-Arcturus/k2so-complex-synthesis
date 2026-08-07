-- File: /overrides/rex/rex-items.lua

local update_recipe = require("rex-util").update_recipe

data:extend({
  {
    type = "recipe",
    name = "rx-wood-pulp-filtration",
    categories = { "kr-fluid-filtration" }, 
    enabled = true,                    
    energy_required = 6,               
    ingredients = {
      { type = "item", name = "rx-crushed-wood", amount = 18 },
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