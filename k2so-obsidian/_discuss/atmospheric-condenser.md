Now lets discuss the realism of extracting Oxygen, Hydrogen and Nitrogen from Athmosphere.

### Atmospheric Gas Composition Baseline

On an Earth-like planet, ambient dry air consists of:

- **Nitrogen ($\text{N}_2$):** $\approx 78.08\%$
- **Oxygen ($\text{O}_2$):** $\approx 20.95\%$
- **Argon ($\text{Ar}$):** $\approx 0.93\%$
- **Carbon Dioxide ($\text{CO}_2$):** $\approx 0.04\%$
- **Hydrogen ($\text{H}_2$):** $\approx 0.000055\%$ ($0.55\text{ ppm}$)

### Gameplay & Tech Tree Integration Mechanics

To keep progression chemically grounded and prevent facilities from bypassing each other:

1. **`kr-atmospheric-condenser` (Air Separation):**
    - Primary output: `kr-nitrogen` ($\approx 75\text{--}80\%$)
    - Secondary output: `oxygen` ($\approx 20\text{--}25\%$)
    - Requires: High power + `rx-filter-atmospheric`
    - Does **not** yield `hydrogen` directly.

---
## RX

1. There is a recipe in kr-electrolysis-plant that splits water into H2 and O2. (We will update that recipe as well - a bit later).
2. Currently, the only real use of atmosperic-condenser is generating Nitrogen.
3. We can remove the recipe of extracting H2 from air and replace it with Argon. But we will need to use Argon widely to justify it's introduction.

---

Argon ($\text{Ar}$) is an inert noble gas making up $\approx 0.93\%$ of ambient atmosphere. Its primary real-world value stems from its non-reactivity at high temperatures, making it an essential shielding and atmosphere agent for advanced metallurgy, semiconductors, and precision optics.

Here are four chemically grounded ways to integrate Argon across your mod's production chains to justify its introduction:

**1. High-Purity Silicon Ingot & Wafer Fabrication**

- **Real-World Chemistry:** Growing single-crystal silicon ingots via the Czochralski process requires an ultra-pure, inert Argon atmosphere at $\approx 1425^\circ\text{C}$ to prevent molten silicon from reacting with oxygen or nitrogen.
    
- **Recipe Integration:**
    
    - Require `kr-argon` in the high-tier recipe for growing silicon ingots or slicing `rx-silicon-wafer` inside advanced chemical plants or furnaces.
        
    - **Input:** `kr-quartz` + `rx-crushed-coal` + `kr-argon`
        
    - **Output:** `rx-silicon-wafer` + `rx-waste-liquid` (or off-gas)
        

**2. Purified Steel & Advanced Metallurgy (AOD Process)**

- **Real-World Chemistry:** The Argon-Oxygen Decarburization (AOD) process injects Argon and Oxygen into molten steel to reduce carbon content without oxidizing chromium or other alloying metals, essential for high-grade stainless and purified steel.
    
- **Recipe Integration:**
    
    - Use Argon in high-tier smelting recipes for `rx-purified-steel` or titanium/rare-metal refining.
        
    - **Input:** `steel-plate` (or `iron-plate`) + `oxygen` + `kr-argon`
        
    - **Output:** `rx-purified-steel` + `rx-waste-solid`
        

**3. High-Grade Tempered Glass & Optics**

- **Real-World Chemistry:** Argon is purged into high-temperature float-glass annealing chambers and sealed between double/triple-paned insulated glass units to eliminate oxidation during heating and increase thermal/corrosive insulation.
    
- **Recipe Integration:**
    
    - Upgrade `rx-high-grade-tempered-glass` manufacturing to require an Argon shielding atmosphere.
        
    - **Input:** `kr-glass` + `kr-argon` (+ heat/fuel)
        
    - **Output:** `rx-high-grade-tempered-glass`
        

**4. Excimer Lasers & Photolithography Optics**

- **Real-World Chemistry:** Argon-Fluoride ($\text{ArF}$) excimer lasers operate at $193\text{ nm}$ ultraviolet wavelengths, forming the backbone of deep-ultraviolet (DUV) photolithography used to etch microprocessors.
    
- **Recipe Integration:**
    
    - Use Argon as a fluid ingredient for assembling Laser Turrets, Beam Modules, or Tier-3/4 Processing Units.
        
    - **Input:** `processing-unit` + `kr-argon` + `rx-high-grade-tempered-glass`
        
    - **Output:** High-tier science packs or specialized laser components.
        

**Suggested Atmospheric Condenser Fractionation Yields:**

To reflect realistic air composition without overcomplicating fluid management, fractional air separation in the condenser can output:

- **Primary Output:** `kr-nitrogen` ($\approx 78\%$)
    
- **Secondary Output:** `oxygen` ($\approx 21\%$)
    
- **Trace Byproduct:** `kr-argon` ($\approx 1\%$) — tuned lower so players must process large volumes of air to accumulate sufficient Argon buffers for high-tech lines.

---
## RX

- We will introduce Argon as an important Gas for tier3 and up metallurgy, glass/silicon production, lasers, high tier chips.
- The cutting of huge lab grown silicon column into wafers is also a good idea. We will implement it later.
- Now we need to decide. Leave the Atmospheric Condenser working mode as it is - one gas output. Or Output all gases proportionally, and the Player wil decide - will he waste the unneeded gases, or try to accumulate/use them.


---

### Design Breakdown & Mechanics

#### 1. Byproduct Management & Gas Vents

In Krastorio 2, fluid deadlocks are natively manageable because the player has access to the **Gas Vent** (`kr-gas-vent`).

