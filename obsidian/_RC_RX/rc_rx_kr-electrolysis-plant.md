## RX recipes produced in [[facility_kr-electrolysis-plant]]


```lua
name = "rx-synthesize-bakelite",
categories = { "kr-electrolysis" }
energy_required = 12,                
ingredients = {
  { type = "item", name = "plastic-bar", amount = 4 },
  { type = "fluid", name = "rx-wood-pulp", amount = 48 },      
  { type = "fluid", name = "sulfuric-acid", amount = 12 },
},
results = {
  { type = "item", name = "rx-bakelite", amount = 4 },
},
main_product = "rx-bakelite",
```

---

```lua
name = "rx-purify-quartz-halogen",
categories = { "kr-electrolysis" }, 
enabled = true,                     
energy_required = 12,
ingredients = {
  { type = "item", name = "kr-sand", amount = 12 },
  { type = "item", name = "rx-crushed-coal", amount = 3 },
  { type = "fluid", name = "kr-hydrogen-chloride", amount = 30 },
},
results = {
  { type = "item", name = "kr-quartz", amount = 18 },
  { type = "fluid", name = "kr-chlorine", amount = 20 },
},
main_product = "kr-quartz",
```

---
