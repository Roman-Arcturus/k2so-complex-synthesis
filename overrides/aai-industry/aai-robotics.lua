-- File: /overrides/aai-industry/aai-robotics.lua

local update_recipe = require("rex-util").update_recipe

--[[
roboport
flying-robot-frame
]]

update_recipe({
  name = "roboport", -- 4x4 = 16 tiles
  ingredients = 
  {
    { type = "item", name = "steel-plate", amount = 32 }, -- replace by 16x kr-steel-beam
    { type = "item", name = "electric-engine-unit", amount = 4 }, -- big-electric-motor
    { type = "item", name = "fast-inserter", amount = 8 }, -- flying robot catching & releasing
    { type = "item", name = "processing-unit", amount = 16 },
    { type = "item", name = "refined-concrete", amount = 16 }, -- 4x4
  },
  energy_required = 16, 
  stack_size = 10,
  rocket_capacity = 10,
})

update_recipe({
  name = "flying-robot-frame",
  ingredients = 
  {
    { type = "item", name = "low-density-structure", amount = 8 }, -- no steel for structure 
    { type = "item", name = "electric-engine-unit", amount = 4 }, -- 4x big electric motors 
    { type = "item", name = "battery", amount = 8 },
	  { type = "item", name = "selector-combinator", amount = 2 }, -- internal logic    
  },
  energy_required = 32,
  stack_size = 50,
  rocket_capacity = 150,
})