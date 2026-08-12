*file: /overrides/kr-electrolysis-plant.lua*

**📜 Thematic description:**

#mod_Krastorio2 recipes produced in #facility_kr-electrolysis-plant. 
This facility accept up to two fluids as input and up to two fluids as outputs. Has 2 module slots.
Only #planet_Nauvis recipes up to #tech_space-science-pack .
Original recipe for reference and RX recipe override.

---

### Recipes list

### 🔱 ![[recipe_kr-water-electrolysis.png|32]] #recipe_kr-water-electrolysis
**K2**: ⏳2s 
→ 10 #item_kr-sand  + 40 #fluid_water
← 30 #fluid_kr-chlorine + 20 #fluid_kr-hydrogen

**RX**: ⏳2s 
→ 12 #item_kr-sand + 48 #fluid_water + 24 #fluid_steam + 2 #item_coal
← 24 #fluid_kr-chlorine + 24 #fluid_kr-hydrogen

(early #tech_automation-science-pack)

---

### 🔱 ![[recipe_kr-water-separation.png|32]] #recipe_kr-water-separation
**K2**: ⏳2s 
→ 50 #fluid_water
← 20 #fluid_kr-oxygen + 30 #fluid_kr-hydrogen

**RX:** ⏳2.0s
→ 48 #fluid_water + 12 #fluid_sulfuric-acid
← 48 #fluid_kr-hydrogen + 24 #fluid_kr-oxygen + 2 #item_sulfur

( #tech_kr-advanced-chemistry )

---

### 🔱 ![[item_kr-lithium-chloride 1.png|32]] #recipe_kr-lithium-chloride 
**K2**: ⏳25s 
→ 5 #item_kr-lithium-chloride + 50 #fluid_water 
← 5 #item_kr-lithium + 10 #fluid_kr-chlorine 

**RX:** ⏳24s
→ 6 #item_kr-lithium-chloride + 48 #fluid_steam + 1 #item_copper-plate
← 6 #item_kr-lithium + 24 #fluid_kr-chlorine + 12 #fluid_water

(post #tech_kr-advanced-chemistry )

---

### 🔱 ![[fluid_kr-heavy-water.png|32]] #recipe_kr-heavy-water
**K2**: ⏳120s 
→ 500 #fluid_water
← 20 #fluid_kr-heavy-water
(advanced level, unlocked by #tech_kr-fusion-energy  )

**RX:** ⏳96.0s
→ 480 #fluid_water + 24 #fluid_sulfuric-acid + 2 #item_kr-rare-metals
← 12 #fluid_kr-heavy-water + 96 #fluid_kr-hydrogen + 4 #item_sulfur 

---

