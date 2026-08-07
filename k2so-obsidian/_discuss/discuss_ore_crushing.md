## Tiered smelting.

Default AAI/K2 smelts productivity will be considered #Tier1:
**2 main input + catalyst/flux >> 1 main output.** 
$1 : 2 = 0.5$

#Tier2 smelts requires one extra-step - ore enrichment:
 **9 main raw input + catalyst/flux/fluids >> 6 enriched output + byproduct.**
Then smelt **1 enriched ores >> 1 final product**
$6 : 9 \approx 0.67$

#Tier3 productivity is a very steep increase of productivity:
  **6 main raw input + catalyst/flux/fluids >> 12 enriched output + byproduct + waste.**
  $12 : 6 = 2$

#Tier3  is available only for steel, glass and quartz but still I believe we need to tighten the progression. 
  
So the idea is to introduce another recipe for ore enrichment that require crushed ore.
**6 raw ore input >> 6 crushed ore + 3 sand** ($1 : 1 = 1$)
**6 crushed ores + catalyst/flux/fluids >> 6 enriched output + byproduct.** ($1 : 1 = 1$)
Then smelt **1 enriched ores >> 1 final product**
($1 : 1 = 1$)

Again, productivity doesn't come from nothing. It requires extra machinery, extra power, extra inputs.

---

The $0.5 \rightarrow 1.0 \rightarrow 2.0$ progression curve creates a mathematically clean doubling sequence that directly rewards players for taking on greater logistical complexity.

Instead of an awkward $0.67 \rightarrow 2.0$ jump, this three-stage progression gives every tier a distinct physical identity, footprint, and waste output.

**Tiered Smelting Progression Breakdown**

|**Smelting Tier**|**Recipe Mechanics**|**Yield Ratio**|**Infrastructure Needed**|**Primary Byproduct / Waste**|
|---|---|---|---|---|
|**Tier 1: Direct Smelt**|2 Raw Ore + Catalyst $\rightarrow$ 1 Ingot|**0.5x**|Basic Furnaces|None (Low yield penalty)|
|**Tier 2: Crushed Wash**|6 Raw Ore $\rightarrow$ 6 Crushed Ore + 3 Sand $\rightarrow$ 6 Enriched Ore $\rightarrow$ 6 Ingot|**1.0x**|Crusher + Chemical Plant/Washer + Furnaces|`item_kr-sand` + `fluid_kr-dirty-water`|
|**Tier 3: Acid Enrichment**|6 Raw Ore $\rightarrow$ 12 High-Yield Enriched Ore $\rightarrow$ 12 Ingot|**2.0x**|Crusher + Advanced Chemical Hub + High-Tech Furnaces|`item_waste-solid` + `fluid_rx-liquid-waste`|

**Why the Crushing Step Enhances Factory Design**

- **Clean $2\times$ Geometric Progression:** Shifting Tier 2 to a total 1.0 yield creates an intuitive doubling step at every tier ($0.5 \rightarrow 1.0 \rightarrow 2.0$). Players clearly see that adding crushing and washing doubles their iron/copper output per raw ore patch.
    
- **Reinforces Transport Density Rules:** Because crushed ore and sand are less dense than raw ore, players are incentivized to haul raw ore to their smelting city-blocks in bulk and crush on-site.
    
- **Feeds the Chemical Engine:** The **Sand** generated during ore crushing becomes a massive, constant feedstock:
    
    - Directly supplies glass and silicon production blocks.
        
    - Feeds `recipe_kr-water-electrolysis` to generate chlorine for wood pulping and Bakelite synthesis.
        
- **Emergent Bottlenecks (The Sand Deadlock):** If a city-block runs out of demand for sand, sand backs up inside the crushers, shutting down Tier 2 ore crushing and halting ingot production. This forces the player to build priority overflow routing, routing excess sand into concrete or landfill blocks to keep the factory running.
------

How do you think. Should we rewrite ore-enrichment recipes or leave it and add new ones with crushed ores?

-----

Overwriting the existing K2 recipes is the cleanest approach for an overhaul mod. Adding parallel recipes for the exact same outputs creates UI clutter in Factoriopedia and allows players to bypass your intended progression curve.

### Why Overwriting Beats Adding Duplicate Recipes

- **Enforces the $0.5 \rightarrow 1.0 \rightarrow 2.0$ Yield Progression:** Leaving old K2 recipes active keeps the original 0.67 yield route available alongside your new 1.0 yield crushed-ore route. Overwriting guarantees every tier has a single, non-redundant path.
    
- **Eliminates UI Bloat:** Having multiple recipes for "Enriched Iron Ore" in assembly selection screens confuses automation setups. Replacing K2's native recipes keeps the UI clean and definitive.
    
- **Guarantees Byproduct Flow:** Overwriting K2's Tier 2 enrichment forces the player to build crusher infrastructure and manage the mandatory `item_kr-sand` byproduct to achieve 1.0 yield.
    

### Overwritten Smelting Progression Structure

**Tier 1: Direct Smelt (Overwritten Furnace Recipe)**

- 📥 2 Raw Ore + 1 Flux/Catalyst $\rightarrow$ 📤 1 Ingot ($0.5\times$ yield).
    

**Tier 2: Mechanical Crushing & Washing (Replaces Native K2 Enrichment)**

- **Step 1 (Crusher):** 📥 6 Raw Ore $\rightarrow$ 📤 6 Crushed Ore + 3 `item_kr-sand` ($1.0\times$ solid ratio).
    
- **Step 2 (Washer / Chemical Plant):** 📥 6 Crushed Ore + Fluids/Catalysts $\rightarrow$ 📤 6 Enriched Ore + `fluid_kr-dirty-water`.
    
- **Step 3 (Furnace):** 📥 1 Enriched Ore $\rightarrow$ 📤 1 Ingot ($1.0\times$ net yield).
    

**Tier 3: Acid Extraction (Replaces Advanced K2 Recipes)**

- **Step 1 (Advanced Chemical Hub):** 📥 6 Raw Ore + Acid Reagents $\rightarrow$ 📤 12 High-Yield Enriched Ore + 🧪 `fluid_rx-liquid-waste` + Solid Waste.
    
- **Step 2 (Advanced Furnace):** 📥 1 High-Yield Enriched Ore $\rightarrow$ 📤 1 Ingot ($2.0\times$ net yield).
    

By overwriting rather than appending, RX acts as a true structural overhaul rather than an add-on mod, ensuring players must interact with your crushed-ore logistics and sand overflow loops to grow their factory.