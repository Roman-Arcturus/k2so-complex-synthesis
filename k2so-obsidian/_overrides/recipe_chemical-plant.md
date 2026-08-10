*file: /overrides/chemical-plant.lua*
# 📜 Thematic description:

Vanilla, #mod_AAI-Industry & #mod_Krastorio2 recipes produced in #facility_chemical-plant. 
Only #planet_Nauvis recipes up to #tech_space-science-pack .
Original recipe for reference and RX recipe override.

---

## Recipes as they appear in recipe select window

### Line_01

---

#tech_advanced-oil-processing 
#### ![[recipe_heavy-oil-cracking.png|32]] #recipe_heavy-oil-cracking
AAI: ⏳2s 
→ 40 #fluid_heavy-oil + 30 #fluid_water ← 30 #fluid_light-oil

**RX:** ⏳2.0s
→ 48 #fluid_heavy-oil + 36 #fluid_steam ← 36 #fluid_light-oil + 12 #fluid_petroleum-gas

---

####  ![[recipe_light-oil-cracking.png|32]] #recipe_light-oil-cracking 
AAI: ⏳2.0s 
→ 30 #fluid_light-oil + 30 #fluid_water ← 20 #fluid_petroleum-gas

RX: ⏳2.0s 
→ 36 #fluid_light-oil + 36 #fluid_steam ← 24 #fluid_petroleum-gas + 12 #fluid_kr-hydrogen

---
#### ![[recipe_solid-fuel-from-petroleum-gas.png|32]] #recipe_solid-fuel-from-petroleum-gas

AAI: ⏳1.0s, 📚200/1000 
→ 20 #fluid_petroleum-gas ← 1 #item_solid-fuel

RX: ⏳1.5s, 📚200/1000 
→ 48 #fluid_petroleum-gas + 12 #fluid_steam ← 2 #item_solid-fuel

---
#### ![[recipe_solid-fuel-from-light-oil.png|32]] #recipe_solid-fuel-from-light-oil

AAI: ⏳1.0s, 📚200/1000 
→ 10 #fluid_light-oil ← 1 #item_solid-fuel

RX: ⏳1.0s, 📚200/1000 
→ 24 #fluid_light-oil + 12 #fluid_water ← 2 #item_solid-fuel

---
#### ![[recipe_solid-fuel-from-heavy-oil.png|32]] #recipe_solid-fuel-from-heavy-oil

AAI: ⏳1.0s, 📚200/1000 
→ 20 #fluid_heavy-oil ← 1 #item_solid-fuel

RX: ⏳1.2s, 📚200/1000 
→ 36 #fluid_heavy-oil ← 2 #item_solid-fuel + 12 #fluid_kr-dirty-water

---

#### ![[fluid_lubricant.png|32]] #recipe_lubricant #tech_lubricant  
AAI: ⏳1.0s 
→ 10 #fluid_heavy-oil ← 10 #fluid_lubricant

RX: ⏳2.0s 
→ 48 #fluid_heavy-oil + 24 #fluid_kr-hydrogen + 2 #item_kr-quartz 
← 36 #fluid_lubricant + 12 #fluid_light-oil

---

![[fluid_sulfuric-acid.png|32]] #recipe_sulfuric-acid
AAI: ⏳1.0s
→ 1 #item_iron-plate + 5 #item_sulfur + 100 #fluid_water
← 50 #fluid_sulfuric-acid

RX: ⏳1.5s
→ 6 #item_sulfur + 1 #item_iron-plate + 1 #item_kr-quartz + 84 #fluid_steam
← 48 #fluid_sulfuric-acid + 12 #fluid_kr-dirty-water 

---

### Line_02 #tech_kr-advanced-chemistry 

#### ![[fluid_kr-ammonia.png|32]] #recipe_kr-ammonia

K2: ⏳5.0s 
→ 50 #fluid_kr-hydrogen + 50 #fluid_kr-nitrogen ← 50 #fluid_kr-ammonia

RX: ⏳4.0s 
→ 72 #fluid_kr-hydrogen + 24 #fluid_kr-nitrogen + 36 #fluid_steam + 1 #item_iron-plate 
← 48 #fluid_kr-ammonia + 12 #fluid_water 


---

#### ![[fluid_kr-nitric-acid.png|32]] #recipe_kr-nitric-acid

K2: ⏳5.0s 
→ 50 #fluid_kr-ammonia + 1 #item_kr-rare-metals + 25 #fluid_kr-mineral-water 
← 50 #fluid_kr-nitric-acid

RX: ⏳4.0s 
→ 48 #fluid_kr-ammonia + 36 #fluid_steam + 24 #fluid_kr-mineral-water + 2 #item_kr-rare-metals 
← 36 #fluid_kr-nitric-acid + 12 #fluid_kr-dirty-water 


---

#### ![[fluid_kr-hydrogen-chloride.png|32]] #recipe_kr-hydrogen-chloride

K2: ⏳5.0s 
→ 50 #fluid_kr-chlorine + 50 #fluid_kr-hydrogen 
← 50 #fluid_kr-hydrogen-chloride

RX: ⏳3.0s 
→ 36 #fluid_kr-chlorine + 48 #fluid_kr-hydrogen + 24 #fluid_steam + 2 #item_kr-quartz 
← 48 #fluid_kr-hydrogen-chloride + 12 #fluid_water 

---

### Line_03


#### K2: ![[item_kr-fertilizer.png|32]] #recipe_kr-ferilizer : ⏳5s, 📚200/400  
→ 50 #item_kr-biomass + 10 #fluid_kr-nitric-acid
← 5 #item_kr-fertilizer
#tech_kr-bio-processing

---

#### ![[item_plastic-bar.png|32]] #recipe_plastic-bar

