*file: aai_assembling-machine.lua*

Recipes produced in #facility_assembling-machine using Vanilla / #mod_AAI-Industry items. 
Their original recipes for reference and RX overwrites.

📚: Items in Stack / Rocket_capacity. K2 stacks are usually set to 200.
The baseline for #rocket-capacity is 1000 #iron-plate per rocket.
Composite Items weight more or have more volume, so less #rocket-capacity.

---

### Recipe list with possible RX overrides

#### ![[item_stone-tablet.png|32]] #recipe_stone-tablet #tech_burner-mechanics
<b>AAI:</b>⏳0.5s, 📚100/4000
→ 1 #item_stone-brick 
← 4 #item_stone-tablet

<b>RX:</b> ⏳0.5s, 📚200/2000
→ 1 #item_stone-brick + 2 #item_iron-stick 
← 3 #item_stone-tablet

---

#### ![[item_iron-stick.png|32]] #recipe_iron-stick #tech_burner-mechanics
<b>AAI:</b>⏳0.5s, 📚200/2000
→ 1 #item_iron-plate 
← 2 #item_iron-stick

<b>RX:</b> *unchanged*

---

#### ![[item_iron-gear-wheel.png|32]] #recipe_iron-gear-wheel *enabled*
<b>AAI:</b> ⏳0.5s, 📚200/2000
→ 1 #item_iron-plate 
← 1 #item_iron-gear-wheel

<b>RX:</b> *unchanged*

---

#### ![[item_copper-cable.png|32]] #recipe_copper-cable *enabled*
<b>AAI:</b>  ⏳0.5s, 📚200/4000
→ 1 #item_copper-plate 
← 2 #item_copper-cable 

<b>RX:</b> ⏳0.5s, 📚200/2000

---
#### ![[item_electronic-circuit.png|32]] #recipe_electronic-circuit #tech_electronics
<b>AAI:</b>⏳0.5s (tf: $0.5s/5 \approx 0.1$), 📚200/2000
→ 1 #item_stone-tablet + 3 #item_copper-cable 
← 1 #item_electronic-circuit 

<b>RX:</b> *unchanged*. The recipe with stone-tablet allows to jump-start #item_electronic-circuit production before having wood production. K2 recipe uses wood and copper-cable.

---

#### ![[item_engine.png|32]]  #recipe_motor #tech_burner-mechanics
( #item_motor is `Single-cylinder engine`)

<b>AAI:</b> :⏳0.6s (time_factor: $0.6s/3 \approx  0.2$), 📚50/800
→ 1 #item_iron-plate + 1 #item_iron-gear-wheel 
← 1 #item_motor 

RX: ⏳1.0s, 📚100/800 
→ 1 #item_iron-plate + 2 #item_iron-gear-wheel + 2 #item_iron-stick 
← 1 #item_electric-motor 

---

#### ![[item_electric-motor.png|32]] #recipe_electic-motor #tech_electricity
( #item_electric-motor is `Small electric motor`)

<b>AAI:</b>⏳0.8s (time_factor: $0.8s/9 \approx  0.1$), 📚50/800
→ 1 #item_iron-plate + 1 #item_iron-gear-wheel + 6 #item_copper-cable
← 1 #item_electric-motor 

<b>RX:</b> ⏳$1.2s \approx 0.1 * 12$, 📚100/800
→ 1 #item_iron-plate + 2 #item_iron-gear-wheel + 8 #item_copper-cable + 1 #item_iron-stick
← 1 #item_electric-motor 

---

#### ![[item_engine-unit.png|32]] #recipe_engine-unit #tech_engine
( #item_engine-unit is `Multi-cylinder engine`)

<b>AAI:</b>⏳10s (time_factor: $10s/5 \approx 2$), 📚50/400
→ 1 #item_steel-plate + 2 #item_iron-gear-wheel + 2 #item_motor 
← 1 #item_engine-unit

<b>RX:</b> ⏳$20.0s  \approx 2*10$, 📚50/400
→ 1 #item_steel-plate + 4 #item_steel-gear-wheel + 4 #item_motor + 1 #item_electronic-circuit 
← 1 #item_engine-unit

---

#### ![[item_electric-engine-unit.png|32]] #recipe_electric-engine-unit 
( #item_electric-engine-unit is `Big electric motor`)

<b>AAI:</b>⏳10s (tf: $10s/13 \approx 0.8$), 📚50/400
→ 2 #item_steel-plate + 4 #item_electronic-circuit + 2 #item_electric-motor + 40 #fluid_lubricant 
← 1 #item_electric-engine-unit 

**RX:** ⏳$9.8s \approx 0.8 * 12.2$, 📚50/400
1 #item_steel-plate -- casing
+ 4 #item_electric-motor -- stacking 4 small electric motors on one shaft
+ 4 #item_kr-steel-gear-wheel -- gearbox
+ 1 #item_advanced-circuit -- control-box
+ 32 #fluid_lubricant 
→ 1 #item_electric-engine-unit

---

