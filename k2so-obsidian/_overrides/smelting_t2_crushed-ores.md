*file: /overrides/*
# 📜 Thematic description:

Smelting of Vanilla and #mod_Krastorio2  ingredients from crushed ores.

Because $6 \text{ raw ore} \rightarrow 12 \text{ crushed ore} + 6 \text{ sand}$ in the crusher, Tier-2 smelting should reward the player with **33% higher plate yields** and **50% faster smelting times** per raw ore unit:

- **Tier-1 (Raw):** $6 \text{ Raw Ore} + 1 \text{ Flux} \xrightarrow{11\text{s}} 3 \text{ Plates}$ ($0.50 \text{ yield/ore}$)
- **Tier-2 (Crushed):** $6 \text{ Crushed Ore} + 1 \text{ Flux} \xrightarrow{5.5\text{s}} 4 \text{ Plates}$ ($0.66 \text{ yield/ore}$)

----

## 🔱 Recipes, in order of techs unlocked

-----
#### ![[item_iron-plate.png|32]] #recipe_iron-plate-t2

RX: 8 #item_rx-crushed-iron-ore + 2 #item_kr-quartz + 1 #item_kr-coke → 6 #item_iron-plate
⏳$5.5s \approx 11 / 2$

---
#### ![[item_copper-plate.png|32]] #recipe_copper-plate-t2

RX: 8 #item_rx-crushed-copper-ore + 2 #item_kr-quartz + 1 #item_kr-coke → 6 #item_copper-plate
⏳$5.5s \approx 11 / 2$

---
#### ![[item_kr-rare-metals.png|37]] #recipe_kr-rare-metals

K2: ⏳3.2s, time-factor: $3.2s / (2+1) \approx 1.1$, 📚200/1000
2 #item_kr-rare-metal-ore → 1 #item_kr-rare-metals

RX: ⏳$23.1s \approx 1.1 * (12+3+6)$, 📚200/1000
12 #item_rx-crushed-rare-metal-ore + 3 #item_kr-quartz + 3 #item_kr-coke → 6 #item_kr-rare-metals