- If a factory only needs Argon, the player can vent excess Nitrogen and Oxygen into the atmosphere.
    
- Venting represents a low-efficiency waste cost (power + filter wear), incentivizing players to route byproduct Oxygen into **Purified Steel / Smelting** and byproduct Nitrogen into **Ammonia / Nitric Acid** chains instead of burning it off.
    

#### 2. Proposed Fractionation Ratios

To force a meaningful ratio puzzle where Argon is a valuable bottleneck:

- **Recipe:** `kr-air-separation`
- **Energy:** 10.0s
- **Inputs:**
    - `rx-filter-atmospheric` × 1
    
- **Outputs:**
    - `kr-nitrogen`: **400 units** (~78%)
    - `oxygen`: **100 units** (~20%)
    - `kr-argon`: **5 units** (~1%)
    - `rx-filter-atmospheric`: **1** (60% chance)
    - `rx-used-filter-atmospheric`: **1** (40% chance)

------

Hello again. This chat will be dedicated to discussing chemical / technological recipes that are good for Factorio Krastorio2 Spaced Out game-play, but also have some physical sense.

The current topic is extracting gases from the air in #facility_kr-atmospheric-condenser .
K2 have three recipes that generate pure #fluid_kr-hydrogen , #fluid_kr-oxygen , #fluid_kr-nitrogen .

I modified K2 to output all valid gases at once, but also require a constant supply of #item_rx-filter-gas.

Now this facility produces:
```lua
data:extend({
  {
    type = "recipe",
    categories = {"kr-atmosphere-condensation"},
    name = "rx-gas-condensation",
    ingredients = {
      { type = "item", name = "rx-filter-gas", amount = 1 }
    },
    results = {
      -- Output 1: Nitrogen (Maps to Fluid Box 1)
      { type = "fluid", name = "kr-nitrogen", amount = 240 },
      -- Output 2: Oxygen (Maps to Fluid Box 2)
      { type = "fluid", name = "oxygen", amount = 60 },
      -- Output 3: Argon (Maps to Fluid Box 3)
      { type = "fluid", name = "rx-argon", amount = 6 },
      -- Filter durability check
      { type = "item",  name = "rx-filter-gas", amount = 1, independent_probability = 0.50 },
      { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.40 },
      -- 10% that filter is destroyed
    },
    icon = rx_fx .. "/recipe/rx-gas-condensation.png",
    icon_size = 128,
    item_group = "intermediate-product",
    energy_required = 18.0,
    enabled = true,
  }
})
```
The proportions are somewhat realistic. I removed #fluid_kr-hydrogen as its extraction from air is unrealistic. I created a new gas #fluid_rx-argon that is going to be used in advanced metallurgy, silicon and glass production.

Please acknowledge the context.


I made a city-block in MapEditor to check how this recipe works in game. A cluster of #facility_kr-atmospheric-condenser slowly accumulate gases into #logistics_kr-big-storage-tank and #logistics_kr-huge-storage-tank. I also set up a mock-up of gas-filter building and washing the used ones.
The #fluid_kr-nitrogen is accumulating fast and the Player must decide what to do with it to keep production working. In regular game fluids are easily burned out if not needed, but now these gases are not for free. The filters are somewhat expensive. 

So I have to modify the game recipes to require more #fluid_kr-nitrogen (currently it used only for #fluid_kr-ammonia ), or modify "rx-gas-condensation" recipe to generate more #fluid_rx-argon .
Please give me your insights on how I could incorporate #fluid_kr-nitrogen more.

---



1. Nitric Acid Pipeline #fluid_kr-nitric-acid. 
Current K2 recipe: ⏳5.0s  
→ 50 #fluid_kr-ammonia + 1 #item_kr-rare-metals + 25 #fluid_kr-mineral-water 
← 50 #fluid_kr-nitric-acid
We will change this recipe later on.

2. Silicon Nitride Ceramics ($Si_3N_4$)
This is an interesting idea. To mix #item_kr-silicon with large amount of #fluid_kr-nitrogen .

3. Inert Purging & Annealing (Bulk Sink)
using #fluid_kr-nitrogen as inert gas to annealing - is interesting. It will work in #facility_industrial-furnace , because only this furnace accepts fluids as inputs/outputs while smelting.

4. Filter Regeneration Loop
Great option. I will have to use #fluid_kr-nitrogen for restoring used up versions of #item_rx-filter-gas , #item_rx-filter-liquid and #item_kr-pollution-filter

5. Cryogenics & Thermal Management
We will have to think of this possibility, without delving into cryogenics technology tree that is unlocked on another planet. 

6. Military & Explosives Overhaul
I already have created #item_rx-nitrocellulose but didn't delve deep into military tech yet.

----

### Recommendation Matrix

| **Use Case**             | **Consumption Volume**          | **Implementation Complexity**      | **Primary Target**                  |
| ------------------------ | ------------------------------- | ---------------------------------- | ----------------------------------- |
| **Filter Washing Purge** | Medium (Scales with automation) | Low (Single recipe modification)   | `#item_rx-filter-gas-used`          |
| **Nitric Acid Pickling** | High (Continuous)               | Medium (New chemical recipes)      | `#fluid_rx-waste-liquid` / Smelting |
| **Annealing Cover Gas**  | Very High (Continuous)          | Medium (Modifying existing smelts) | Tier 2–4 Smelting                   |
| **Cryogenic Cooling**    | Variable                        | High (New fluid + cryo mechanic)   | High-tier facilities                |










