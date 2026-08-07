-- File: /overrides/aai-industry/aai-assembler-machines.lua

local update_recipe = require("rex-util").update_recipe

--[[
burner-assembling-machine
assembling-machine-1
assembling-machine-2
assembling-machine-3
]]

update_recipe({
  name = "burner-assembling-machine", -- 3x3 = 9 tiles building
  enabled = false,
  ingredients =
  {
    { type = "item", name = "iron-plate", amount = 18 }, 
    { type = "item", name = "electric-motor", amount = 3 }, -- tiles / 3 primal structure
    { type = "item", name = "electronic-circuit", amount = 3 }, -- > 2x kr-automation-core
  },
  energy_required = 1, -- burner tech
})

update_recipe({
  name = "assembling-machine-1", -- 3x3 = 9 tiles building
  enabled = false,
  ingredients =
  {
    { type = "item", name = "burner-assembling-machine", amount = 1 }, -- previous tier
    { type = "item", name = "iron-gear-wheel", amount = 9 },
    { type = "item", name = "electric-motor", amount = 9 },
    { type = "item", name = "stone-brick", amount = 9 }, -- tiles * 2 bricks / 2 basic structure coefficient
  },
  energy_required = 4.5, -- 9 tiles / 2 basic structure coefficient
})

update_recipe({
  name = "assembling-machine-2", -- 3x3 = 9 tiles building
  ingredients =
  {
    { type = "item", name = "assembling-machine-1", amount = 1 }, -- previous tier
    { type = "item", name = "electric-motor", amount = 9 }, -- Additional motors
    { type = "item", name = "electronic-circuit", amount = 9 }, -- Computing
    { type = "item", name = "pump", amount = 1 }, -- fluid recipe input
  },
  energy_required = 9, -- 9 tiles 
})

update_recipe({
  name = "assembling-machine-3", -- 3x3 = 9 tiles building
  ingredients =
  {
    { type = "item", name = "assembling-machine-2",  amount = 1 }, -- previous tier
    { type = "item", name = "electric-engine-unit",  amount = 9 }, -- big-electric-motor
    { type = "item", name = "processing-unit", 	     amount = 9 }, 
    { type = "item", name = "refined-concrete",		 amount = 9 }, -- foundation 3x3	
	-- K2 adds 2 speed-module
  },
  energy_required = 18, -- 9 tiles * 2
  stack_size = 50,
  rocket_capacity = 25,
})