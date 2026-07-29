-- File: /overrides/core/vanilla-intermediaries.lua

local update_recipe = require("k2so-rcs-util").update_recipe

update_recipe({
  name = "iron-stick", 
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 1 }, 
  },
  energy = 0.5,
  result_amount = 2,
  stack_size = 200,
  rocket_capacity = 2000,
})

update_recipe({
  name = "iron-gear-wheel", 
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 1 }, 
  },
  energy = 0.5,
  result_amount = 1,
  stack_size = 200,
  rocket_capacity = 1000,
})

update_recipe({
  name = "copper-cable", 
  allow_productivity = true,
  ingredients = {
    { type = "item", name = "copper-plate", amount = 1 }, 
  },
  energy = 0.5,
  result_amount = 2,
  stack_size = 200,
  rocket_capacity = 2000,
})

