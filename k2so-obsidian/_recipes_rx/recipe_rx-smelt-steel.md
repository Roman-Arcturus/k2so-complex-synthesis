*file: /prototypes/rx-smelting-t3.lua*

#### 📜 Thematic description:
High-yield direct basic oxygen steelmaking. Enriched iron and coke are combined with steel seed plates for thermal crystallization, then blasted with high-pressure oxygen gas inside an industrial furnace to directly synthesize high-grade steel without intermediate iron plate smelting, venting wastewater as a byproduct.

#### 🏭 Facility:
* [[facility_kr-industrial-furnace]]

#### 📥 Inputs:
* 📦 6 [[item_kr-enriched-iron]]
* 📦 6 [[item_kr-coke]]
* 📦 6 [[item_steel-plate]] *(Seed Charge Input)*
* 💧 36 [[fluid_kr-oxygen]]

#### 🧪 Result:
* 📦 12 [[item_steel-plate]] *(Net +6)*
* 🧪 36 [[fluid_kr-dirty-water]]

#### ⏱️ Balance & Crafting:
* 🧮292.0s = 3.12 factor * 3 slow melt/cool * (6 + 6 + 6 + 3.6 + 12-6 + 3.6)

#### 🧩 [[item_steel-plate]] in new recipes:
* 🔄 Feed-forward Seed Loop into [[recipe_rx-smelt-steel]]
* ➡️ 

#### 🔱 Derivatives:
* None