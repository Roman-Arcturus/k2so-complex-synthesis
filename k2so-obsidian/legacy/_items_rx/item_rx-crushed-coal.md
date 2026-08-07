# 🧪 [[item_rx-crushed-coal]]

> **Thematic Description**: Created by mechanically milling high-purity solid carbon down into an ultra-fine microscopic dust. In advanced chemistry and blast furnace metallurgy, pulverized carbon provides a massive surface area that drastically accelerates chemical reduction reactions. It is critical for the uniform distribution of carbon atoms during steel smelting, synthetic rubber processing, and electronic grid molding.

---

## 📊 Logistical Properties

- **Internal Item Name**: `rx-crushed-coal`
- **Subgroup & Order**: `intermediate-product` / `a[carbon]-a[pulverized]`
- **Inventory Stack Size**: `200`
- **Rocket Shipping Capacity**: `2000 units` (Payload Weight: `0.5 * kg`)
- **Productivity Allowed**: ✅ Yes (Compounding Loop Stage)

---

## 🗺️ Production Process Flow

- **Machine Category**: `kr-crushing` (Crusher)
- **Manufacturing Duration**: `4 seconds`
- **Logistical Impact**: High physical surface area conversion. It turns raw, chunky carbon blocks into an incredibly dense powder reactant, ensuring high efficiency for advanced processing lines.
- **Recipe Ratios**:
	- 📥 **Required Inputs**:
		- 📦 `coal` (12)
	- 📤 **Yield Outputs**:
		- 💎 `[[rx-crushed-coal]]` (18)

---

## ⚙️ Lua Prototype Manifest

### 1. Item Declaration (`/data.lua`)
```lua
-- 0). test for safety
local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")
if not crushing_lib and not crushing_lib.make_recipe then return end

-- 1). define the item
data:extend({
  {
    type = "item",
    name = "rx-crushed-coal",
    icon = k2_assets .. "/icons/recipes/coal-filtration.png",
    subgroup = "intermediate-product",
    order = "a[carbon]-a[pulverized]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5 * kg,
  }
})

-- 2). register coal as usable input for kr-crusher
crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    order = "a[carbon]-a[pulverized]",
    energy_required = 2,
    results = {
	  { type = "item", name = "rx-crushed-coal", amount = 2 },
    },
  }
)
```
### 2. Recipe Declaration (`/data-updates.lua`)
```lua
-- 3) update the newly-created recipe
local raw_recipe = data.raw["recipe"]["kr-crush-coal"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "coal", amount = 12 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-coal", amount = 18 }
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

```

### 3. English Interface Localization (`locale/en/config.cfg`)
```ini
[item-name]
rx-crushed-coal=Pulverized Carbon

[recipe-name]
kr-crush-coal=Industrial Coal Pulverization Milling
```
