# logistics - belt / underground belt / splitter / loader

*file: /overrides/logistics_belts-123.lua*
## 📜 Thematic description:

Recipes for logistics / belts. 
Default recipes of #mod_AAI-Industry / #mod_Krastorio2 are marked with `K2`.

---

## ![[kr-advanced-transport-belt.png|32]] #recipe_transport-belt 

### *yellow 15 items/s.* 

K2: ⏳0.5s, 📚100/100
→ 1 #item_iron-plate + 1 #item_motor  
← 2 #item_transport-belt

RX: ⏳1s, 📚100/600
→ 2 #item_stone-tablet (substrate 2 plates per tile)
	+ 2 #item_iron-gear-wheel bearings
	+ 2 #item_motor single-cylinder engine as perpetuum-mobile
← 2 #item_transport-belt 

---
### *red 30 items/s.* 

K2:  ⏳0.5s, 📚100/100
→ 1 #item_transport-belt + 4 #item_iron-gear-wheel  
← 1 #item_fast-transport-belt

RX: ⏳2s, 📚100/500
→ 2 #item_transport-belt (previous tier)
	+ 2 #item_kr-iron-beam (structure)
	+ 4 #item_rx-bakelite (rollers)
	+ 2 #item_kr-steel-gear-wheel (bearings)
← 2 #item_fast-transport-belt

---
### *blue 45 items/s.* 

K2: ⏳0.5s, 📚100/100
→ 1 #item_fast-transport-belt + 4 #item_kr-steel-gear-wheel + 20 #fluid_lubricant 
← 1 #item_express-transport-belt

RX: ⏳3s, 📚100/400
→ 2 #item_fast-transport-belt (previous tier)
	+ 2 #item_kr-steel-beam  (structure)
	+ 4 #item_rx-bakelite (rollers)
	+ 4 #item_rx-rare-metals-bearing (non-ferrous bearings)
	+ 36 #fluid_lubricant 
← 2 #item_express-transport-belt 

-----

##  ![[kr-advanced-underground-belt.png|32]] #recipe_underground-belt 

### *yellow, 15 items/s*

K2: ⏳1s, 📚50/50
→ 5 #item_transport-belt + 2 #item_kr-iron-beam 
← 2 #item_underground-belt 

RX: ⏳2s, 📚50/300
→ 4 #item_stone-tablet (substrate: 2 plates per underground belt)
	+ 6 #item_transport-belt (reach: 1 in + 4 underground + 1 out)
	+ 2 #item_kr-iron-beam (structure)
	+ 4 #item_iron-gear-wheel  (bearings, 2 per belt)
← 2 #item_underground-belt 

---
### *red 30 items/s.* 

K2: ⏳2s, 📚50/50
→ 2 #item_underground-belt  + 10 #item_fast-transport-belt 
← 2 #item_fast-underground-belt 

RX:  ⏳4s, 📚50/200
→  2 #item_underground-belt  (previous tier)
	+ 11 #item_fast-transport-belt (reach: 1 in + 9 underground + 1 out)
	+ 2 #item_kr-steel-beam (structure)
	+ 4 #item_kr-steel-gear-wheel (bearings, 2 per belt)
← 2 #item_fast-underground-belt 

----

### *blue, 45 items/s*

K2: ⏳2s, 📚50/50
→ 2 #item_fast-underground-belt  + 20 #item_express-transport-belt +  40 #fluid_lubricant 
← 2 #item_express-underground-belt 

RX: ⏳6s, 📚50/100
→ 2 #item_fast-underground-belt (previous tier)
	+ 16 #item_express-transport-belt (reach: 1 in + 14 underground + 1 out)
	+ 4 #item_kr-steel-beam (structure, 2 per belt)
	+ 4 #item_rx-rare-metals-bearing (non-ferrous bearings)
	+ 48 #fluid_lubricant (24 per belt)
← 2 #item_express-underground-belt 

----

##  ![[kr-advanced-splitter.png|32]] #recipe_splitter

### *yellow, 15 items/s*

K2: ⏳1s, 📚50/50
→ 4 #item_transport-belt + 4 #item_motor + 5 #item_iron-gear-wheel + 1 #item_kr-automation-core  
← 1 #item_splitter 

RX: ⏳2s, 📚50/300
→ 4 #item_transport-belt (2 inputs and 2 outputs: 4 ports)
	+ 4 #item_motor (perpetuum-mobile)
	+ 8 #item_iron-gear-wheel (2 per port)
	+ 4 #item_stone-tablet (2 per tile)
	+ 2 #item_kr-automation-core  (basic automation, supplied from a chest)
