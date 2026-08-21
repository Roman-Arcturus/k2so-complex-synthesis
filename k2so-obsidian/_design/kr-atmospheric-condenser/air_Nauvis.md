---
facility-name: kr-atmospheric-condenser
description: condenses atmospheric gases
categories: '{"kr-atmosphere-condensation"}'
---
![[kr-atmospheric-condenser.png|128]]

#planet_Nauvis recipe:
```lua
data:extend({
  {
    type = "recipe",
    categories = {"kr-atmosphere-condensation"},
    name = "rx-condense-atmosphere",
    ingredients = {
      { type = "item", name = "rx-filter-gas", amount = 1 }
    },
    results = {
      { type = "fluid", name = "kr-nitrogen", amount = 240 },-- Output 1: Nitrogen 
      { type = "fluid", name = "oxygen", amount = 60 }, -- Output 2: Oxygen 
      { type = "fluid", name = "rx-argon", amount = 3 }, -- Output 3: Argon
      -- Filter durability check
      { type = "item",  name = "rx-filter-gas", amount = 1, independent_probability = 0.70 },
      { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.60 },
      -- 10% that filter is destroyed
    },
    energy_required = 18.0,
  }
})
```

