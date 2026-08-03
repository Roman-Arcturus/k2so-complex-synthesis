
#fluid_kr-dirty-water may be considered #Tier2 waste. For #Tier3 there will be more complex waste, or maybe two variants: #item_waste-solid for slag/ash/impurities and #fluid_waste-liquid for strong acid/alkaline mixes. 
#fluid_waste-liquid will have to be washed into some solid and liquid ingredients and #fluid_kr-dirty-water . The similar process will need to be used for #item_waste-solid .

----------

By structuring Tier 3 waste into **`item_waste-solid`** and **`fluid_waste-liquid`**, you create a **cascading degradation hierarchy** where complex high-tier waste breaks down step-by-step into Tier 2 waste, and finally into inert raw materials.

### The Cascading Waste Hierarchy

Instead of isolated recycling recipes, waste handling becomes a multi-stage funnel that moves down through your factory tiers:

```lua
[Tier 3 Smelting / Chemical Blocks]
   │
   ├─► Enriched Output (12x)
   ├─► Byproducts (Feeds other primary chains)
   │
   ├─► [item_waste-solid] ────┐
   │                          ▼
   └─► [fluid_waste-liquid] ──► 
		   [Stage 1: Waste Refining Hub]
			   │
			   ├─► Recovered Rare Solids (Rare metals, quartz, coke)
			   ├─► Recovered Heavy Liquids (Acids, chemical reagents)
			   │
			   └─► [fluid_kr-dirty-water] ──► 
					   [Stage 2: Tier 2 Filtration]
						 │
						 ├─► Basic Solids (Stone, Sand)
						 └─► Clean Water (Recycled)
```

### 1. Stage 1: Tier 3 Waste Treatment (Complex Recovery)

Because Tier 3 recipes consume heavy chemical fluxes, reagents, and raw ores, their output waste holds valuable residual material that justifies high-tech processing.

- **Solid Waste Processing (`item_waste-solid`):**
    
    - **Input:** `item_waste-solid` + Wash Liquid (Water or Mineral Water).
        
    - **Output:** Recovered solid fractions (e.g., `item_kr-rare-metals`, `item_rx-crushed-carbon`, raw ore solids) + **`fluid_waste-liquid`** (spent, highly contaminated wash liquor).
        
    - **Mechanical Purpose:** Keeps rare metals and carbon bound to metallurgical waste, requiring players to build a specialized slag-washing block to keep their rare metal supplies stocked.
        
- **Liquid Waste Processing (`fluid_waste-liquid`):**
    
    - **Input:** `fluid_waste-liquid` + Neutralizing Reagents (or steam/air condensation).
        
    - **Output:** Recovered chemical fractions (e.g., concentrated acids, sulfur, organic compounds) + precipitated mineral solids + **`fluid_kr-dirty-water`**.
        
    - **Mechanical Purpose:** Allows the factory to reclaim expensive chemical reagents before the remaining effluent drops down to standard dirty water.
        

### 2. Stage 2: Tier 2 Waste Treatment (Basic Filtration)

Once Tier 3 waste has been stripped of its complex chemicals and rare metals, it degrades into standard **`fluid_kr-dirty-water`**.

- **Input:** `fluid_kr-dirty-water` (from Tier 2 recipes, or as the tail end of Tier 3 liquid treatment).
    
- **Output:** Basic inert solids (`kr-sand`, `stone`) + purified `fluid_water`.
    
- **Mechanical Purpose:** Serves as the ultimate floor for liquid waste. If a player does not want to re-process Tier 3 waste all the way back into rare metals, they can pass it through neutralization steps until it becomes basic dirty water for simple stone filtration.
    

### 3. Logistical Impact on City-Block Layouts

Using universal waste items drastically simplifies transport infrastructure while maintaining high recipe complexity:

1. **Dedicated Waste Hubs:** Transport Drones only need to haul two universal waste items (`item_waste-solid` and `fluid_waste-liquid`) out of metallurgical blocks. You do not need dedicated drone depots for twenty different types of specialized slag or toxic sludge.
    
2. **Flexible Processing Centralization:** Players can build one massive, centralized "Waste Neutralization & Reclamation Block" in their factory, or set up small regional recycling hubs near high-emissions smelting lines.
    
3. **Loop Stalling Risk:** Because waste treatment returns primary reagents (acids, rare metals, mineral water) back into the main factory, a backup in the waste line will starve primary production lines of recycled inputs. This forces players to implement overflow storage or priority routing via drone depots.
