# Logistics - Power distribution

*file: /overrides/logistics_power-distribution.lua*

## 📜 Thematic description:

Recipes for power-distribution.
Their original recipes for reference and RX overwrites.
Produced in #facility_assembling-machine.
#mod_AAI-Industry style of reusing previous tier is applied to all power poles, except substation.
📚: Items in Stack / Rocket_capacity. K2 stacks are usually set to 50 for logistics.

---

## Logistics / Power distribution

K2: #recipe_small-electric-pole ⏳0.5s, 📚50/50
→ 1 #item_wood + 1 #item_copper-cable   
← #item_small-electric-pole

RX: #recipe_small-electric-pole ⏳1.0s, 📚50/200
→ 1 #item_wood + 2 #item_copper-cable  
← #item_small-electric-pole 
 (supply square is 5x5 tiles, wood used as insulator)
 
---

K2: #recipe_small-iron-electric-pole ⏳0.5s, 📚50/50
→ 2 #item_iron-stick + 2 #item_copper-cable
← 1 #item_small-iron-electric-pole 

RX: #recipe_small-iron-electric-pole ⏳1.0s, 📚50/200
→ 1 #item_small-electric-pole + 2 #item_iron-stick + 5 #item_copper-cable + 2 #item_kr-glass 
← 1 #item_small-iron-electric-pole 
 (supply square is 5x5 tiles, #item_kr-glass  as insulator)

---

K2: #recipe_medium-electric-pole ⏳0.5s, 📚50/50
→ 1 #item_small-iron-electric-pole + 2 #item_kr-iron-beam + 4 #item_iron-stick + 4 #item_copper-cable
← 1 #item_medium-electric-pole 

RX: #recipe_medium-electric-pole ⏳2s, 📚50/100
→ 1 #item_small-iron-electric-pole + 2 #item_kr-iron-beam + 3 #item_rx-bakelite + 5 #item_copper-cable 
← 1 #item_medium-electric-pole 
 (supply square is 5x5 tiles, #item_rx-bakelite  as insulator)

---

K2: #recipe_big-electric-pole ⏳0.5s, 📚50/25
→ 4 #item_kr-steel-beam + 8 #item_iron-stick  + 8 #item_copper-cable + 1 #item_concrete 
← 1 #item_big-electric-pole 

RX: #recipe_big-electric-pole ⏳4s, 📚20/20
→ 1 #item_medium-electric-pole (previous tier)
	+ 4 #item_kr-steel-beam  (structure)
	+ 6 #item_rx-bakelite (2 insulator per 1 phase)
	+ 30 #item_copper-cable (reaching distance 30 tiles)
	+ 4 #item_refined-concrete (item size 2x2 tiles)
← 1 #item_big-electric-pole 

---

K2: #recipe_substation ⏳0.5s, 📚50/50
→ 8 #item_kr-steel-beam + 16 #item_copper-cable + 5 #item_advanced-circuit  + 5 #item_concrete 
← 1 #item_substation 

RX: #recipe_substation ⏳8s, 📚20/20
→ 8 #item_kr-steel-beam (structure)
	+ 8 #item_advanced-circuit (power regulation / protection)
	+ 16 #item_rx-bakelite (2x insulator per circuit)
	+ 40 #item_copper-cable (supply area 20x20 tiles)
	+ 4 #item_refined-concrete (substation size 2x2 tiles ))
← 1 #item_substation 

-------

#mod_Lighter-Poles creates a `lighted_` variant of each pole that requires the item itself and 2 #item_small-lamp

K2: #recipe_lamp ⏳0.5s, 📚50/50
1 #item_kr-glass + 1 #item_iron-plate + 4 #item_copper-cable 
← 1 #item_small-lamp  

K2: #recipe_lamp ⏳0.5s, 📚50/400
 #tech_lamp is very early, no #item_rx-bakelite or #item_stone-tablet . I will try to make #item_stone-tablet unlocked by default.

`1 item_stone-tablet` (mounting base) + `1 item_kr-glass` (bulb/lens) + `1 item_iron-plate` (bracket) + `2 item_copper-cable` (wiring/filament) $\rightarrow$ `1 item_small-lamp`



----