← 1 #item_splitter 

---
### *red 30 items/s.* 

K2: ⏳2s, 📚50/50
→ 1 #item_splitter + 4 #item_iron-gear-wheel + 2 #item_electronic-circuit  
← 1 #item_fast-splitter

RX: ⏳4s, 📚50/200
→ 1 #item_splitter (previous tier)
	+ 8 #item_kr-steel-gear-wheel (bearings, 2 per port)
	+ 4  #item_rx-bakelite (rollers, 1 per port)
	+ 2 #item_electronic-circuit (automation, supplied from a chest)
← 1 #item_fast-splitter

---
### *blue, 45 items/s*

K2: ⏳2s, 📚50/50
→ 1 #item_fast-splitter + 4 #item_kr-steel-gear-wheel + 4 #item_kr-electronic-components + 80 #fluid_lubricant 
← 1 #item_express-splitter

RX: ⏳6s, 📚50/100
→ 1 #item_fast-splitter (previous tier)
	+ 8 #item_rx-rare-metals-bearing (bearings, 2 per port)
	+ 8  #item_rx-bakelite (rollers, 2 per port)
	+ 2 #item_advanced-circuit (advanced automation) 
	+ 64 #fluid_lubricant 
← 1 #item_express-splitter 

---

##  ![[kr-advanced-loader.png|32]] #recipe_loader

### *yellow, 15 items/s*

K2: ⏳2s, 📚50/50
→ 1 #item_transport-belt + 2 #item_kr-iron-beam + 10 #item_iron-gear-wheel 
← 1 #item_kr-loader 

RX: ⏳2s, 📚50/300
 → 2 #item_stone-tablet (substrate)
	 + 1 #item_transport-belt (input belt)
	 + 2 #item_electric-motor (loaders require power)
	 + 8 #item_iron-gear-wheel 
← 1 #item_kr-loader 

---
### *red 30 items/s.* 

K2: ⏳2s, 📚50/50
→ 2 #item_kr-loader + 1 #item_fast-transport-belt +  10 #item_iron-gear-wheel 
← 1 #item_kr-fast-loader 

RX: ⏳4s, 📚50/200
→ 1 #item_kr-loader (previous tier)
	+ 1 #item_fast-transport-belt (input belt)
	+ 8 #item_rx-bakelite (rollers)
	+ 8 #item_kr-steel-gear-wheel 
← 1 #item_kr-fast-loader 

---
### *blue, 45 items/s*

K2: ⏳2s, 📚50/50
→ 2 #item_kr-fast-loader + 1 #item_express-transport-belt +  10 #item_kr-steel-gear-wheel + 40 #fluid_lubricant  
← 1 #item_kr-express-loader 

RX: ⏳6s, 📚50/100
→ 1 #item_kr-fast-loader (previous tier)
	+ 1 #item_express-transport-belt (input belt)
	+ 1 #item_electric-engine-unit (1 Big electric motor)
	+ 8 #item_rx-rare-metals-bearing 
	+ 48 #fluid_lubricant 
← 1 #item_kr-express-loader 


-----

## Ingredient prices for reference / outdated

3 #item_stone-tablet = 1 #item_stone-brick + 2 #item_iron-stick 
1 #item_motor = 1 #item_iron-gear-wheel + 1 #item_iron-plate 
1 #item_iron-beam = 2 #item_iron-plate 
1 #item_kr-steel-gear-wheel = 1 #item_steel-plate 
1 #item_kr-steel-beam = 2 #item_steel-plate 
1 #item_rx-rare-metals-bearing =  1 #item_kr-steel-gear-wheel + 1 #item_kr-rare-metals 


---

## Next tiers 

`Green logistics` is produced on #planet_Vulcanus .
`Purple  logistics` requires #item_kr-imersite gears and `Green Logistics` but can be produced on #planet_Nauvis . However the cost of launching rockets makes transporting logistics between planets unwise. It makes sense only for the start of a new factory.

---

I used to have a #city-block dedicated to produce these logistics items. I would feed lower tiers to higher tiers through chests that would later transform into requester / provider chests.

(top two belts that would provide iron-plate, motor, iron-beam
[ belt ] > [underground-belt] < [belt] > [loader] < [belt] > [splitter] < [belt]
( underground line that supplies iron-gears to upper and lower assemblers)
[ red logistics ]
( underground line that supplies iron-gears to upper assemblers)
[ blue logistics ]
( underground line that supplies steel-gears to upper assemblers)

But this is for reference only.
Icons are for visual clarity, their colour does not represent the actual tier.

---




