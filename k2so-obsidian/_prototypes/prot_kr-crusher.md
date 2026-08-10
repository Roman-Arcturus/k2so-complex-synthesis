## RX recipes produced in #facility_kr-crusher

**`file: /prototypes/prot_kr-crusher.lua`**

New recipes are defined through:
`local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")`
Recipe names must follow K2 rule: **kr-crush-<item_name>**

---

## Recipe List

### ![[item_rx-crushed-wood.png|32]] #recipe_kr-crush-wood : ⏳2s, 📚200/2000
 → 6 #item_wood
 ← 18 #item_rx-crushed-wood
 
---

### ![[item_rx-crushed-coal.png|32]] #recipe_kr-crush-coal : ⏳2s, 📚200/1600
 → 6 #item_coal
 ← 12 #item_rx-crushed-coal + 6 #item_kr-sand

---

### ![[item_rx-crushed-iron-ore.png|32]] #recipe_kr-crush-iron-ore : ⏳2s, 📚200/1600
 → 6 #item_iron-orel
 ← 12 #item_rx-crushed-iron-ore + 6 #item_kr-sand

---

### ![[item_rx-crushed-copper-ore.png|32]] #recipe_kr-crush-copper-ore : ⏳2s, 📚200/1600
 → 6 #item_copper-ore
 ← 12 #item_rx-crushed-copper-ore + 6 #item_kr-sand

---

### ![[item_rx-crushed-rare-metal-ore.png|32]] #recipe_kr-crush-kr-rare-metal-ore : ⏳2s, 📚200/1600
 → 6 #item_kr-rare-metal-ore
 ← 12 #item_rx-crushed-rare-metal-ore + 6 #item_kr-sand

---

### ![[item_rx-crushed-uranium-ore.png|32]] #recipe_kr-crush-uranium-ore : ⏳2s, 📚200/1600
 → 6 #item_uranium-ore 
 ← 12 #item_rx-crushed-uranium-ore + 6 #item_kr-sand


---


Crushed variants have more purity and lesser weight. The general rule 6 input ➡️18 output.
6 raw-item ➡️ 12 crushed-variant + 6 sand as byproduct.
6 wood ➡️ 18 crushed-wood, as crushed-wood will be needed in high quantities for #fluid_rx-wood-pulp 

We should analyse the possibility of using crushed ores directly in smelts, without enrichment.

#item_kr-imersite processing already works this way.

We will need to implement this principle for #item_uranium-ore processing as well. To separate centrifuging from crushing the raw radioactive ore.

------





