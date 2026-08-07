**`file: /prototypes/prototypes/prot_centrifuge.lua`**
**`categories = {"centrifuging"},`**

---

```lua
  name = "uranium-processing",
  ingredients = {
    { type = "item", name = "rx-crushed-uranium-ore", amount = 12 }, -- Replaces raw uranium-ore
  },
  results = {
    { type = "item", name = "uranium-235", amount = 1, probability = 0.007 },
    { type = "item", name = "uranium-238", amount = 1, probability = 0.993 },
  },
  main_product = "",
  energy_required = 6,
```




