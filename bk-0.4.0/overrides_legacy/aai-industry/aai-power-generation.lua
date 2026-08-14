-- File: /overrides/aai-industry/aai-power-generation.lua

local update_recipe = require("rex-util").update_recipe

--[[
boiler
steam-engine
burner-turbine
steam-turbine
]]

update_recipe({
  name = "boiler", -- 2x3 = 6 tiles
  enabled = false,
  ingredients = 
  {
    { type = "item", name = "stone-furnace", amount = 2 }, -- 2 burner chambers / previous tier
    { type = "item", name = "iron-plate", amount = 18 }, -- 6 tiles * 3 iron / structure
    { type = "item", name = "pipe", amount = 12 }, -- 3 fluid ports * 4 pipe / fluid piping
	  { type = "item", name = "stone-brick", amount = 12 }, -- 6 tiles * 2 bricks / foundation
  },
  energy_required = 6, -- burner tech
  stack_size = 50,
  rocket_capacity = 50,
})

update_recipe({
  name = "steam-engine", -- 3x5 = 15 tiles
  enabled = false,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 45 }, -- 15 tiles * 3 iron-plate > structure
    { type = "item", name = "pipe", amount = 8 }, -- 2 fluid ports * 4 pipes > fluid piping
    { type = "item", name = "electric-motor", amount = 8 }, -- power generation	
	  { type = "item", name = "copper-plate", amount = 32 }, -- 8 motor * 4 copper-plates > steam copper-tubing
    { type = "item", name = "stone-brick", amount = 30 },  -- 15 tiles * 2 bricks > foundation 
  },
  energy_required = 15,  -- burner tech
  stack_size = 20,
  rocket_capacity = 20,  
})

update_recipe({
  name = "burner-turbine", -- 4x4 = 16 tiles
  ingredients = {
    { type = "item", name = "stone-furnace", amount = 2 }, -- burner chambers
    { type = "item", name = "iron-plate", amount = 16 }, -- structure
    { type = "item", name = "electric-motor", amount = 8 }, -- power generation
    { type = "item", name = "copper-wire", amount = 16 }, -- wiring
  },
  energy = 16,
  stack_size = 10,
  rocket_capacity = 10,
})

update_recipe({
  name = "steam-turbine", -- 3x5 = 15 tiles
  enabled = false,
  ingredients = {
    { type = "item", name = "steam-engine", amount = 1 }, -- 1 steam chamber > previous tier
    { type = "item", name = "pump", amount = 2 }, -- 2 fluid ports
    { type = "item", name = "electric-engine-unit", amount = 8 }, -- big-electric-motor > power generation
    { type = "item", name = "iron-gear-wheel", amount = 48 }, -- 8 motor * 6 gears > replace with kr-steel-gear-wheel
    { type = "item", name = "refined-concrete", amount = 15 },
  },
  energy_required = 30,
  stack_size = 10,
  rocket_capacity = 10,
})