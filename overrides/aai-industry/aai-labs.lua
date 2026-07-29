-- File: /overrides/aai-industry/aai-labs.lua

local update_recipe = require("rex-util").update_recipe

--[[
burner-lab
lab
]]


update_recipe({
  name = "burner-lab", -- 3x3 = 9 tiles
  ingredients = 
  {
    { type = "item", name = "iron-stick", amount = 18 },    
    { type = "item", name = "copper-cable", amount = 18 },
    { type = "item", name = "motor", amount = 9 }, -- x2 
    { type = "item", name = "stone-brick", amount = 9 },
  },
  energy_required = 2, -- burner tech
  stack_size = 10,
  rocket_capacity = 10,
})

update_recipe({
  name = "lab", -- 3x3 = 9 tiles
  ingredients = 
  {
    { type = "item", name = "burner-lab", amount = 1 },
    { type = "item", name = "electronic-circuit", amount = 18 }, -- x2 
    { type = "item", name = aai_glass_name, amount = 18 },
    { type = "item", name = "electric-motor", amount = 9 },
    { type = "item", name = "stone-brick", amount = 9 },    
  },
  energy_required = 4.5, -- 9 tiles / 2 basic structure
  stack_size = 10,
  rocket_capacity = 10,
})