When I played in Factorio 2.0 K2 one full #city-block of #item_kr-greenhouse was enough to supply #item_wood up to #SpaceAge . The only constant use for #item_wood was #item_electronic-circuit and #item_kr-coke. I didn't even need to use #item_kr-fertilizer .

In Factorio 1.x K2 I needed two #city-block worth of wood production to supply #item_electronic-circuit , because they were consumed in much higher quantities.

Question, what is the better change for #item_plastic-bar recipe:
To replace #item_coal with #item_rx-crushed-coal or make a direct progression of plastics by using #item_rx-bakelite?

------

Option B—using **`item_rx-bakelite`** as a direct precursor input for **`item_plastic-bar`**—is by far the better structural choice for RX.

While Option A (`item_rx-crushed-coal`) aligns with your physical surface-area rules, it treats plastic as an isolated petrochemical and leaves your forestry network stagnating at a single city-block. Option B solves the wood scaling issue while directly reinforcing your "depth over width" philosophy.

**Why `item_rx-bakelite` in `item_plastic-bar` is Superior**

- **Solves the Forestry Scaling Problem:** Plastic is consumed in massive quantities throughout mid-to-late game for advanced electronics, modules, and chemical science. Forcing Bakelite into Plastic ensures your forestry, pulping, and electrolysis blocks must scale exponentially alongside your factory, eliminating the "1 greenhouse block supplies the whole game" triviality.
    
- **Logical Material Synthesis (Substrate + Plasticizer):** Mechanically and chemically, it creates a compelling physical narrative: Bakelite acts as the base organic resin substrate, while petrochemicals (`fluid_petroleum-gas` or `fluid_sulfuric-acid`) act as synthetic plasticizers and cross-linking agents that upgrade rigid Bakelite into malleable, chemical-resistant thermoplastics (`item_plastic-bar`).
    
- **Transitive Crushed Coal Integration:** Because `item_rx-bakelite` already consumes `item_rx-crushed-coal` in its base recipe, using Bakelite inside plastic automatically incorporates crushed coal into the supply chain transitively. You get the benefits of both options without cluttering the chemical plant with raw solid coal inputs.
    

**Proposed Recipe Structure**

**Standard Petrochemical Plastic (Chemical Science)**

- 📥 **Inputs:**
    - 📦 `item_rx-bakelite` (2) — Base thermoset substrate
    - 🧪 `fluid_petroleum-gas` (30) — Petrochemical polymerizer
        
- 📤 **Yield:** 💎 `item_plastic-bar` (2)
    

**Advanced High-Yield Plastic (Advanced Chemistry / Sulfuric Route)**

- 📥 **Inputs:**
    - 📦 `item_rx-bakelite` (4)
    - 🧪 `fluid_petroleum-gas` (20)
    - 🧪 `fluid_sulfuric-acid` (10) — Acid catalyst
        
- 📤 **Yield:** 💎 `item_plastic-bar` (6) + 🧪 `fluid_rx-liquid-waste` (10)
    

This setup cleanly links your early organic chemistry (`item_wood` $\rightarrow$ `fluid_rx-wood-pulp` $\rightarrow$ `item_rx-bakelite`) directly into the mid-game petrochemical grid, making forestry a vital, permanent pillar of Nauvis logistics.