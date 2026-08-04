RX recipes produced in [[facility_kr-filtration-plant]]


```lua
name = "rx-filter-wood-pulp",
categories = { "kr-fluid-filtration" }, -- K2 filtration plant category
ingredients = {
  { type = "item", name = "rx-wood-chips", amount = 48 },
  { type = "fluid", name = "water", amount = 144 }, -- 
},
results = {
  { type = "fluid", name = "rx-wood-pulp", amount = 144 },
  { type = "item", name = "kr-biomass", amount = 6 }, -- Solid byproduct extraction
},
energy_required = 8, -- Washing and spinning duration
main_product = "rx-wood-pulp",     -- Tells the UI to prioritize the pulp icon
```











