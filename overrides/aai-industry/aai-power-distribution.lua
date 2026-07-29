-- File: /overrides/aai-industry/aai-power-distribution.lua

local update_recipe = require("rex-util").update_recipe

--[[
small-lamp
accumulator
small-iron-electric-pole
medium-electric-pole
big-electric-pole
substation
]]

update_recipe({
  name = "small-lamp", -- 1x1 tile
  enabled = false,
  ingredients = 
  {
    { type="item", name = "iron-plate", amount = 1 },
    { type="item", name = "copper-cable", amount = 2 },
    { type="item", name = aai_glass_name, amount = 4 },
  },
  energy_required = 0.5, -- basic structure
  stack_size = 50,
  rocket_capacity = 200,
})

update_recipe({
  name = "accumulator", -- 2x2 = 4 tiles
  ingredients = 
  {
    { type = "item", name = "steel-plate", amount = 4 }, -- structure
    { type = "item", name = "battery", amount = 8 }, -- pack of 8
    { type = "item", name = "electronic-circuit", amount = 2 }, -- protection circuit
    { type = "item", name = "copper-wire", amount = 8 }, -- copper bus
  },
  energy = 8,
  stack_size = 50,
  rocket_capacity = 50,
})

update_recipe({
  name = "small-iron-electric-pole", -- 1x1
  enabled = false,
  ingredients = 
  {
    { type = "item", name = "iron-stick", amount = 4 }, -- structure
    { type = "item", name = "copper-cable", amount = 6 }, -- wire is 6 tiles long
  },
  energy_required = 1, -- primal structure  
  stack_size = 50,
  rocket_capacity = 200,  
})

update_recipe({
  name = "medium-electric-pole", -- 1x1
  enabled = false,
  ingredients = 
  {
    { type = "item", name = "small-iron-electric-pole", amount = 1 }, -- previous tier
    { type = "item", name = "iron-plate", amount = 4 }, -- replace by 2x kr-iron-beam
    { type = "item", name = "copper-cable", amount = 8 }, -- wire is 8 tiles long
    { type = "item", name = "stone-brick", amount = 2 } -- x2 bricks
  },
  energy_required = 2, -- basic structure
  stack_size = 50,
  rocket_capacity = 100,
})

update_recipe({
  name = "big-electric-pole", -- 2x2 = 4 tiles
  enabled = false,
  ingredients = 
  {
    -- 4x kr-steel-beam 
    { type = "item", name = "electronic-circuit", amount = 8 },
    { type = "item", name = "copper-cable", amount = 30 }, -- wire is 30 tiles long
    { type = "item", name = "refined-concrete", amount = 4 },
  },
  energy_required = 4,
  stack_size = 50,
  rocket_capacity = 100,
})

update_recipe({
  name = "substation", -- 2x2 = 4 tiles
  ingredients = 
  {
    -- 8x kr-steel-beam     
    { type = "item", name = "decider-combinator", amount = 4 },
    { type = "item", name = "advanced-circuit", amount = 4 },
    { type = "item", name = "refined-concrete", amount = 4 }, 
  },
  energy_required = 8, -- x2
  stack_size = 50,
  rocket_capacity = 25,
})

