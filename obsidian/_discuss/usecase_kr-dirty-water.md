
Yes. In Factorio's Lua prototype system, `kr-dirty-water` is just a fluid, meaning you can create as many unique recipes using it as an input as you want, assigned to any machine capable of handling fluids (Filtration Plants, Chemical Plants, Centrifuges, or custom facilities).

Creating alternative recipes for dirty water opens up strong city-block design choices. Instead of every block dumping dirty water into standard stone filtration, players can choose how to handle it based on local block needs:

### 1. Acid & Solvents Scrubbing (T3 Glass Synergies)

Since Tier 3 glass smelting generates dirty water via Hydrogen Chloride ($\text{HCl}$) gas processing, that dirty water isn't just mud—it's acidic silica slurry.

- **Recipe Idea (Acid Recovery):** Process dirty water in a Chemical Plant with additional reagents to recover low-concentration **Hydrochloric Acid** or chlorine gas, recycling it directly back into the glass furnace block.
    
- **Logistics Trade-off:** Saves chemical production capacity elsewhere, but requires balancing a closed fluid loop so the system doesn't back up and freeze glass output.
    

### 2. Quartz & Fine Silica Sedimentation

Standard K2 filtration turns dirty water into raw stone and trace vanilla ores.

- **Recipe Idea (Silica Settling):** Run dirty water through a slow settling/clarifying process (or centrifuge) to directly precipitate **Fine Sand** or raw **Quartz Dust**, skipping stone crushing entirely.
    
- **Logistics Trade-off:** Gives players a direct route back to glass/silicon raw materials, but produces zero metal trace ores.
    

### 3. Hot Slag & Coke Quenching

- **Recipe Idea (Quenching):** Consume dirty water alongside hot coke or furnace waste solids (`item_rx-crushed-coal` or slag) in an Industrial Furnace or specialized assembler to rapidly cool materials.
    
- **Output:** Yields high-pressure **Steam** (for localized power generation or steam-driven chemical steps) and dry **Slag/Ash**, boiling off the water entirely.
    
- **Logistics Trade-off:** Destroys the water completely without requiring filtration logistics, but generates heavy local pollution and excess steam that must be vented or converted to power.
    

### 4. Organic Digestion (Wood & Biomass Integration)

- **Recipe Idea (Pulp Digestion):** Combine `kr-dirty-water` with `item_rx-wood-chips` in a bioreactor/fermenter block.
    
- **Output:** Yields `fluid_rx-wood-pulp` and bio-gases ($\text{CH}_4$ / $\text{CO}_2$), leaving concentrated organic sludge behind.
    
- **Logistics Trade-off:** Connects your forestry/wood block directly to your chemical tree, turning dirty water from an unwanted liability into an accelerating catalyst for resin/bakelite production.

----

## kr-dirty-water possible uses:

1. 
Making kr-dirty-water an input of an important recipe makes an interesting production and logistic puzzle. First I need to organize a production that generate kr-dirty-water, and only then I can have something that depends on it. And because it's a byproduct, I can not directly control it's volume. 
It's like Helium gas in real-life. Only two countries in the whole world produces it as a byproduct of steel production and suddenly without this gas there is no lithography.

2. 
Extracting kr-quartz from kr-dirty-water is an interesting path. Primary source of kr-dirty-water is ores enrichment. And as we added kr-quartz to all smelts, its a much better and shorter path to reuse this water directly. Regular recipes produce some stone and trace metal ores, that can never support any production, but will stall the filtration if not disposed.

3. 
Producing kr-chlorine out of kr-dirty-water is also useful. At this point of the game kr-chlorine is necessary to mine kr-rare-metals. And kr-hydrogen-chloride is needed to enrich kr-rare-metals.


