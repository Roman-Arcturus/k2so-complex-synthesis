# 🧪 [[item_rx-enriched-steel-mix]]

> **Thematic Description**: Synthesized by initiating a highly controlled electro-chemical leaching process on enriched metallic iron. Utilizing an intensive acid bath and electrical current inside an electrolysis column, the metallic matrix is partially dissolved and re-crystallized onto a solid steel template. This removes microscopic atomic impurities that standard smelting cannot separate, yielding a chemically pure, pre-carbonized metallic paste optimized for high-yield steel forging.

---

## 📊 Logistical Properties

- **Internal Item Name**: `rx-enriched-steel-mix`
- **Subgroup & Order**: `intermediate-product` / `a[chemical]-c[steel-mix]`
- **Inventory Stack Size**: `200`
- **Rocket Shipping Capacity**: `2000 units` (Payload Weight: `0.5` per unit)
- **Productivity Allowed**: ✅ Yes (Compounding Loop Stage)

---

## 🗺️ Production Process Flow

- **Machine Category**: `kr-electrolysis` (Electrolysis Plant)
- **Manufacturing Duration**: `12 seconds`
- **Logistical Impact**: High physical compression with toxic fluid recycling. The loop locks down heavy industrial gases and metal ores into a solid matrix, while generating chemical wastewater and residual chlorine gas byproducts that must be rerouted or neutralized locally.
- **Recipe Ratios**:
	- 📥 **Required Inputs**:
		- 📦 `[[kr-enriched-iron]]` (6)
		- 📦 `[[steel-plate]]` (1)
		- 🧪 `[[kr-hydrogen-chlorid-gas]]` (40)
	- 📤 **Yield Outputs**:
		- 💎 `[[rx-enriched-steel-mix]]` (6)
		- 🧪 `[[kr-dirty-water]]` (20)
		- 🧪 `[[chlorine]]` (10)

### 🔬 Process Design Rationale
Moving this recipe to the **Electrolysis Plant** gives a highly specialized machine a massive, high-volume production task:
1. **The Electro-Chemical Leaching**: Combining **40 units of Hydrogen Chloride gas** with electrical current cleanly dissolves the outer layer of the **6 Enriched Iron** nodes, stripping away mineral impurities.
2. **The Nucleation Seed**: The **1 Steel Plate** provides the stable structural framework. The iron atoms floating in the acid slurry instantly bind and crystalize to this seed plate.
3. **The Industrial Byproducts**: The chemical stripping leaves behind **20 units of Dirty Water** and releases **10 units of Chlorine gas**. This forces you to design a byproduct recycling column within your production lines to prevent gas bottlenecks.

---

## ⚙️ Lua Prototype Manifest

### 1. Item Declaration (`/prototypes/rx-chemistry.lua`)
```lua
data:extend({
  {
    type = "item",
    name = "rx-enriched-steel-mix",
    icon = rx_assets .. "/rx-enriched-steel-mix.png",
    subgroup = "intermediate-product",
    order = "a[chemical]-c[steel-mix]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 1,
  }
})
```

### 2. Recipe Declaration (`/prototypes/rx-chemistry.lua`)
```lua
data:extend({
  {
    type = "recipe",
    name = "rx-enrich-steel-mix",
    categories = { "kr-electrolysis" }, -- Shifted to Electrolysis Plant to expand machine utility
    enabled = true,                     
    energy_required = 12,               
    ingredients = {
      { type = "item", name = "kr-enriched-iron", amount = 6 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 42 }, -- 6*7
    },
    results = {
      { type = "item", name = "rx-enriched-steel-mix", amount = 6 },
      { type = "fluid", name = "kr-dirty-water", amount = 24 }, -- 6*4
      { type = "fluid", name = "chlorine", amount = 12 }, -- 6*2 
    },
    main_product = "rx-enriched-steel-mix",
    allow_productivity = true,          
    allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.08, g = 0.16, b = 0.92, a = 0.50 },
    },        
  }
})
```

### 3. English Interface Localization (`locale/en/config.cfg`)
