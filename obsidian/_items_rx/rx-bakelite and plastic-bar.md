Decoupling **`rx-bakelite`** from `plastic-bar` and `sulfuric-acid` is the right move. Historically and mechanically, Bakelite is a thermosetting wood/coal-derived resin—making it the ideal bridge material for early electrical insulation and structural casings before full petrochemical oil refining is online.

**1. Recipe Redesign: Early Organic Bakelite**

To make Bakelite available at early Logistic Science for power poles and early machinery, it should rely strictly on forestry, solid carbon, and early fluids (`fluid_water`, `fluid_steam`, or early chlorine chemistry):

**Starter / Early Recipe (Logistic Science / Assembling Machine or Chemical Plant)**

- 📥 **Inputs:**
    - 📦 `fluid_rx-wood-pulp` (144) — Primary organic cellulose/lignin binder.
    - 📦 `item_coal` or `item_rx-crushed-carbon` (2) — Phenolic/carbon filler.
    - 🧪 `fluid_steam` (50) or `fluid_water` (100) — Thermal condensation curing.
        
- 📤 **Yield:** 💎 `rx-bakelite` (4)
    

> **Why this works:** It requires no oil, no sulfuric acid, and no plastic bars. Players can produce Bakelite as soon as they set up early wood chipping/pulping and steam power.

**Advanced / High-Yield Recipe (Chemical Science / Chemical Plant)**

- 📥 **Inputs:**
    - 📦 `fluid_rx-wood-pulp` (144)
    - 📦 `item_rx-crushed-carbon` (2)
    - 🧪 `fluid_kr-biomethanol` (20) or `fluid_sulfuric-acid` (20) — Chemical catalyst
        
- 📤 **Yield:** 💎 `rx-bakelite` (12) + `fluid_kr-dirty-water` (20)
    

**2. Distinct Material Roles: Bakelite vs. Plastic Bar**

Separating Bakelite (thermoset insulator) from Plastic (petrochemical thermoplastic) gives both items clear, non-overlapping identities throughout the entire game:

**`rx-bakelite` (Organic Thermoset / Structural Insulator)**

- **Physical Properties:** Heat-resistant, non-conductive, rigid, molded.
- **Core Uses:**
    - **Power Logistics:** Small/Medium/Big Power Poles (insulators & cross-arms).
        
    - **Motor & Drive Housings:** Casings for `item_motor`, `item_electric-motor`, and early pumps.
        
    - **Early Circuit Boards:** Replacement substrate for early green circuits/combinators before high-tier PCB etching.
        
    - **Automation Machinery:** Frames for Tier 1 Assemblers, Inserter bodies, and Transport Drone Depots.
        

**`plastic-bar` (Petrochemical Thermoplastic)**

- **Physical Properties:** Flexible, chemically resistant, synthesized from petroleum.
    
- **Core Uses:**
    
    - **Advanced Electronics:** Red circuits, advanced electronic components (`item_kr-electronic-components`), processing units.
        
    - **Military Industry:** Explosives, low-friction military gear, advanced ammunition.
        
    - **Fluid Handling:** Chemical pipes, acid tanks, fluid logistics modules.
        

**3. Progression Curve Impact**

1. **Pre-Oil Phase (Logistic Science):** Player builds early wood pulping blocks. Wood pulp + coal + steam yields Bakelite. This immediately unlocks medium/big power poles, basic motors, and early automation cores.
    
2. **Oil Phase (Chemical Science):** Unlocks `plastic-bar` via `tech_oil-processing`. Plastic takes over high-density electronics and chemical processing, while Bakelite remains the primary heavy insulator and structural casing material.
    
3. **Late Game Synergy:** Advanced Bakelite recipes utilize biomethanol from K2 chemistry, keeping forestry and pulp blocks heavily integrated into Nauvis's high-tier infrastructure.

------

# rx
Understood and agreed. #item_rx-bakelite becomes umbrella for all early plastics as in our history. Integral part of all early electrical buildings / construction. The earlier this tech is available, in more primal elements it will be incorporated.

#item_plastic-bar becomes umbrella for all modern synthetic plastics -> high tech consumable.

advanced recipe for bakelite is also a good idea. The factory will grow exponentially at this tech, so a lot of bakelite will be required. Uisng biomethanol is very good, because it is practically useless right now.


-------

Tying high-yield Bakelite directly to `fluid_kr-biomethanol` creates an organic chemistry loop on Nauvis that scales completely independently of crude oil.

Since biomethanol unlocks at Chemical Science under `tech_advanced-chemistry`, this gives players an immediate reason to build high-capacity forestry and pulping blocks:

- **The Organic Loop:** `item_wood` $\rightarrow$ `fluid_rx-wood-pulp` $\rightarrow$ `fluid_kr-biomethanol` + `item_rx-crushed-carbon` $\rightarrow$ high-yield **`item_rx-bakelite`**.
    
- **Industrial Scale:** Because Nauvis expansion during Chemical Science demands thousands of power poles, basic assembler casings, and early automation cores, this recipe lets players meet that demand using renewable wood/biomass rather than draining early petroleum gas.
    

### Clean Functional Split

- **`item_rx-bakelite` (Early Structural & Electrical Workhorse):**
    
    - **Insulation:** Small/Medium/Big Power Poles, Substation bases.
        
    - **Machinery:** `item_motor` and `item_electric-motor` housings, basic Inserter bodies, and early Transport Drone Depots.
        
    - **Electronics:** Basic substrate for early combinators and starter circuit boards.
        
- **`item_plastic-bar` (High-Tech Synthetic Consumable):**
    
    - **Advanced Electronics:** Red/Blue Circuits, `item_kr-electronic-components`, Processing Units.
        
    - **Chemical & Military:** Advanced ammunition casing, explosive fillers, low-friction fluid piping.
        

This establishes Bakelite as a heavy structural material you build _with_, while Plastic Bar becomes the specialized chemical input you consume in high-tech manufacturing.