-- File: /overrides/krastorio2/k2-science.lua

local update_recipe = require("rex-util").update_recipe

--[[
kr-advanced-lab
kr-research-server

]]


update_recipe({
  name = "kr-advanced-lab", -- 3x3 = 9 tiles
  ingredients = {
    { type = "item", name = "lab", amount = 1 }, -- previous tier 
    { type = "item", name = "kr-steel-beam", amount = 9 }, -- structure 
    { type = "item", name = "advanced-circuit", amount = 36 }, -- x4
    { type = "item", name = "selector-combinator", amount = 18 }, -- x2
    { type = "item", name = "refined-concrete", amount = 9 }, -- foundation
  },
  energy = 9,
  stack_size = 10,
  rocket_capacity = 10,
})

update_recipe({
  name = "kr-research-server", -- 3x3 = 9 tiles
  ingredients = {
    { type = "item", name = "kr-steel-beam", amount = 9 }, -- structure 
    { type = "item", name = "processing-unit", amount = 36 }, -- x4
    { type = "item", name = "kr-electronic-components", amount = 81 }, 
    { type = "item", name = "refined-concrete", amount = 9 }, -- foundation
  },
  energy = 9,
  stack_size = 20,
  rocket_capacity = 20,
})