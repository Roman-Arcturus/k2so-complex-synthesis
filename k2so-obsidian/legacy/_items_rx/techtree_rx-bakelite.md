**Bakelite** is umbrella item for early plastics. Insulation/construction material, binding flux for high tier smelting. Completely independent of oil production.

#Tier1 of insulation will be #item_kr-glass , then we will switch to #item_rx-bakelite .

### tech tree

> **the very first techs unlock #facility_kr-crusher**

#recipe_rx-crush-wood in #facility_kr-crusher :⏳2s 
→ 6 #item_wood 
← 24 #item_rx-crushed-wood 

#recipe_rx-crush-coal in #facility_kr-crusher :⏳2s 
→ 6 #item_coal 
← 18 #item_rx-crushed-coal + 6 #item_kr-sand

> making steel unlocks #facility_chemical-plant and #facility_kr-electrolysis-plant and unlocks #recipe_kr-water-electrolysis ,  which allows splitting #item_kr-sand + #fluid_water into #fluid_kr-nitrogen+ #fluid_kr-chlorine.

#recipe_rx-filter-wood-pulp in #facility_chemical-plant :⏳?s 
→ ? #item_rx-crushed-wood +  ? #fluid_kr-chlorine + ?
← ? #fluid_rx-wood-pulp + ? #item_kr-biomass

#recipe_rx-synthesize-bakelite in #facility_kr-electrolysis-plant :⏳?s 
→ ? #fluid_rx-wood-pulp + ? #item_rx-crushed-coal + ? #fluid_steam 
← ? #item_rx-bakelite 

> from this moment forward #item_rx-bakelite should be used extensively

> by researching #tech_kr-advanced-chemistry Player unlocks more productive recipe for #item_rx-bakelite .

#recipe_rx-synthesize-bakelite in #facility_kr-electrolysis-plant :⏳?s 
→ ? #fluid_rx-wood-pulp + ? #item_rx-crushed-coal + ? #fluid_kr-biomethanol 
← ? #item_rx-bakelite + #fluid_kr-dirty-water 

---

When I played in Factorio 2.0 K2 one full #city-block of #facility_kr-greenhouse was enough to supply #item_wood up to #SpaceAge . The only constant use for #item_wood was #item_electronic-circuit and #item_kr-coke. I didn't even need to use #item_kr-fertilizer .

In Factorio 1.x K2 I needed two #city-block worth of wood production to supply #item_electronic-circuit , because they were consumed in much higher quantities.

Question, what is the better change for #item_plastic-bar recipe:
To replace #item_coal with #item_rx-crushed-coal or make a direct progression of plastics by using #item_rx-bakelite?

[[usecase_plastic-bar]]

------





