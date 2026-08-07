-- File: /overrides/aai-industry/aai-mining.lua

local update_recipe = require("rex-util").update_recipe

--[[
offshore-pump
pumpjack
burner-mining-drill
electric-mining-drill
]]


update_recipe({
  name = "offshore-pump", -- 1x2 = 2 tiles building
  enabled = false,
  ingredients =
  {
    { type = "item", name = "iron-plate", amount = 6 }, -- 2 tiles * 3 plates 
    { type = "item", name = "pipe", amount = 8 },  -- Long intake plumbing
    { type = "item", name = "electric-motor", amount = 4 }, -- Pump requires electricity
    { type = "item", name = "stone-brick", amount = 16 }, -- 2 tiles * 2 bricks * 4x shallow water and lava
  },
  energy_required = 1, -- primal structure
  stack_size = 20,
  rocket_capacity = 20,
})

update_recipe({
  name = "pumpjack", -- 3x3 = 9tiles
  enabled = false,
  ingredients = 
  {
    { type = "item", name = "steel-plate", amount = 18 }, -- x2
    { type = "item", name = "engine-unit", amount = 9 }, -- tiles * multi-cylinder engine
    { type = "item", name = "pump", amount = 1 }, -- 1 fluid outlet
    { type = "item", name = "pipe", amount = 32 }, -- Deep subterranean wellbore piping
    { type = "item", name = "stone-brick", amount = 72 } -- 9 tiles * 2 bricks * 4 wellbore
  },
  energy_required = 36, -- x4 time, deep structure  
  stack_size = 20,
  rocket_capacity = 20,
})

update_recipe({
  name = "burner-mining-drill", -- 2x2 = 4 tiles building
  ingredients =
  {
    { type = "item", name = "iron-plate", amount = 12 }, -- tiles * 3 iron-plte
    { type = "item", name = "iron-stick", amount = 12 }, -- tiles * 3
    { type = "item", name = "iron-gear-wheel", amount = 4 },
    { type = "item", name = "motor", amount = 4 },
  },
  energy_required = 1, -- burner tech
})

update_recipe({
  name = "electric-mining-drill", -- 3x3 = 9 tiles building
  ingredients =
  {
    { type = "item", name = "burner-mining-drill", amount = 2 }, -- previous tier
    { type = "item", name = "electric-motor", amount = 9 }, 
    { type = "item", name = "electronic-circuit", amount = 9 }, -- > 2x kr-automation-core
  },
  energy_required = 4.5, -- 9 tiles / 2 basic structure
})