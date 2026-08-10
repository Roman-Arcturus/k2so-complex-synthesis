-- File: /overrides/aai-industry/aai-military.lua
local update_recipe = require("rex-util").update_recipe

--[[
radar
gun-turret
laser-turret
flamethrower-turret
gate
concrete-gate
steel-gate
]]

update_recipe({
  name = "radar", -- 3x3 = 9 tiles
  enabled = false,
  ingredients = 
  {
    { type="item", name="iron-plate", amount = 27 }, -- x3 tiles
    { type="item", name="electronic-circuit", amount = 27 }, -- x3 tiles
    { type="item", name="copper-cable", amount = 27 }, -- 1x cable per circuit
    { type="item", name="electric-motor", amount = 8 },
  },
  energy_required = 9,
  stack_size = 50,
  rocket_capacity = 20,
})

update_recipe({
  name = "gun-turret", -- 2x2 = 4 tiles
  enabled = false,
  ingredients = 
  {
    { type="item", name="iron-plate", amount = 12 }, -- replaced by 5x iron-beam
    -- { type="item", name="electronic-circuit", amount = 8}, -- 4x kr-automation-circuit
    { type="item", name="iron-gear-wheel", amount = 8},
    { type="item", name="engine-unit", amount = 8 }, -- cyngle-cilinder engine, no electricity
  },
  energy_required = 16, -- x4
  stack_size = 50,
  rocket_capacity = 25,
})

update_recipe({
  name = "laser-turret", -- 2x2 = 4 tiles
  ingredients = 
  {
    { type="item", name = "steel-plate", amount = 16 }, -- x2
    { type="item", name = "decider-combinator", amount = 8 },
    { type="item", name = "battery", amount = 16 },
    { type="item", name = "electric-motor", amount = 8 },
  },
  energy_required = 32, -- x8
  stack_size = 50,
  rocket_capacity = 25,  
})

update_recipe({
  name = "flamethrower-turret", -- 2x3 = 6 tiles
  ingredients = 
  {
    { type="item", name = "steel-plate", amount = 18 }, -- x3    
    { type="item", name = "pump", amount = 2 },
    { type="item", name = "engine-unit", amount = 6 },
  },
  energy_required = 48, -- x8
  stack_size = 50,
  rocket_capacity = 20,  
})

update_recipe({
  name = "gate",
  ingredients = 
  {
    { type="item", name = "steel-plate", amount = 2 },
    { type="item", name = "electronic-circuit", amount = 2 },
    { type="item", name = "motor", amount = 4 },
  },
  energy_required = 2,
  stack_size = 50,
  rocket_capacity = 50,
})

update_recipe({
  name = "concrete-gate",
  ingredients = 
  {
    { type="item", name = "gate", amount = 2 }, -- previous tier
    { type="item", name = "steel-plate", amount = 4 }, -- reinforcing
    { type="item", name = "advanced-circuit", amount = 2 },
    { type="item", name = "engine-unit", amount = 2 },
  },
  energy_required = 4,
  stack_size = 50,
  rocket_capacity = 50,
})

update_recipe({
  name = "steel-gate",
  ingredients = 
  {
    { type="item", name = "concrete-gate", amount = 2 }, -- previous tier
    { type="item", name = "steel-plate", amount = 8 }, -- reinforcing
    { type="item", name = "processing-unit", amount = 2 },
    { type="item", name = "engine-unit", amount = 4 },
  },
  energy_required = 8,
  stack_size = 50,
  rocket_capacity = 50,
})
