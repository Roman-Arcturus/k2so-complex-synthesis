**Bakelite** is umbrella item for early plastics. Insulation/construction material, binding flux for high tier smelting. Completely independent of oil production.

#Tier1 of insulation will be #item_kr-glass , then we will switch to #item_rx-bakelite .

### tech tree

> **the very first techs unlock #facility_kr-crusher**

#recipe_rx-crush-wood in #facility_kr-crusher :⏳2s 
→ 6 #item_wood 
← 24 #item_rx-wood-chips 

#recipe_rx-crush-coal in #facility_kr-crusher :⏳2s 
→ 6 #item_coal 
← 18 #item_rx-crushed-coal + 6 #item_kr-sand

> making steel unlocks #facility_chemical-plant and #facility_kr-electrolysis-plant and unlocks #recipe_kr-water-electrolysis ,  which allows splitting #item_kr-sand + #fluid_water into #fluid_kr-nitrogen+ #fluid_kr-chlorine.

#recipe_rx-filter-wood-pulp in #facility_chemical-plant :⏳?s 
→ ? #item_rx-wood-chips +  ? #fluid_kr-chlorine + ?
← ? #fluid_rx-wood-pulp + ? #item_kr-biomass

#recipe_rx-synthesize-bakelite in #facility_kr-electrolysis-plant :⏳?s 
→ ? #fluid_rx-wood-pulp + ? #item_rx-crushed-coal + ? #fluid_steam 
← ? #item_rx-bakelite 

> from this moment forward #item_rx-bakelite should be used extensively

> by researching #tech_advanced-chemistry Player unlocks more productive recipe for #item_rx-bakelite .

#recipe_rx-synthesize-bakelite in #facility_kr-electrolysis-plant :⏳?s 
→ ? #fluid_rx-wood-pulp + ? #item_rx-crushed-coal + ? #fluid_kr-biomethanol 
← ? #item_rx-bakelite + #fluid_kr-dirty-water 


