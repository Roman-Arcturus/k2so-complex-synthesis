# Overall smelting strategy on #planet_Nauvis 

Smelting on #planet_Nauvis for clarity will be considered to be in Tiers.

---
### #Tier1  
Smelting of raw ores : #item_stone #item_iron-ore #item_copper-ore .
To smelt into: 
![[item_stone-brick.png|32]] #item_stone-brick ![[item_iron-plate.png|32]] #item_iron-plate  ![[item_copper-plate.png|32]] #item_copper-plate .
These items
![[item_kr-glass.png|32]] #item_kr-glass  ![[item_kr-coke.png|32]] #item_kr-coke ![[item_steel-plate.png|32]] #item_steel-plate ![[item_kr-silicon.png|32]] #item_kr-silicon 
will also be considered to be at #Tier1 .

**Smelting:** $3/6 = 0.5$
→ 6 `Raw Ore` + 1 #item_stone 
← 3 `Ingots`

*Overall productivity*: $0.5\%$
(RX recipes preserve AAI/K2 productivity and timing, but also adds stone as flux.)

---

### #Tier2 
Using crushed ores: 
![[item_rx-crushed-iron-ore.png|32]] #item_rx-crushed-iron-ore  ![[item_rx-crushed-copper-ore.png|32]] #item_rx-crushed-copper-ore ![[item_rx-crushed-rare-metal-ore.png|32]] #item_rx-crushed-rare-metal-ore 
To smelt into:
 ![[item_iron-plate.png|32]] #item_iron-plate  ![[item_copper-plate.png|32]] #item_copper-plate ![[item_kr-rare-metals.png|32]] #item_kr-rare-metals 

**Crusher:** $8/4 = 2.0$
→ 4 `Raw Ore`
← 8 `Crushed Ore` + 4 #item_kr-sand 

**Smelting:** $3/8 = 0.375$
→ 8 `Crushed Ore` + 2 #item_kr-sand + 1 #item_kr-coke 
← 3 `Ingots`

*Overall productivity*: $2.0*0.375=0.75\%$
(New RX recipes with higher productivity but requires coke and sand as flux.)

---

### #Tier3 

Using crushed ores: 
![[item_rx-crushed-iron-ore.png|32]] #item_rx-crushed-iron-ore  ![[item_rx-crushed-copper-ore.png|32]] #item_rx-crushed-copper-ore ![[item_rx-crushed-rare-metal-ore.png|32]] #item_rx-crushed-rare-metal-ore 
To wash them into:
![[item_kr-enriched-iron-ore.png|32]] #item_kr-enriched-iron-ore ![[item_kr-enriched-copper-ore.png|32]] #item_kr-enriched-copper-ore ![[item_kr-enriched-rare-metal-ore.png|32]] #item_kr-enriched-rare-metal-ore
And then smelt them into ingots with 150% productivity, because of the multistage process.

**Crushing:** $8/4 = 2.0$
→ 4 `Raw Ore`
← 8 `Crushed Ore` + 4 #item_kr-sand 

**Washing:** $6/8=0.75$
→ 8 `Crushed Ore` + 12 #fluid_sulfuric-acid + 64 #fluid_water 
← 6 `Enriched Ore` + 48 #fluid_kr-dirty-water

**Smelting:** $6/6 = 1.0$
→ 6 `Enriched Ore` + 2 #item_kr-quartz + 1 #item_kr-coke 
← 6 `Ingots`

*Overall productivity*: $2.0*0.75*1.0=1.5$
(RX recipes with higher productivity then K2 enrichment process but requires crushing before washing and then using coke and quarts as flux for all metals. #mod_Krastorio2 used #item_kr-coke only for `Steel` smelting.)

-------

Lastly we will have #Tier4 of smelting on #planet_Nauvis for:
![[item_kr-glass.png|32]] #item_kr-glass  ![[item_steel-plate.png|32]] #item_steel-plate ![[item_kr-silicon.png|32]] #item_kr-silicon 
To fulfil the spike of demand for all kind of `electronics` and to build first `space-platform` with `x3 tech cost`.

The player will then reach the #planet_Vulcanus , where the production of copper, iron, steel, glass, and silicon will become an infinite resource.

