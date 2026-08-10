-- File: /overrides/aai-industry/aai-combinators.lua

local update_recipe = require("rex-util").update_recipe

update_recipe({
  name = "power-switch", -- 2x2 
  ingredients = { 
    { type = "item", name = "iron-plate", amount = 8 }, -- 2x structure
    { type = "item", name = "electric-motor", amount = 2 }, -- moving switch
    { type = "item", name = "electronic-circuit", amount = 2 }, -- 1x
    { type = "item", name = "stone-brick", amount = 8 }, -- 4 tiles * 2 bricks
  },
  energy_required = 4,
  stack_size = 20,
  rocket_capacity = 20,
})

update_recipe({
  name = "arithmetic-combinator", -- 1x1
  ingredients = { 
    { type = "item", name = "stone-tablet", amount = 4 }, -- substrate    
    { type = "item", name = "copper-cable", amount = 8 }, -- 1x    
    { type = "item", name = "electronic-circuit", amount = 4 }, -- 1x
  },
  energy_required = 1, 
  rocket_capacity = 200,  
})

update_recipe({
  name = "decider-combinator", -- 1x1
  ingredients = { 
    { type = "item", name = "stone-tablet", amount = 4 }, -- substrate
    { type = "item", name = "copper-cable", amount = 8 }, -- 1x    
    { type = "item", name = "electronic-circuit", amount = 4 }, -- 1x
  },
  energy_required = 1, 
  rocket_capacity = 200,
})

update_recipe({
  name = "constant-combinator", -- 1x1
  ingredients = { 
    { type = "item", name = "stone-tablet", amount = 4 }, -- substrate
    { type = "item", name = "copper-cable", amount = 4 }, -- 1x    
    { type = "item", name = "electronic-circuit", amount = 2 }, -- 1x
  },
  energy_required = 1, 
  rocket_capacity = 200,
})

update_recipe({
  name = "display-panel", -- 1x1
  ingredients = { 
    { type = "item", name = "stone-tablet", amount = 4 }, -- substrate
    { type = "item", name = "copper-cable", amount = 16 }, -- 1x
    { type = "item", name = "small-lamp", amount = 1 }, -- 1x    
    { type = "item", name = "electronic-circuit", amount = 8 }, -- 1x
  },
  energy_required = 1, 
  rocket_capacity = 200,
})

update_recipe({
  name = "selector-combinator", -- 1x1
  ingredients = { 
    { type = "item", name = "stone-tablet", amount = 4 }, -- substrate    
    { type = "item", name = "arithmetic-combinator", amount = 2 }, 
    { type = "item", name = "decider-combinator", amount = 2 }, 
    { type = "item", name = "advanced-circuit", amount = 2 },     
  },
  energy_required = 1, 
  rocket_capacity = 200,
})

update_recipe({
  name = "programmable-speaker", -- 1x1
  ingredients = { 
    { type = "item", name = "small-iron-electric-pole", amount = 1 }, -- 1x    
    { type = "item", name = "electronic-circuit", amount = 4 }, -- 1x
    { type = "item", name = "stone-brick", amount = 2 }, 
  },
  energy_required = 1, 
  rocket_capacity = 50,  
})