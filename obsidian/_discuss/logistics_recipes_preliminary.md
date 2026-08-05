## logistics - belt / underground belt / splitter / loader

---

I used to have a #city-block dedicated to produce these logistics items. I would feed lower tiers to higher tiers through chests that would later transform into requester / provider chests.

( two belts that would provide iron-plate, motor, iron-beam
[ belt ] > [underground-belt] < [belt] > [loader] < [belt] > [splitter] < [belt]
( underground line that supplies iron-gears up and down)
[ red logistics ]
etc.

But this is for reference only.
Icons are for visual clarity, their colour does not represent the actual tier.

---

### *Yellow, 15 items/s*

![[kr-advanced-transport-belt.png|32]] #recipe_transport-belt 

K2: ⏳0.5s, 📚100/100
→ 1 #item_iron-plate + 1 #item_motor  
← 2 #item_transport-belt

RX: ⏳1s, 📚100/600
→ 2 #item_stone-tablet (substrate 2 plates per belt)
	+ 2 #item_iron-gear-wheel bearings
	+ 1 #item_motor single-cylinder engine as perpetuum-mobile
← 2 #item_transport-belt 

---

![[kr-advanced-underground-belt.png|32]] #recipe_underground-belt 

K2: ⏳1s, 📚50/50
→ 5 #item_transport-belt + 2 #item_kr-iron-beam 
← 2 #item_underground-belt 

RX: ⏳2s, 📚50/200
→ 4 #item_stone-tablet (substrate: 2 plates per belt)
	+ 6 #item_transport-belt (reach: 1 in + 4 underground + 1 out)
	+ 2 #item_kr-iron-beam (structure)
	+ 4 #item_iron-gear-wheel  (bearings, 2 per belt)
← 2 #item_underground-belt 

----

### *Red, 30 items/s*

![[kr-advanced-transport-belt.png|32]] #recipe_fast-transport-belt

K2:  ⏳0.5s, 📚100/100
→ 1 #item_transport-belt + 4 #item_iron-gear-wheel  
← 1 #item_fast-transport-belt

RX: ⏳2s, 📚100/500
→ 2 #item_transport-belt (previous tier)
	+ 2 #item_kr-iron-beam (structure)
	+ 4 #item_kr-bakelite (rollers)
	+ 2 #item_kr-steel-gear-wheel (bearings)
← 2 #item_fast-transport-belt

---

![[kr-advanced-underground-belt.png|32]] #recipe_fast-underground-belt

K2: ⏳2s, 📚50/50
→ 2 #item_underground-belt  + 10 #item_fast-transport-belt 
← 2 #item_fast-underground-belt 

RX:  ⏳2s, 📚50/150
→  2 #item_underground-belt  (previous tier)
	+ 11 #item_fast-transport-belt (reach: 1 in + 9 underground + 1 out)
	+ 2 #item_kr-steel-beam (structure)
	+ 4 #item_kr-steel-gear-wheel (bearings, 2 per belt)
← 2 #item_fast-underground-belt 

----

### *Blue, 45 items/s*

![[kr-advanced-transport-belt.png|32]]  #recipe_express-transport-belt 

K2: ⏳0.5s, 📚100/100
→ 1 #item_fast-transport-belt + 4 #item_kr-steel-gear-wheel + 20 #fluid_lubricant 
← 1 #item_express-transport-belt

RX: ⏳3s, 📚100/400
→ 1 #item_fast-transport-belt (previous tier)
	+ 2 #item_kr-steel-beam  (structure)
	+ 4 #item_rx-bakelite (rollers)
	+ 4 #item_rx-rare-metals-gears (non-ferrous bearings)
	+ 24 #fluid_lubricant 
← 1 #item_express-transport-belt 

---

![[kr-advanced-underground-belt.png|32]] #recipe_express-underground-belt  

K2: ⏳2s, 📚50/50
→ 2 #item_fast-underground-belt  + 20 #item_express-transport-belt +  40 #fluid_lubricant 
← 2 #item_express-underground-belt 

RX: ⏳6s, 📚50/100
→ 2 #item_fast-underground-belt (previous tier)
	+ 16 #item_express-transport-belt (reach: 1 in + 14 underground + 1 out)
	+ 4 #item_kr-steel-beam (structure, 2 per belt)
	+ 4 #item_rx-rare-metals-gears (non-ferrous bearings)
	+ 48 #fluid_lubricant (24 per belt)
← 2 #item_express-underground-belt 

----

## Ingredient prices for reference

3 #item_stone-tablet = 1 #item_stone-brick + 2 #item_iron-stick 
1 #item_motor = 1 #item_iron-gear-wheel + 1 #item_iron-plate 
1 #item_iron-beam = 2 #item_iron-plate 
1 #item_kr-steel-gear-wheel = 1 #item_steel-plate 
1 #item_kr-steel-beam = 2 #item_steel-plate 

a possible recipe:
1 #item_kr-rare-metals-gears =  1 #item_kr-steel-gear-wheel + 1 #item_kr-rare-metals 


---

## Next tiers 

`Green logistics` is produced on #planet_Vulcanus .
`Purple  logistics` requires #item_kr-imersite gears and `green logistics` but can be produced on #planet_Nauvis . However the cost of launching rockets makes transporting logistics between planets unwise. It makes sense only for the start of a new factory.

---




