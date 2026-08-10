-- File: /overrides/aai-industry/aai-tiles.lua

local update_recipe = require("rex-util").update_recipe



update_recipe({
  name = "concrete",
  categories = { "crafting-with-fluid" } ,
  allow_productivity = true,
  ingredients = 
  {
    { type="item",  name = "stone-brick", amount = 12 }, -- 2 stone-brick per 1 concrete
    { type="item",  name = "iron-stick", amount = 12 }, -- 1 iron-stick per 1 stone-brick 
    { type="item",  name = aai_sand_name, amount = 36 }, -- 3 sand per 1 stone-brick 
    { type="fluid", name = "water", amount = 120}, -- 10 water per 1 brick
  },
  energy_required = 12,
  result_amount = 6,
  stack_size = 200,
  rocket_capacity = 100,
})
