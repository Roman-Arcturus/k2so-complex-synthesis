-- File: /overrides/aai-industry/aai-buildings.lua

local update_recipe = require("rex-util").update_recipe

--[[
beacon
centrifuge
oil-refinery
chemical-plant
]]

update_recipe({
  name = "beacon", -- 3x3 = 9 tiles
  ingredients = 
  {
    { type = "item", name = "low-density-structure", amount = 36 }, -- 9x tiles * 4x low-density-structure
    { type = "item", name = "processing-unit", amount = 18 }, -- 9x tiles * 2x processing-unit
    { type = "item", name = "efficiency-module", amount = 9 }, -- 9x tiles * 1x efficiency-module    
    { type = "item", name = "productivity-module", amount = 9 }, -- 9x tiles * 1x productivity-module
    { type = "item", name = "refined-concrete", amount = 9 }, -- 3x3 foundation
  },
  energy_required = 27, -- x3 speed
  stack_size = 20,
  rocket_capacity = 20,  
})

update_recipe({
  type = "recipe",
  name = "centrifuge", -- 3x3 = 9 tiles
  ingredients = {
    { type = "item", name = "steel-plate", amount = 45 }, -- 9 tiles * 2 steel-plate * 3 triple reinforce
    { type = "item", name = "electric-engine-unit", amount = 9 }, -- centrifuge rotation
    { type = "item", name = "iron-gear-wheel", amount = 90 }, -- 9 motor * 10 gears > replaced by kr-steel-gear-wheel
    { type = "item", name = "selector-combinator", amount = 9 }, -- 9 motor * 1 advanced combinator
    { type = "item", name = "refined-concrete", amount = 27 }, -- 9 tiles * 3 triple reinforce
  },
  energy_required = 27,
  stack_size = 10,
  rocket_capacity = 1,  
})

update_recipe({
  name = "oil-refinery", -- 5x5 = 25 tiles
  ingredients = 
  {
    { type = "item", name = "steel-plate", amount = 50 }, -- steel-plate x2
    { type = "item", name = "pump", amount = 5 }, -- 5 fluid outlet  
    { type = "item", name = aai_glass_name, amount = 20 }, -- 5 pump * 4 glass
    { type = "item", name = "electronic-circuit", amount = 20 }, -- 5 pump * 4 circuit
    { type = "item", name = "refined-concrete", amount = 25 }, 
  },
  energy_required = 50, -- 25 tiles * 2 
  stack_size = 10,
  rocket_capacity = 10,
})

update_recipe({
  name = "chemical-plant", -- 3x3 = 9 tiles
  ingredients = 
  {
    { type = "item", name = "steel-plate", amount = 18 }, -- 9 tiles * 2 steel-plate
    { type = "item", name = "pump", amount = 4 }, -- 4 fluid port
    { type = "item", name = "electronic-circuit", amount = 16 }, -- 4 fluid port * 4 circuit
    { type = "item", name = aai_glass_name, amount = 16 }, -- 4 fluid port * 4 glass
    { type = "item", name = "refined-concrete", amount = 9 }, -- 9 tiles
  },
  energy_required = 18, -- 9 tiles * 2
  stack_size = 20,
  rocket_capacity = 20,
})