AAI: ⏳1.0s, 📚200/2000 
→ 1 #item_coal + 20 #fluid_petroleum-gas ← 2 #item_plastic-bar

RX: ⏳1.5s, 📚200/2000 
→ 1 #item_rx-crushed-coal + 36 #fluid_petroleum-gas + 24 #fluid_steam 
← 3 #item_plastic-bar + 12 #fluid_kr-dirty-water 

#### ![[item_plastic-bar.png|32]] #recipe_plastic-bar-advanced (Bakelite Synthesis)

RX (Tier 2 - Composite Phenolic Resin): ⏳2.0s, 📚200/2000 
→ 1 #item_rx-bakelite + 48 #fluid_petroleum-gas + 12 #fluid_kr-nitric-acid + 24 #fluid_steam 
← 6 #item_plastic-bar + 12 #fluid_kr-dirty-water 

---

#### ![[item_sulfur.png|32]] #recipe_sulfur

AAI: ⏳1.0s, 📚200/1000 
→ 30 #fluid_water + 30 #fluid_petroleum-gas ← 2 #item_sulfur

RX: ⏳1.5s, 📚200/1000 
→ 48 #fluid_petroleum-gas + 36 #fluid_steam + 1 #item_kr-quartz 
← 3 #item_sulfur + 12 #fluid_kr-dirty-water + 12 #fluid_kr-hydrogen 

---

#tech_battery 

#### ![[item_battery.png|32]] #recipe_battery

AAI: ⏳4.0s, 📚200/400 
→ 1 #item_iron-plate + 1 #item_copper-plate + 20 #fluid_sulfuric-acid ← 1 #item_battery

RX: ⏳3.6s, 📚200/400 
→ 3 #item_copper-plate + 3 #item_iron-plate + 6 #item_rx-bakelite + 48 #fluid_sulfuric-acid 
← 2 #item_battery + 12 #fluid_kr-dirty-water 


---

*prototype*
#### #recipe_rx-guncotton 
RX: ⏳3.0s, 📚200/1000 
→ 24 #fluid_rx-wood-pulp + 36 #fluid_kr-nitric-acid + 24 #fluid_sulfuric-acid 
← 4 #item_rx-guncotton + 24 #fluid_kr-dirty-water 

---

####  ![[item_explosives.png|32]] #recipe_explosives 
AAI: ⏳4s, 📚200/500
→ 1 #item_coal + 1 #item_sulfur + 10 #fluid_water ← 2 #item_explosives

RX: ⏳2.0s, 📚200/500 
→ 2 #item_rx-guncotton + 1 #item_sulfur + 1 #item_coal ← 2 #item_explosives 

-------


---

#### K2: ![[item_kr-enriched-iron-ore.png|32]] #recipe_kr-enriched-iron : ⏳3s, 📚200/1000  
→ 9 #item_iron-ore + 3 #fluid_sulfuric-acid + 25 #fluid_water
← 6 #item_kr-enriched-iron + 25 #fluid_kr-dirty-water
#tech_kr-enriched-ores
*will be replaced by #Tier3 crushing/ enriching/ smelting recipes.*

---

#### K2: ![[item_kr-enriched-copper-ore.png|32]] #recipe_kr-enriched-copper : ⏳3s, 📚200/1000  
→ 9 #item_copper-ore + 6 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water
#tech_kr-enriched-ores
*will be replaced by #Tier3 crushing/ enriching/ smelting recipes.

---

#### K2: ![[item_kr-enriched-rare-metal-ore.png|32]] #recipe_kr-enriched-rare-metals : ⏳3s, 📚200/1000  
→ 9 #item_copper-ore + 10 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water
#tech_kr-enriched-ores
*will be replaced by #Tier3 crushing/ enriching/ smelting recipes.

---

#### K2:![[item_kr-lithium-chloride.png|32]] #recipe_kr-lithium-chloride : ⏳5s, 📚200/1000  
→ 50 #fluid_kr-mineral-water + 10 #fluid_kr-hydrogen-chloride
← 6 #fluid_kr-lithium-chloride 
#tech_kr-lithium-processing

---
### Line_04

---


#### K2:![[item_kr-lithium-sulfur-battery.png|32]] #recipe_kr-lithium-sulfur-battery : ⏳4s, 📚200/200  
→ 1 #item_copper-plate + 1 #item_kr-lithium + 10 #fluid_sulfuric-acid
← 1 #item_kr-lithium-sulfur-battery
#tech_kr-lithium-sulfur-battery

---

### Line_05

---

***(prototype)***
#### RX: ![[item_rx-rare-metals-bearing.png|36]] #recipe_rx-rare-metals-bearing : ⏳2s, 📚200/600  
→ 1 #item_kr-steel-gear-wheel (structure)
	+ 1 #item_kr-rare-metals 
	+ 16 #fluid_kr-hydrogen-chloride 
	+ 16 #fluid_kr-nitrogen 
← 1 #item_rx-rare-metals-bearing + 32 #fluid_kr-dirty-water 

----
#### K2: ![[item_kr-imersite-crystal.png|32]] #recipe_kr-imersite-chrystal : ⏳30s, 📚100/1000  
→ 6 #item_kr-imersite-powder + 10 #fluid_kr-nitric-acid + 10 #fluid_sulfuric-acid
← 1 #item_kr-lithium-sulfur-battery
#tech_kr-quarry-minerals-extraction

---

#### K2: ![[item_dt-fuel-cell.png|32]] #recipe_kr-dt-fuel-cell : ⏳5s, 📚10/10
→ 1 #item_kr-tritium + 1 #item_kr-empty-dt-fuel-cell + 10 #fluid_kr-heavy-water
← 1 #item_kr-dt-fuel-cell 
#tech_kr-fusion-energy

---





