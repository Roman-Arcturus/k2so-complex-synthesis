-- File: /overrides/aai-industry/aai-logistics.lua

local update_recipe = require("rex-util").update_recipe

update_recipe({
  name = "pump", -- pump is 1x2 = 2 tiles, replaces pipe in recipes, 1 pump per fluid outlet
  ingredients = { 
    { type = "item", name = "steel-plate", amount = 4 }, -- 2x
    { type = "item", name = "pipe", amount = 4 }, -- 2x pipe
    { type = "item", name = "electric-motor", amount = 2 }, -- 1x
    { type = "item", name = "electronic-circuit", amount = 2 }, -- 1x
  },
  energy_required = 2, 
  stack_size = 50,
})

