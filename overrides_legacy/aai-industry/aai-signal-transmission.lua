-- File: /overrides/aai-industry/aai-signal-transmission.lua

local update_recipe = require("rex-util").update_recipe

update_recipe({
  name = "aai-signal-sender", -- 5x5 tiles
  ingredients = {
    { type = "item", name = "low-density-structure", amount = 100 }, -- structure x4
	  { type = "item", name = "glass",                 amount = 200 }, -- glass x8
    { type = "item", name = "electric-engine-unit",  amount = 25 }, -- rotate the telescope x1
    { type = "item", name = "processing-unit",       amount = 50 }, -- 
    { type = "item", name = "refined-concrete",      amount = 50 }, -- x2
  },
  energy_required = 50,
  stack_size = 10,
  rocket_capacity = 5,
})

update_recipe({
  name = "aai-signal-receiver", -- 9x9 tiles
  ingredients = {
    { type = "item", name = "low-density-structure", amount = 162 }, -- x2 structure
	  { type = "item", name = "electric-engine-unit",  amount = 40 }, -- antennae rotation
    { type = "item", name = "battery",               amount = 81 }, --     
    { type = "item", name = "processing-unit",       amount = 81 }, -- cpus
    { type = "item", name = "refined-concrete",      amount = 81 }, -- x1
  },
  energy_required = 81,
  stack_size = 5,
  rocket_capacity = 1,
})
