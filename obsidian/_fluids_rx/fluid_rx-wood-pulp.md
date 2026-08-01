# 🧪 [[fluid_rx-wood-pulp]]

> **Thematic Description**: Processed by circulating large fluid volumes through raw organic matter within a high-velocity mechanical screen. Wood chip chemical filtration strips away structural lignin binders, isolating high-purity cellulose fibers into a uniform biological slurry. This wet milling preparation yields a densely packed, clean fiber paste that functions as the prime stabilizer for manufacturing polymers, insulating layers, and composite matrices.

---

## 📊 Logistical Properties

- **Internal Item Name**: `rx-wood-pulp`
- **Subgroup & Order**: `intermediate-product` / `a[biomaterial]-c[wood-pulp]`
- **Inventory Stack Size**: `200`
- **Rocket Shipping Capacity**: `4000 units` (Payload Weight: `0.25` per unit)
- **Productivity Allowed**: ✅ Yes (Compounding Loop Stage)

---

## 📊 Balanced Proportions: Solid-Wastewater Split

To implement this without rounding the metrics, the filtration table block scales to these values:

* **Machine Category**: `kr-fluid-filtration` (Filtration Plant)
* **Manufacturing Duration**: ⏳ **8 seconds**
* **Recipe Ratios**:
	- 📥 **Required Inputs**:
		- 📦 `[[rx-wood-chips]]` (48)
		- 🧪 `water` (144)
	- 📤 **Yield Outputs**:
		- 🧪 `[[rx-wood-pulp]]` (144) (Fluid Slurry)
		- 💎 `[[kr-biomass]]` (12) (Solid Filter Cake Cake)

---

## ⚙️ Lua Prototype Manifest

### 1. Prototype Update (`/prototypes/rx-filtration.lua`)
Update your single-file filtration layout with this dual-output table block to comply perfectly with the machine's 1-fluid and 1-solid inventory grid configuration:

```lua
-- File: /prototypes/rx-filtration.lua

data:extend({
  {
    type = "recipe",
    name = "rx-filter-wood-pulp",
    categories = { "kr-fluid-filtration" },
    enabled = true,
    energy_required = 8.0,
    ingredients = {
      { type = "item", name = "rx-wood-chips", amount = 48 },
      { type = "fluid", name = "water", amount = 144 },
    },
    results = {
      { type = "fluid", name = "rx-wood-pulp", amount = 144 },
      { type = "item", name = "kr-biomass", amount = 12 }, -- Solid byproduct extraction
    },
    main_product = "rx-wood-pulp",
    allow_productivity = true,
    allow_decomposition = false,
  }
})
```



### 3. English Interface Localization (`locale/en/config.cfg`)
```ini
[item-name]
# Krastorio2 Filtration-Plant Machines
rx-wood-pulp=Cellulose Wood Pulp

[recipe-name]
# Krastorio2 Filtration-Plant Recipes
[[rx-filter-wood-pulp]]=Wood Chip Chemical Filtration
```
