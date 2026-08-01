# 🧪 [[item_rx-solid-oxidizer]]

> **Thematic Description**: Created by chemically fixing volatile element gases into a stable, solid ionic crystalline lattice. In high-temperature vacuum metallurgy and advanced semiconductor manufacturing, introducing oxygen gas directly is mechanically impossible due to atmosphere venting constraints. The solid oxidizer acts as a dense chemical carrier that safely breaks down under extreme blast heat, releasing highly reactive, concentrated nascent oxygen atoms directly inside the melting forge matrix.

---

## 📊 Logistical Properties

- **Internal Item Name**: `rx-solid-oxidizer`
- **Subgroup & Order**: `intermediate-product` / `a[chemical]-b[oxidizer]`
- **Inventory Stack Size**: `200`
- **Rocket Shipping Capacity**: `2000 units` (Payload Weight: `0.5` per unit)
- **Productivity Allowed**: ✅ Yes (Compounding Loop Stage)

---

## 🗺️ Production Process Flow

- **Machine Category**: `kr-electrolysis` (Electrolysis Plant)
- **Manufacturing Duration**: `12 seconds`
- **Logistical Impact**: Extreme element concentration. It forces a massive consumption of volatile refinery gases and premium chemical acids, locking them down into a dense, solid crystalline format. This drastically compresses transport volume for high-efficiency factory routing.
- **Recipe Ratios**:
	- 📥 **Required Inputs**:
		- 🧪 `kr-oxygen-gas` (200)
		- 🧪 `kr-nitric-acid` (40)
		- 📦 `[[rx-pulverized-carbon]]` (4)
	- 📤 **Yield Outputs**:
		- 💎 `[[rx-solid-oxidizer]]` (2)

---

## ⚙️ Lua Prototype Manifest

### 1. Item Declaration (`/prototypes/rx-chemistry.lua`)
```lua
data:extend({
  {
    type = "item",
    name = "rx-solid-oxidizer",
    subgroup = "raw-material",
    icon = rx_assets .. "/rx-solid-oxidizer.png",
    order = "a[chemical]-b[oxidizer]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5,
  }
})
```

### 2. Recipe Declaration (`/prototypes/rx-chemistry.lua`)
```lua
data:extend({
  {
    type = "recipe",
    name = "rx-synthesize-oxidizer",
    categories = { "kr-electrolysis" }, 
    enabled = true,                     
    energy_required = 60,               
    ingredients = {
      { type = "fluid", name = "kr-oxygen", amount = 360 }, -- raw oxygen
      { type = "fluid", name = "kr-nitric-acid", amount = 36 }, -- chemical oxidizer
      { type = "item", name = "rx-pulverized-carbon", amount = 6 }, -- binding
    },
    results = {
      { type = "item", name = "rx-solid-oxidizer", amount = 18 },
    },
    main_product = "rx-solid-oxidizer",
    allow_productivity = true,          
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.92, g = 0.16, b = 0.08, a = 0.50 },
    },    
  }
})
```
