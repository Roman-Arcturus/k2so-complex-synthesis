-- File: /overrides/krastorio2/k2-kr-intermediaries.lua

local update_recipe = require("rex-util").update_recipe

--[[
kr-quartz

intermediaries:
    kr-automation-core
    kr-inserter-parts


kr-enriched-copper
kr-enriched-iron
]]

-- -------------- Smelting --------------

update_recipe({
  name = "kr-rare-metals", 
  categories = { "smelting" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-rare-metal-ore", amount = 2 }, --
    { type = "item", name = "copper-ore", amount = 1 }, --
  },
  energy = 3.6,
  stack_size = 200,
  rocket_capacity = 1000,
})

update_recipe({
  name = "kr-rare-metals-from-enriched-rare-metals", 
  categories = { "smelting" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-enriched-rare-metals", amount = 1 }, --
    { type = "item", name = "kr-enriched-copper", amount = 0.5 }, --
  },
  energy = 3.6,
  stack_size = 200,
  rocket_capacity = 1000,
})


update_recipe({
  name = "kr-glass", 
  categories = { "smelting" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-sand", amount = 16 }, --
    { type = "item", name = "kr-quartz", amount = 4 }, --
  },
  result_amount = 8,
  energy = 16,
  stack_size = 200,
  rocket_capacity = 800,
})

update_recipe({
  name = "kr-silicon", 
  categories = { "smelting" },
  allow_productivity = true,  
  ingredients = 
  {
    { type = "item", name = "kr-quartz", amount = 18 }, --
  },
  result_amount = 9,
  energy = 18,
  stack_size = 200,
  rocket_capacity = 800,
})

-- -------------- Intermediaries --------------

update_recipe({
  name = "kr-automation-core", -- 2x < 6*copper, 4*iron-gear-wheel, 4*iron-stick
  ingredients = 
  {
    { type = "item", name = "iron-gear-wheel", amount = 2 }, --
    { type = "item", name = "iron-stick", amount = 2 }, --
    { type = "item", name = "copper-cable", amount = 2 }, --    
  },
  energy = 2,
  stack_size = 200,
  rocket_capacity = 800,
})

update_recipe({
  name = "kr-inserter-parts", 1x < 2*iron-gear-wheel,  2*iron-stick
  ingredients = 
  {
    { type = "item", name = "iron-gear-wheel", amount = 2 }, --
    { type = "item", name = "iron-stick", amount = 2 }, --
    { type = "item", name = "copper-cable", amount = 1 }, --    
  },
  energy = 1,
  stack_size = 200,
  rocket_capacity = 800,
})

update_recipe({
  name = "kr-electronic-components", -- 4x < 2x glass,  2x silicon, 2x plastic
  allow_productivity = true,
  ingredients = 
  {
    { type = "item", name = "kr-silicon", amount = 4 }, -- substrate
    { type = "item", name = "kr-glass", amount = 4 }, 
    { type = "item", name = "copper-cable", amount = 4 },
    { type = "item", name = "plastic-bar", amount = 8 }, --
  },
  energy = 8,
  amount = 4, 
  stack_size = 200,
  rocket_capacity = 600,
})