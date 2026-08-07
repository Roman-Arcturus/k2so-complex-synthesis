### Expanding `fluid_kr-mineral-water` Utility

In vanilla K2, mineral water sits unused in pumps until lithium and late-game chemical cards demand it. To make it a vital, competing fluid early on, it should represent a rich chemical soup of dissolved salts, sulfur, and trace metals.

Here are four high-value ways to weave `fluid_kr-mineral-water` directly into your early/mid-game production loops:

#### 1. Wood Pulp Acid Digestion (Forestry Synergy)

Instead of digesting `item_rx-wood-chips` with plain water, using `fluid_kr-mineral-water` acts as a natural mineral liquor.

- **Mechanism:** Dissolves wood fibers much faster, significantly boosting `fluid_rx-wood-pulp` yield per wood chip and giving a small bonus output of `item_kr-biomass`.
    
- **Logistics Choice:** Players choose between a basic water supply at their forestry block or bringing in mineral water train/drone lines to maximize biomass yield.
    

#### 2. Alternative Glass Flux & Chemical Polishing

Mineral water naturally carries dissolved silicates, borates, and calcium salts—ideal for vitrification.

- **Mechanism:** Introduce a fluid input option for Tier 2 or Tier 3 glass smelting where `fluid_kr-mineral-water` replaces or supplements dry flux/gases.
    
- **Logistics Choice:** Gives a direct trade-off between chemical gas infrastructure (HCl) and fluid mining logistics.
    

#### 3. Acidic Ore & Quartz Leaching

Before full sulfuric acid plants are built, mineral water can act as a weak natural acid solvent.

- **Mechanism:** Washing raw Sand or Quartz with mineral water instead of plain water yields higher-purity quartz dust, while producing acidic `kr-dirty-water` byproduct to feed back into your filtration/recycling blocks.
    

#### 4. Slag & Ash Mineral Recovery

- **Mechanism:** Flushing hot furnace waste (`item_rx-crushed-coal` or smelting slag) with mineral water in a chemical plant to leach out trace metals (copper/iron) and produce concentrated brine.
    

Making mineral water an optional "yield multiplier" across wood processing, smelting, and sand washing transforms it from a useless early liquid into an immediate priority for city-block expansion.

---

[[tech_kr-mineral-gathering]] is the direct prerequisite for [[tech_kr-advanced-chemistry]] which directly unlocks [[tech_kr-enriched-ores]]. But in the actual game-play mineral water is unused for quite long time. Because at this stage the smelting columns must be rebuild to work with enriched ores, and the enrichment columns require a lot of sulfuric-acid, so Player needs to build some early crude-oil/ petroleum-gas / plastic / sulfuric-gas production. It may take a lot of time and he will forget about mineral-water at all.

I agree that we should implement mineral-water usage early as higher tier recipes.
1. Wood Pulp Acid Digestion (Forestry Synergy).
2. Alternative Glass/Silicon Flux. We can create tier2 of smelting glass/silicon using mineral-water. Tier3 of glass/silicon must require mineral-water.
3. Acidic Ore & Quartz Leaching.
4. Slag & Ash Mineral Recovery: furnaces does not allow to have byproduct until industrial-furnace is unlocked.

----

### 1. Wood Pulp Acid Digestion (Immediate Early-Game Sink)

- **Execution:** Handled in a Chemical Plant or Filtration Plant (`item_rx-wood-chips` + `fluid_kr-mineral-water` $\rightarrow$ `fluid_rx-wood-pulp` + bonus `item_kr-biomass`).
    
- **Why it works:** Gives `tech_kr-mineral-gathering` an immediate, zero-delay purpose. The player hooks up a single mineral water well to their forestry block to supercharge pulp production and biomass output long before they touch ore enrichment or oil processing.
    

### 2. Tier 2 vs. Tier 3 Glass & Silicon Flux (Handling the No-Fluid Furnace Limit)

Because standard Tier 2 furnaces cannot take fluid inputs or output byproducts, the mineral water step must be split between wet chemical preparation (T2) and direct fluid injection (T3):

- **Tier 2 (Solid-Flux Bridge):**
    
    - **Step 1 (Chemical Plant):** `fluid_kr-mineral-water` + `kr-sand` (or crushed carbon) $\rightarrow$ **`item_rx-calcined-flux`** (Solid item).
        
    - **Step 2 (Standard Furnaces):** `kr-sand` + `item_rx-calcined-flux` $\rightarrow$ **`kr-glass`** (Higher yield per sand, no fluids in the furnace).
        
- **Tier 3 (Industrial Furnace - Direct Fluid Injection):**
    
    - **Industrial Furnace:** `kr-quartz` + `item_rx-coke` + `fluid_kr-mineral-water` + `fluid_kr-hydrogen-chloride` $\rightarrow$ **`kr-glass`** + `kr-dirty-water`.
        
    - **Progression:** Tier 3 _requires_ piping mineral water directly into the smelting block alongside HCl gas, making mineral water train/drone delivery mandatory for late-game glass/silicon throughput.
        

### 3. Acidic Quartz Leaching (Pre-Sulfuric Ore Treatment)

- **Execution:** Handled in a Filtration Plant (`kr-sand` + `fluid_kr-mineral-water` $\rightarrow$ high-purity `kr-quartz` + `kr-dirty-water`).
    
- **Why it works:** Acts as a stepping stone to full K2 ore enrichment. It teaches the player to pump mineral water for ore/silica treatment in chemical plants before they ever set up full sulfuric acid loops.
    

### 4. Slag & Ash Mineral Recovery (Deferred to Industrial Furnace)

Given the standard furnace limitation, this mechanic activates cleanly at the Industrial Furnace tier:

- **T1 / T2 Furnaces:** Fully dry, 0 byproducts, low yield.
    
- **T3 Industrial Furnaces:** Output solid **Slag / Mineral Ash** alongside metal/glass plates.
    
- **Slag Processing Block (Chemical Plant):** Solid Slag + `fluid_kr-mineral-water` $\rightarrow$ Trace Ore Slurry / `kr-dirty-water` + Recycled Minerals.
    
- **Logistics Value:** Gives mineral water a late-game recycling role. Instead of discarding furnace slag, routing it through a mineral water wash extracts additional copper, iron, or quartz solids, closing the waste loop in late-game city blocks.



