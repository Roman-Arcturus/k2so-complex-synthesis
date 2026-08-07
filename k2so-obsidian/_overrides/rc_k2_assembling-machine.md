*file: rc_k2_assembling-machine.lua*

Recipes for ingredients produced in #facility_assembling-machine using K2 items/fluids.
Their original recipes for reference and RX overwrites.

📚: Items in Stack / Rocket_capacity. K2 stacks are usually set to 200.
The baseline for #rocket-capacity is 1000 #iron-plate per rocket.
Composite Items weight more or have more volume, so less #rocket-capacity.

---
### Recipe list

	#recipe_kr-tree-seed

K2: ⏳2s, tf: 0.7, 📚200/100
→ 2 #item_wood 
← 1 #item_tree-seed 

RX: ⏳17.5s, 📚200/2000
→ 24 #item_rx-crushed-wood 
← 1 #item_tree-seed 

-- --- --- ---

	#recipe_kr-inserter-parts
	
K2: ⏳1s, 📚200/200
→ 2 #item_iron-gear-wheel + 2 #item_iron-stick
← 1 #item_kr-inserter-parts

RX: ⏳1.2s, 📚200/600
→ 2 #item_iron-gear-wheel + 2 #item_iron-stick + 1 #item_copper-cable
← 1 #item_kr-inserter-parts

-- --- --- ---

	#recipe_kr-iron-beam 
	
K2: ⏳2s, tf: 0.7, 📚200/200, 
→ 2 #item_iron-plate 
← 1 #item_kr-iron-beam

RX: ⏳5.6s, 📚200/600
→ 3 #item_iron-plate + 3 #item_iron-stick
← 2 #item_kr-iron-beam 
(Welding H beams/trusses)

-- --- --- ---

	#recipe_kr-automation-core

K2: ⏳5s, 📚200/400
→ 6 #item_copper-plate + 4 #item_iron-gear-wheel + 4 #item_iron-stick
← 2 #item_kr-automation-core

RX: ⏳2.8s, 📚200/400

 → 4 #item_copper-plate + 2 #item_kr-inserter-parts + 2 #item_copper-cable 
← 1 #item_kr-automation-core

-- --- --- ---

	#recipe_kr-steel-beam
	
K2: ⏳2s, 📚200/200
→ 2 #item_steel-plate
← 1 #item_kr-steel-beam

RX: ⏳5.6s, 📚200/400
→ 3 #item_steel-plate + 3 #item_iron-stick
← 2 #item_kr-steel-beam

-- --- --- ---

	#recipe_kr-steel-gear-wheel

K2: ⏳0.5s, 📚200/200
→ 1 #item_steel-plate 
← 1 #item_kr-steel-gear-wheel

RX: 📚200/600
→ 1 #item_steel-plate + 12 #fluid_water 
← 1 #item_kr-steel-gear-wheel
(I will try to add water as cutting lubricant/coolant. There are no other fluids.)

-- --- --- ---

	#recipe_kr-electronic-components
	
#item_kr-electronic-components is an umbrella item and needs to be reworked.

K2: ⏳4s, tf: 0.4, 📚200/400
→ 2 #item_kr-glass + 2 #item_kr-silicon + 4 #item_plastic-bar
← 2 #item_kr-electronic-components

RX: ⏳3.7s, 📚200/400
→ 2 #item_kr-glass + 2 #item_kr-silicon + 2 #item_rx-bakelite + 12 #fluid_sulfuric-acid
← 2 #item_kr-electronic-components.


	There are two other recipes already:

#recipe_kr-easy-electronic-components:⏳12s 
(produced in #facility_kr-advanced-assembling-machine, unlocked by #tech_kr-advanced-tech-card)
→ 12 #item_stone + 5 #item_plastic-bar + 20 #fluid_water
← 6 #item_kr-electronic-components

#recipe_kr-electronic-components-with-lithium:⏳10s 
(produced in #facility_kr-advanced-chemical-plant, unlocked on #planet_Gleba)
→ 3 #item_kr-glass + 3 #item_kr-silicon + 3 #item_plastic-bar + 3 #item_kr-lithium + 20 #fluid_kr-nitric-acid
← 10 #item_kr-electronic-components

Ideas:
`3 item_kr-glass` + `3 item_kr-silicon` + `2 item_kr-rare-metals` + `20 fluid_kr-nitric-acid` $\rightarrow$ `12 item_kr-electronic-components` + `10 fluid_rx-liquid-waste`.

-- --- --- ---






