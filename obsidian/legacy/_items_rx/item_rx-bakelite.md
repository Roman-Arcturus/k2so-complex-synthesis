# 🧪 [[legacy/_items_rx/item_rx-bakelite]]

> **Thematic Description**: Synthesized by combining biological cellulose plant fibers with high-purity petroleum polymers under an acid catalyst. Historically known as Bakelite, this compound represents the birth of modern synthetic material science. Entirely heat-resistant, physically rigid, and an absolute non-conductor, it serves as the ultimate high-performance substrate for advanced electronics, insulated casings, and structural framework.

---

## 📊 Logistical Properties

- **Internal Item Name**: `rx-bakelite`
- **Subgroup & Order**: `intermediate-product` / `a[biomaterial]-d[bakelite]`
- **Inventory Stack Size**: `200`
- **Rocket Shipping Capacity**: `2000 units` (Payload Weight: `0.5` per unit)
- **Productivity Allowed**: ✅ Yes (Compounding Loop Stage)

---

## 🗺️ Production Process Flow

- **Machine Category**: `chemistry` (Chemical Plant)
- **Manufacturing Duration**: `8 seconds`
- **Logistical Impact**: High volume compression. It aggregates a massive quantity of loose biological fibers and highly volatile liquids into a solid, rigid, high-density matrix item. This drastically reduces transport frequency and clears drone/train routing networks.
- **Recipe Ratios**:
	- 📥 **Required Inputs**:
		- 📦 `[[rx-wood-pulp]]` (24)
		- 📦 `plastic-bar` (4)
		- 🧪 `sulfuric-acid` (20)
	- 📤 **Yield Outputs**:
		- 💎 `[[rx-bakelite]]` (12)

---

## ⚙️ Lua Prototype Manifest

### 1. Item Declaration (`/prototypes/rx-chemistry.lua`)
```lua
data:extend({
  {
    type = "item",
    name = "rx-bakelite", 
    icon = k2_assets .. "/icons/items/black-reinforced-plate-kl.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-d[bakelite]",
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
    name = "[[rx-bakelite-synthesis]]",
    categories = { "chemistry" },      -- Standard chemical plant category
    enabled = true,                    -- Enabled for immediate runtime testing
    energy_required = 8,                
    ingredients = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "rx-bakelite", amount = 12 },
    },
    main_product = "rx-bakelite",
    allow_productivity = true,          -- Critical for compounding yield benefits
    allow_decomposition = false,
  }
})
```

### 3. English Interface Localization (`locale/en/config.cfg`)
```ini
[item-name]
rx-bakelite=Bakelite Insulation Substrate

[recipe-name]
rx-bakelite-synthesis=Synthetic Bakelite Chemical Formulation
```
