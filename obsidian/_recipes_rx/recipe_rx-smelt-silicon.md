
*file: /prototypes/rx-smelting-t3.lua*

#### 📜 Thematic description:
High-yield carbothermic reduction and seed-assisted crystallization of quartz using pulverized carbon and hydrogen chloride gas. Monocrystalline silicon seed crystals initiate uniform high-purity crystallization inside an industrial furnace, venting wastewater as a byproduct.

#### 🏭 Facility:
* [[facility_kr-industrial-furnace]]

#### 📥 Inputs:
* 📦 18 [[item_kr-quartz]]
* 📦 6 [[item_rx-pulverized-carbon]]
* 📦 6 [[item_kr-silicon]] *(Seed Crystal Input)*
* 💧 36 [[fluid_kr-hydrogen-chloride]]

#### 🧪 Result:
* 📦 24 [[item_kr-silicon]] *(Net +18)*
* 🧪 36 [[fluid_kr-dirty-water]]

#### ⏱️ Balance & Crafting:
* 🧮99.4s = 0.6 factor * 3 slow melt/cool * (18 + 6 + 6 + 3.6 + 24-6 + 3.6)

#### 🧩 [[item_kr-silicon]] in new recipes:
* 🔄 Feed-forward Seed Loop into [[recipe_rx-smelt-silicon]]
* ➡️ 

#### 🔱 Derivatives:
* None
