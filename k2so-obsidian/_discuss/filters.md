K2 have pollution-filter items that are consumed by kr-air-purifer to clear pollution from a game chunk.

k2 also provides two buildings - kr-atmospheric-condenser that extract gases from atmosphere, and kr-filtration-plant, that process all kind of waste. I am thinking to create two ingame consumables - filters for for condenser and for filtration. 

Lets think of how these filters might work in real life.

As a consumable part of a filter - I would use wood-pulp/ cellulose, because it makes sense. Perforated / corrugated cardboard may be used as filtering element. Crushed-coal as an analogue of activated carbon as well

---

### 1. Cellulose / Wood Pulp & Corrugated Matrix (Mechanical Filtration)

- **How it works in real life:**
    
    - **Mechanical Straining & Depth Filtration:** Wood fibers create a dense, random web of micro-passages. As air or liquid passes through, suspended physical particles (dust, dirt, micro-solids, grit) get physically trapped in the mesh.
        
    - **Pleating/Corrugation:** Pleating or corrugating paper/cardboard massively increases the surface area exposed to the flow without increasing the outer dimensions of the filter frame.
        
- **In-Game Application:**
    
    - **Atmospheric Condenser:** Acts as a high-flow particulate air intake filter (stopping dust and grit from clogging air compressor turbines and fouling gas lines).
        
    - **Filtration Plant:** Acts as a sludge/sediment press filter, catching solid particulate waste from dirty water or industrial chemical streams.
        

### 2. Crushed Coal / Activated Carbon (Chemical Adsorption)

- **How it works in real life:**
    
    - **Adsorption (not absorption):** Crushed coal/charcoal that has been activated (or finely crushed) has an extremely porous structure with immense microscopic surface area (a single gram can have over 1,000 $m^2$ of surface area).
        
    - Imbibes dissolved chemicals, heavy metals, volatile organic compounds (VOCs), odors, oils, and toxins at a molecular level onto its surface.
        
- **In-Game Application:**
    
    - **Atmospheric Condenser:** Strips unwanted gaseous impurities, sulfur compounds, or hydrocarbons out of raw air streams.
        
    - **Filtration Plant:** Absorbs dissolved heavy metals, oils, and chemical toxins from wastewater, leaving purified fluids behind.

---

### How this translates into Factorio / K2 Mechanics

#### A. Air/Gas Filter (Atmospheric Condenser)

- **Theme:** High-volume dry particulate & gas intake filter.
    
- **Recipe Idea:**
    
    - **Wood / Wood Pulp** (pleated paper matrix)
        
    - **Coal / Coke** (adsorption layer)
        
    - **Iron / Plastic** (casing & grid)
        
- **Used State:** Becomes a `Used Air Filter` filled with dust and trapped dry particulate.
    
- **Cleaning/Refurbishing:** Cleaned with Water in a Filtration Plant (yields dirty water + reused filter frame).

#### B. Liquid/Sludge Filter (Filtration Plant)

- **Theme:** Heavy-duty liquid slurry & chemical filter cartridge.
    
- **Recipe Idea:**
    
    - **Wood Pulp** (dense cellulose filter pad)
        
    - **Crushed Coal** (carbon filter bed)
        
    - **Steel / Iron** (corrosion-resistant frame)
        
- **Used State:** Becomes a `Used Liquid Filter` clogged with thick sludge and chemical residue.
    
- **Cleaning/Refurbishing:** Cleaned with Steam or Acid/Chemicals, yielding concentrated waste (like heavy metals, slag, or dirty water) and an empty frame.

---

We can think of Liquid waste filter later. Lets mockup a new Air/Gas Filter:

 → #item_kr-steel-beam (load bearing frame)
	 + #item_rx-bakelite  (structure)
	 + #fluid_rx-wood-pulp + #item_rx-crushed-coal (filtering elements/consumables)

I imagine it as a large rectangular cellulose/carbon cardboard stretching over the frame.
Or it can have a cylindrical shape like oil filters.






