---
facility-name: kr-electrolysis-plant
description: Krastorio2 chemical plant variation. RX changes the prototype to use all 8 fluid ports.
categories: '{ "kr-electrolysis" }'
---
![[kr-electrolysis-plant.png|153]]

#mod_Krastorio2 facility properties:
```lua
name = "kr-electrolysis-plant",
energy_required = 10,
ingredients = {
  { type = "item", name = "kr-steel-beam", amount = 10 },
  { type = "item", name = "kr-automation-core", amount = 3 },
  { type = "item", name = "copper-plate", amount = 10 },
  { type = "item", name = "kr-glass", amount = 10 },
},
stack_size = 50,
crafting_speed = 1,
crafting_categories = { "kr-electrolysis" },
energy_usage = "0.375MW",
ingredient_count = 6,
module_slots = 2,
emissions_per_minute = { pollution = 0.5 },
```