-- File: /overrides/krastorio2/k2-intermediaries.lua

local update_recipe = require("rex-util").update_recipe

--[[
advanced-circuit
processing-unit


]]



update_recipe({
  name = "advanced-circuit", -- k2: 4x copper-cable, 4x electronic-circuit, 2x kr-electronic-components
  categories = { "crafting-with-fluid" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "copper-cable", amount = 4 }, --
    { type = "item", name = "electronic-circuit", amount = 4 }, --    
    { type = "item", name = "kr-electronic-components", amount = 4 }, --
    { type = "fluid", name = "kr-chlorine", amount = 16 }, --
  },
  energy = 6,
  amount = 2,   
  stack_size = 200,
  rocket_capacity = 800,
})

update_recipe({
  name = "processing-unit", -- k2: 3x kr-rare-metals, 6x advanced-circuit, 10x sulphuric-acid
  categories = { "crafting-with-fluid" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-silicon", amount = 8 }, --
    { type = "item", name = "kr-rare-metals", amount = 8 }, --
    { type = "item", name = "advanced-circuit", amount = 8 }, --    
    { type = "fluid", name = "sulfuric-acid", amount = 16 }, --
  },
  energy = 12,
  amount = 2,   
  stack_size = 200,
  rocket_capacity = 600,
})

update_recipe({
  name = "low-density-structure", -- 10x copper-plate, 2x steel, 5x plastic-bar 
  categories = { "crafting-with-fluid" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-rare-metals", amount = 6 }, --
    { type = "item", name = "steel-plate", amount = 2 }, --
    { type = "item", name = "plastic-bar", amount = 6 }, --
    { type = "fluid", name = "kr-nitrogen", amount = 36 }, --
  },
  energy = 16,
  stack_size = 100,
  rocket_capacity = 400,
})