
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

-------

```lua
-- Recipe 2: Thermal Solvent Stripping (Halogen/Chlorine & Rare Sludge Focus)
-- Uses thermal steam injection to drive off volatile solvents (Hydrogen Chloride),
-- leaving behind rare metal sludge and dirty water.
{
  type = "recipe",
  name = "rx-liquid-waste-refining",
  category = "chemistry",
  energy_required = 6,
  ingredients = {
    { type = "fluid", name = "fluid_rx-liquid-waste", amount = 80 },
    { type = "fluid", name = "steam", amount = 40 },
  },
  results = {
    { type = "fluid", name = "fluid_kr-dirty-water", amount = 60 },
    { type = "fluid", name = "kr-hydrogen-chloride", amount = 30 },
    { type = "item", name = "kr-rare-metals", amount = 4 },
    { type = "item", name = "item_waste-solid", amount = 3 },
  },
  icon = "__Krastorio2__/graphics/icons/fluids/hydrogen-chloride.png",
  icon_size = 64,
  subgroup = "raw-material",
  order = "w[waste]-b[waste-liquid]",
}
```

```lua
-- Recipe 2: Acidic Hydrometallurgical Leaching (Resource Recovery Sink)
-- Dissolves solid sludge in sulfuric acid to extract residual mineral trace elements 
-- when landfill/brick storage is full, recycling effluent back to Stage 2 filtration.
{
  type = "recipe",
  name = "rx-solid-waste-acid-leaching",
  category = "chemistry",
  energy_required = 4,
  ingredients = {
    { type = "item", name = "item_waste-solid", amount = 12 },
	{ type = "item", name = "kr-rare-metals", amount = 2 }, -- catalyst / not consumed    
    { type = "fluid", name = "sulfuric-acid", amount = 24 },	
  },
  results = {
    { type = "item", name = "item_kr-sand", amount = 6 },
    { type = "item", name = "kr-rare-metals", amount = 4 },
    { type = "fluid", name = "fluid_kr-dirty-water", amount = 48 },
  },
  icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
  icon_size = 64,
  subgroup = "raw-material",
  order = "w[waste]-d[waste-solid]",
}
```



    