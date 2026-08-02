_file: k2-chemistry.lua_

Krastorio2 fluid recipes produced in [[facility_chemical-plant]].  
Original recipe for reference and RX recipe override.

---

[[recipe_kr-ammonia]] :⏳5s
→ 50 [[fluid_kr-hydrogen]] + 50 [[fluid_kr-nitrogen]]
← 50 [[fluid_kr-ammonia]]

-------

[[recipe_kr-nitric-acid]] : ⏳5s
→ 50 [[fluid_kr-ammonia]] + 1 [[item_kr-rare-metals]] + 25 [[fluid_kr-mineral-water]]
← 50 [[fluid_kr-nitric-acid]]

---

[[recipe_kr-hydrogen-chloride]] : ⏳5s
→ 50 [[fluid_kr-chlorine]] + 50 [[fluid_kr-hydrogen]]
← 50 [[fluid_kr-hydrogen-chloride]]

---

[[recipe_kr-ferilizer]] : ⏳5s, 📚200/400  
→ 50 [[item_kr-biomass]] + 10 [[fluid_kr-nitric-acid]]
← 5 [[item_kr-fertilizer]]

---

[[recipe_kr-enriched-iron]] : ⏳3s, 📚200/1000  
→ 9 [[item_iron-ore]] + 3 [[_fluids_k2/fluid_sulfuric-acid]] + 25 [[fluid_water]]
← 6 [[item_kr-enriched-iron]] + 25 [[fluid_kr-dirty-water]]

---

[[recipe_kr-enriched-copper]] : ⏳3s, 📚200/1000  
→ 9 [[item_copper-ore]] + 6 [[fluid_kr-hydrogen-chloride]] + 25 [[fluid_water]]
← 6 [[item_kr-enriched-rare-metals]] + 25 [[fluid_kr-dirty-water]]

---

(one use only, needs to fix)
[[recipe_kr-lithium-chloride]] : ⏳5s, 📚200/1000  
→ 50 [[fluid_kr-mineral-water]] + 10 [[fluid_kr-hydrogen-chloride]]
← 6 [[fluid_kr-lithium-chloride]] 

-----

[[recipe_kr-lithium-sulfur-battery]] : ⏳4s, 📚200/200  
→ 1 [[item_copper-plate]] + 1 [[item_kr-lithium]] + 10 [[fluid_sulfuric-acid]]
← 1 [[item_kr-lithium-sulfur-battery]]

---

[[recipe_kr-imersite-chrystal]] : ⏳30s, 📚100/1000  
→ 6 [[item_kr-imersite-powder]] + 10 [[fluid_kr-nitric-acid]] + 10 [[fluid_sulfuric-acid]]
← 1 [[item_kr-lithium-sulfur-battery]]

---

