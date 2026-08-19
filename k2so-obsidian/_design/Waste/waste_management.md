## waste management
1. **waste entities**
	entities produces as byproducts of advanced recipes
	#item_rx-waste-solid consumed by: #recipe_rx-process-waste-solid
	#fluid_rx-waste-liquid consumed by: #recipe_rx-process-waste-liquid
	
2. **consumables to process waste**
	#item_rx-filter-gas produced by: #recipe_rx-filter-gas
	#item_rx-filter-liquid produce by: #recipe_rx-filter-liquid

	entities produces as byproducts of fluid processes
	#item_rx-filter-gas-used consumed by: #recipe_rx-restore-filter-gas
	#item_rx-filter-liquid-used consumed by: #recipe_rx-restore-filter-liquid

---

"4. Integration Strategy Across Vanilla/K2 Recipes" 
- Players are not forced to use complex recipes. They can use Vanilla/K2 recipes, as they will remain.
- Vanilla/K2 recipes will be slightly overridden to add minimal complexity of RX mod. 
- Highest Yields of Tier3+ RX recipes come from inbound complex fluxes/chemicals but produce complex waste as well.

"3. Waste Treatment Philosophies: Voiding vs. Resource Reclamation"
* We already have two recipe to reclaim liquid and solid waste. They produce a good amount of chemicals and crushed raw resources to encourage Players to use them. 

"2. Filter Life-Cycle & Attrition Design"
* Each working cycle of a facility consumes a filter and then:
	50% of returning it working order
	40% returning a used variant
	10% of filter destruction.
* Restoring the filter will require the same amount of consumables #fluid_rx-wood-pulp & #item_rx-crushed-coal but keep the structure elements ( #item_kr-steel-beam #item_rx-bakelite ) intact. 
* Restoring filters will be done in #facility_kr-filtration-plant, require fluids ( #fluid_water / `fluid-acids`), maybe high pressure inert #fluid_kr-nitrogen for purging the debris from filters.

"1. Macro Logistics & Cityblock Impact"
We will have to set the waste/filtering overhead to limit at 25% of overall production-column logistics. But we will see later on.

---

Factorio 2.1 uses `independent_probability` property that is set for each result.
```lua
results = {
  { type = "item",  name = "rx-filter-gas", amount = 1, independent_probability = 0.50 },
  { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.40 },
}
```
this code makes 10% chance of destroying filter.
I do not know how to no output good `rx-filter-gas` out, but I would prefer that.

If I would write this code:
```lua
results = {
  { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.40 },
}
```
the good filter will just be consumed without trace on each working cycle.


**Independent Probability Math**

With `independent_probability`, the engine rolls each item independently. Both results can succeed or fail on the exact same crafting cycle, which changes your effective yields:

- **Both Clean & Used drop ($20\%$):** $0.50 \times 0.40$
- **Clean Filter only ($30\%$):** $0.50 \times (1 - 0.40)$
- **Used Filter only ($20\%$):** $(1 - 0.50) \times 0.40$
- **Filter Destroyed ($30\%$):** $(1 - 0.50) \times (1 - 0.40)$
    

To bring the true destruction rate down closer to $10\%$ using independent rolls, set $P(\text{clean}) = 0.70$ and $P(\text{used}) = 0.60$. This yields $(1 - 0.70) \times (1 - 0.60) = 0.30 \times 0.40 = 0.12$ ($12\%$ destruction).