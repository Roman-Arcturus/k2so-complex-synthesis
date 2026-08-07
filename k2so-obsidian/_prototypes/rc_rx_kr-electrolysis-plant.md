## RX recipes produced in #facility_kr-electrolysis-plant

**`file: /prototypes/prot_kr-electrolysis-plant.lua`**
#facility_kr-electrolysis-plant is early tech that unlocks #fluid_kr-chlorine and #fluid_kr-hydrogen .

**`categories = {"kr-electrolysis"}`**

---
## Recipes

```lua
name = "rx-wood-pulp",
ingredients = {
  { type = "item", name = "rx-crushed-wood", amount = 18 },
  { type = "fluid", name = "water", amount = 72 },
  { type = "fluid", name = "kr-chlorine", amount = 18 }, -- Chlorine-assisted chemical pulping
},
results = {
  { type = "fluid", name = "rx-wood-pulp", amount = 72 },
  { type = "item", name = "kr-biomass", amount = 6 }, -- Solid byproduct
},
main_product = "rx-wood-pulp",
energy_required = 6,
```

---

```lua
name = "rx-bakelite",
categories = { "kr-electrolysis" }, 
ingredients = {
  { type = "fluid", name = "rx-wood-pulp", amount = 36 },
  { type = "fluid", name = "steam", amount = 36 },  
  { type = "item",  name = "rx-crushed-coal", amount = 4 },
},
results = {
  { type = "item", name = "rx-bakelite", amount = 4 },
},
main_product = "rx-bakelite",
energy_required = 3,
```

