-- File: /overrides/aai-industry/aai-intermediaries.lua

local update_recipe = require("rex-util").update_recipe

-- "stone-tablet", used as substrate for electronic-circuit and deciders.
-- "motor" translate to >> "Single-cylinder engine"
-- "engine-unit" >> "Multi-cylinder engine"
-- "electric-motor" >> "Small electric motor"
-- "electric-engine-unit" >> "Big electric motor"

update_recipe({
  name = "stone-tablet", 
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "stone-brick", amount = 1 }, -- substrate
    { type = "item", name = "iron-stick", amount = 2 }, -- structure
  },
  energy = 0.5,
  result_amount = 3,
  stack_size = 200,
  rocket_capacity = 1600,
})

update_recipe({
  name = "motor", -- "Single-cylinder engine"
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 2 }, -- structure
    { type = "item", name = "iron-gear-wheel", amount = 4 }, -- 4 
    { type = "item", name = "pipe", amount = 2 }, -- intake/exhaust
  },
  energy_required = 2,
  stack_size = 100,
})

update_recipe({
  name = "engine-unit", -- "Multi-cylinder engine"
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "steel-plate", amount = 4 }, -- structure
    { type = "item", name = "motor", amount = 4 }, -- 4 single-cylinder engines
    { type = "item", name = "electronic-circuit", amount = 1 }, -- basic electronics
    { type = "item", name = "pipe", amount = 2 }, -- intake/exhaust    
  },
  energy_required = 8,
  stack_size = 50,
})

update_recipe({
  name = "electric-motor", -- "Small electric motor"
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 2 }, -- structure
    { type = "item", name = "iron-gear-wheel", amount = 4 }, --
    { type = "item", name = "iron-stick", amount = 2 }, -- axle
    { type = "item", name = "copper-cable", amount = 8 }, -- basic electronics
  },
  energy_required = 2,
  stack_size = 100,
})

update_recipe({
  name = "electric-engine-unit", -- "Big electric motor"
  allow_productivity = true,
  categories = { "crafting-with-fluid" },  
  ingredients = {
    { type = "item", name = "steel-plate", amount = 4 }, -- structure
    { type = "item", name = "electric-motor", amount = 4 }, -- Chaining 4 small motors into 1 big motor
    { type = "item", name = "advanced-circuit", amount = 4 }, -- 1 logic control per 1 small electric-motor
    { type = "fluid", name = "lubricant", amount = 40 }, -- 4 motors * 10 lubricant
  },
  energy_required = 8,
  stack_size = 50,
})

update_recipe({
  name = "battery",
  allow_productivity = true,
  categories = { "crafting-with-fluid" },
  ingredients = {
    { type = "item", name = "iron-plate", amount = 2 }, -- electrode
    { type = "item", name = "copper-plate", amount = 2 }, -- electrode
    { type = "item", name = "glass", amount = 5 }, -- dielectric
    { type = "item", name = "copper-cable", amount = 2 }, -- copper bus
    { type = "fluid", name = "sulfuric-acid", amount = 20 }, -- dielectric
  },
  energy = 6,
})