*file: aai-items.lua*

Vanilla and AAI-Industry items recipes. These are the first items that everything else is based on.
These recipes use no K2 items so I decided to keep them in a separate *.md* file.

**`recipe-name`** is equal to the name of the output item.

(Internal Obsidian links are replaced with tags. There will be no another Factoriopedia.)

---

### Recipe list with possible RX overrides

```lua

AAI: 1 #item_stone-brick → 4 #item_stone-tablet :⏳0.5s
RX: 1 #item_stone-brick + 2 #item_iron-stick → 3 #item_stone-tablet

#item_stone-tablet is used only for #item_electronic-circuit and this needs to be fixed. We could use stone-tablet as substrate for combinators, for example.

-- --- --- ---

AAI: 1 #item_iron-plate → 2 #item_iron-stick:⏳0.5s 

-- --- --- ---

AAI: 1 #item_iron-plate → 1 #item_iron-gear-wheel :⏳0.5s 

-- --- --- ---

AAI: 1 #item_copper-plate → 2 #item_copper-cable :⏳0.5s 

-- --- --- ---

AAI: 1 #item_iron-plate + 1 #item_iron-gear-wheel 
→ 1 #item_motor :⏳0.6s (time_factor: 0.6s/3 = 0.2)

RX: 1 #item_iron-plate + 2 #item_iron-gear-wheel + 1 #item_iron-stick + 1 #item_copper-cable 
→ 1 #item_motor :⏳1.0s (0.2 * 5) 

(#item_motor is `Single-cylinder engine`)

-- --- --- ---

(At this moment, Player has #item_electronic-circuit and some minimal coke/steel/glass production.)

AAI: 1 #item_steel-plate + 2 #item_iron-gear-wheel + 2 #item_motor 
→ 1 item_engine-unit:⏳10s (time_factor: 10s/5 = 2)

RX: 1 #item_steel-plate + 4 #item_iron-gear-wheel + 4 #item_motor + 1 #item_electronic-circuit 
→ 1 #item_engine-unit:⏳20.0s (2 * 10)

(#item_engine-unit is `Multi-cylinder engine`)

-- --- --- ---

AAI: 1 #item_iron-plate + 1 #item_iron-gear-wheel + 6 #item_copper-cable
→ 1 #item_electric-motor :⏳0.8s (time_factor: 0.8s / 9 = 0.1)

RX: 1 #item_iron-plate + 2 #item_iron-gear-wheel + 8 #item_copper-cable + 1 item_iron-stick
→ 1 #item_electric-motor :⏳1.2s (0.1 * 12)

(#item_electric-motor is `Small electric motor`)

-- --- --- ---

(At this moment player has developed chemistry)
AAI: 2 #item_steel-plate + 4 #item_electronic-circuit + 2 #item_electric-motor + 40 #fluid_lubricant → 1 #item_electric-engine-unit :⏳10s (tf: 10s/13 = 0.8)

RX recipe will be written in K2 recipes override section. Here is only the possible recipe with its logic.
1 #item_steel-plate -- casing
+ 4 #item_electric-motor -- stacking 4 small electric motors on one shaft
+ 2 #item_kr-steel-gear-wheel -- gearbox
+ 1 #item_electronic-circuit -- control-box
+ 32 #fluid_lubricant -- I don't know why electric motor needs so much lubricant
→ 1 #item_electric-engine-unit :⏳9.8s (0.8 * 12.2)

(#item_electric-engine-unit is `Big electric motor`)

-- --- --- ---

AAI: 1 #item_stone-tablet + 3 item_copper-cable 
→ 1 #item_electronic-circuit :⏳0.5s (tf: 0.5s/5 = 0.1)

RX: This recipe with stone-tablet, allows to jump-start #item_electronic-circuit production before having wood. K2 recipe uses wood and copper-cable.
We will make a proper recipe in K2 section later on.


