*file: /overrides/krastorio2/smelting-tier1.lua*
# 📜 Thematic description:

Smelting of Vanilla and #mod_Krastorio2  ingredients mostly using raw ores.
#mod_RX overrides preserve the proportions of volume, productivity and required time. Only add the simplest flux- #item_stone. Larger batches for a single cycle allows slow inserters to keep up.

**from K2 basic smelts:** *general rule: 2 input items → 1 result item* **to:**
**Tier-1 (Raw):** $6 \text{ Raw Ore} + 1 \text{ Flux} \xrightarrow{11\text{s}} 3 \text{ Plates}$ ($0.50 \text{ yield/ore}$)

Player will be encouraged to use crushed-ores instead of raw ores, as soon as he unlocks #facility-steel-furnace
[[smelting_t2_crushed-ores]].

Smelting of #item_kr-rare-metals from #item_kr-rare-metal-ore is not available in #mod_RX .

----

## 🔱 Recipes, in order of techs unlocked

#### ![[item_stone-brick.png|32]] #recipe_stone-brick
K2: ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$, 📚200/600.
2 #item_stone → 1 #item_stone-brick

RX: 6 #item_stone + 1 #item_iron-ore → 3 #item_stone-brick
⏳$11s \approx 1.1 * 10$, 📚200/800

-----
#### ![[item_iron-plate.png|32]] #recipe_iron-plate
K2: ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$, 📚200/1000.
2 #item_iron-ore → 1 #item_iron-plate

RX: 6 #item_iron-ore + 1 #item_stone → 3 #item_iron-plate
⏳$11s \approx 1.1 * (6+1+3)$, 📚200/1000.

---
#### ![[item_copper-plate.png|32]] #recipe_copper-plate
K2: ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$, 📚200/1000.
2 #item_copper-ore → 1 #item_copper-plate

RX: 6 #item_copper-ore + 1 #item_stone → 3 #item_copper-plate
⏳$11s \approx 1.1 * 10$, 📚200/1000.

---
#### ![[item_kr-glass.png|32]] #recipe_kr-glass

K2: ⏳**16s**, time-factor: $16s / (16+8) \approx 0.7$, 📚200/1000.
16 #item_kr-sand → 8 #item_kr-glass

RX: ⏳$17.5s \approx 0.7 * (16+1+8)$, 📚200/1000.
16 #item_kr-sand + 1 #item_copper-plate → 8 #item_kr-glass

---
#### ![[item_kr-coke.png|32]] #recipe_kr-coke

K2: ⏳**16s**, time_factor: $16s / (6+6+6) \approx 0.9$, 📚200/1000.
6 #item_coal + 6 #item_wood → 6 #item_kr-coke

RX: ⏳$16.0s \approx 0.9 * (12 + 6 + 3 + 9)$, 📚200/1000.
9 #item_rx-crushed-coal + 6 #item_rx-crushed-wood + 3 #item_kr-sand → 9 #item_kr-coke 

------
#### ![[item_steel-plate.png|32]] #recipe_steel-plate

K2: ⏳53s, time-factor: $53s / (10+2+5) \approx 3.1$, 📚200/400.
10 #item_iron-plate + 2 #item_kr-coke → 5 #item_steel-plate

RX: ⏳$65.1s \approx 3.1 * (12+3+6)$, 📚200/600.
12 #item_iron-plate + 3 #item_kr-coke → 6 #item_steel-plate


-----
#### ![[item_kr-silicon.png|32]] #recipe_kr-silicon

K2: ⏳16s, time-factor: $16s / (18+9) \approx 0.6$, 📚200/1000
18 #item_kr-quartz → 9 #item_kr-silicon

RX: ⏳$18.6s \approx 0.6 * (18+4+9)$, 📚200/1000
18 #item_kr-quartz+ 4 #item_kr-coke → 9 #item_kr-silicon

----

