-- File: /overrides/aai-industry/aai-furnaces.lua

local update_recipe = require("rex-util").update_recipe

--[[
stone-furnace
steel-furnace
electric-furnace
industrial-furnace
]]

update_recipe({
  name = "stone-furnace", -- 2x2 = 4 tiles building
  enabled = true, 
  ingredients = {
    { type = "item", name = "stone", amount = 8 }, -- 2x
    { type = "item", name = "iron-ore", amount = 8 }, -- 2x
  },
  energy_required = 1, -- burner tech
})

update_recipe({
  name = "steel-furnace", -- 2x2 = 4 tiles building
  ingredients = {
    { type = "item", name = "stone-furnace", amount = 2 }, -- 2x burning chambers
	  { type = "item", name = "electronic-circuit", amount = 8 }, -- 2x
    { type = "item", name = "steel-plate", amount = 8 }, -- 2x
    { type = "item", name = "stone-brick", amount = 16 }, -- 4x tiles * 2x bricks * 2x reinforce
  },
  energy_required = 2, -- 4 tiles / 2 basic structure
})

update_recipe({
  name = "electric-furnace", -- 3x3 = 9 tiles building
  ingredients =
  {
    { type = "item", name = "steel-furnace", amount = 1 }, -- previous tier
    { type = "item", name = "selector-combinator", amount = 9 }, -- computing
    { type = "item", name = "copper-cable", amount = 90 }, -- 9 combinators * 10 induction-coils
    { type = "item", name = "refined-concrete", amount = 9 },
  },
  energy_required = 18, -- 9 tiles * 2
  stack_size = 25,
  rocket_capacity = 25,
})

update_recipe({
  name = "industrial-furnace", -- 5x5 = 25 tiles building
  ingredients =
  {
    { type = "item", name = "electric-furnace", amount = 1 }, -- previous tier
    { type = "item", name = "selector-combinator", amount = 9 },     
    { type = "item", name = "processing-unit", amount = 9 }, -- computing
    { type = "item", name = "refined-concrete", amount = 25 },
  },
  energy_required = 50, -- 25 tiles * 2
  stack_size = 20,
  rocket_capacity = 10,
})