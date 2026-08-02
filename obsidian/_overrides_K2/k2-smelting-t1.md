*file: /overrides/krastorio2/k2-smelting-t1.lua*

**from K2 basic smelts:** *general rule: 2 input items → 1 result item*
**to RX tier-1 smelts:** *general rule: 6 input items + flux→ 3 result items, preserve time_factor*

---

K2: 2 [[item_iron-ore]] → 1 [[item_iron-plate]] 
⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$

RX: 6 [[item_iron-ore]] + 1 [[item_stone]] → 3 [[item_iron-plate]]
⏳$11s \approx 1.1 * 10$

---

K2: 2 [[item_copper-ore]] → 1 [[item_copper-plate]] 
⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$

RX: 6 [[item_copper-ore]] + 1 [[item_stone]] → 3 [[item_copper-plate]]
⏳$11s \approx 1.1 * 10$

---

K2: 10 [[item_iron-plate]] + 2 [[item_kr-coke]]→ 5 [[item_steel-plate]]
⏳53s, time-factor: $53s / (10+2+5) \approx 3.1$

RX: 12 [[item_iron-plate]] + 3 [[item_kr-coke]] → 6 [[item_item_steel-plate]]
⏳$65.1s \approx 3.1 * 21$

---

K2: 2 [[item_kr-rare-metal-ore]] → 1 [[item_kr-rare-metals]] 
⏳3.2s, time-factor: $3.2s / (2+1) \approx 1.1$

RX: 12 [[item_kr-rare-metal-ore]] + 3 [[item_copper-ore]] → 6 [[item_kr-rare-metals]]
⏳$23.1s \approx 1.1 * 21$

---

K2: 2 [[item_stone]] → 1 [[item_stone-brick]] 
⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$

RX: 12 [[item_stone]] + 3 [[item_iron-ore]] → 6 [[item_stone-brick]]
⏳$23.1s \approx 1.1 * 21$

---

K2: 16 [[item_kr-sand]] → 8 [[item_kr-glass]]
⏳**16s**, time-factor: $16s / (16+8) \approx 0.7$

RX: 16 [[item_kr-sand]] + 2 [[item_copper-ore]] → 8 [[item_kr-glass]]
⏳$18.2s \approx 0.7 * 26$

---

K2: 18 [[item_kr-quartz]] → 9 [[item_kr-silicon]] 
⏳**16s**, time-factor: $16s / (18+9) \approx 0.6$

RX: 18 [[item_kr-quartz]] + 4 [[item_kr-coke]] → 9 [[item_kr-silicon]]
⏳$18.6s \approx 0.6 * 31$

---

K2: 6 [[item_coal]] + 6 [[item_wood]] → 6 [[item_kr-coke]]
⏳**16s**, time_factor: $16s / (6+6+6) \approx 0.9$

RX: 6 [[item_coal]] + 6 [[item_wood]] + 3 [[item_kr-sand]] → 6 [[item_kr-coke]]
⏳$18.9s \approx 0.9 * 21$

---
