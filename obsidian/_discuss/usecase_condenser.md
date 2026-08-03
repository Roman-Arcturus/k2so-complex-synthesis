Question. K2 introduces kr-atmospheric-condenser, which has 3 recipes only. To produce nitrogen, oxygen, hydrogen. Can it be configured to create something else? Or to mix gases? 

Yes, the `kr-atmospheric-condenser` can be configured to produce new gases, consume fluid inputs for gas mixing, or require solid items like filters.

Under the hood in Factorio, the `kr-atmospheric-condenser` is built on an `assembling-machine` prototype tied to a specific crafting category (typically `atmosphere-condensation`). Because of this, its capabilities can be expanded in your mod:

### 1. Adding New Extraction Recipes

You can assign any new recipe to its crafting category without changing the machine's model or structure.

- **New Base Outputs:** Carbon Dioxide (CO2​), Argon, atmospheric moisture (Water), or specialized trace gases.
    
- **Byproduct Logistics:** A single condensation recipe can output a primary gas alongside a secondary atmospheric byproduct (for instance, extracting trace Argon while yielding heavy volumes of excess Nitrogen or CO2​). This immediately introduces the storage and handling dilemma you described.
    

### 2. Gas Mixing & Catalyzed Condensation

While standard K2 recipes for the condenser only require electricity and draw from "ambient air," you can modify its prototype `fluid_boxes` in Lua to give it fluid input pipes.

- **Gas Reaction / Scrubbing:** It can take an input gas (or steam/water) and combine it with ambient air extraction to yield synthesized compounds.
    
- **Conditioned Extraction:** It can require a liquid coolant input to condense low-boiling-point gases, forcing a local cooling loop to run the building.
    

### 3. Solid Inputs & Filter Degradation

Because it is an assembling machine, you can also give it item input/output slots.

- **Air Filters:** Require clean filter frames that absorb atmospheric particulates or heavy toxins, returning a dirty filter byproduct that must be cleaned in a separate city-block before returning to the condenser loop.
    
- **Chemical Absorbents:** Require consumable chemical matrices to bind specific rare atmospheric elements.

----

- Requiring Air filters is a great idea. This way gases will not be made out of nothing anymore.
We can use regular [[item_k2-pollution-filter]] for that. 
This will require a constant income of [[item_kr-biomass]]. Which is also good, because we already produce a bit of it much earlier than regular K2 through [[recipe_rx-filter-wood-pulp]]
This also adds another use for [[item_k2-pollution-filter]] beside the regular pollution consumption. 
We can also add pollution = -x, to kr-atmospheric-condenser recipes as it now extract polluted gases from atmosphere.

---

Requiring air filters in the atmospheric condenser creates an immediate, high-leverage feedback loop across your chemical, forestry, and gas infrastructure. It turns a basic passive extraction process into an active logistics cycle with real mechanical weight.

### 1. The Closed Filter & Biomass Loop

Integrating `item_k2-air-filter` directly solves the "free gas" issue while giving early biomass a dedicated, permanent sink:

- **Recipe Flow:** Condenser takes (Ambient Gas + Clean Filter) $\rightarrow$ yields (Target Fluid Gas + Used/Dirty Filter).
    
- **Refurbishment Block:** Used filters are shipped to a cleaning block that consumes `item_kr-biomass` (plus water/acid) to restore them to Clean Filters.
    
- **Byproduct Synergy:** The cleaning step itself can discharge `kr-dirty-water` or organic sludge, linking back into your wood pulp or filtration networks.
    

This establishes a tight dependency: if your biomass or filter cleaning loop backs up, your nitrogen, hydrogen, and oxygen supply freezes completely, stopping downstream chemical lines.

### 2. Negative Pollution (`pollution = -x`) Dynamics

Adding a negative emissions modifier to condenser recipes creates compelling spatial decisions in a city-block layout:

- **Active Scrubbing Zones:** Instead of placing gas condensers in a random remote corner of the map, players are incentivized to place atmospheric blocks directly adjacent to high-emissions blocks (like Coking, Blast Smelting, or Slag Quenching).
    
- **Environmental Buffer:** It gives the player a tool to manage regional pollution clouds and biter evolution without relying purely on passive trees or dedicated wall defenses.
    
- **Efficiency Scaling:** Higher-tier gases (or recipes with higher filter consumption) could absorb significantly more pollution per cycle, matching the heavy pollution output of mid-to-late game industrial setups.
    

### 3. Transport Drone & City-Block Impact

Because filters are high-volume, reusable items, this adds significant logistics density:

- A single condenser block will require a steady stream of incoming clean filters and a continuous export of spent filters.
    
- This demands dedicated drone roads and supply depots specifically for filter routing, preventing the gas block from feeling like a static "set and forget" module.


---

> [!Pollution filter]
> K2 [[recipe_kr-pollution-filter]] :⏳10s in [[facility_kr-bio-lab]]
> → 5 [[item_kr-biomass]] + 2 [[item_steel-plate]] + 2 [[item_plastic-bar]]
> ← [[item_kr-pollution-filter]]
> 

[[facility_kr-bio-lab]] requires chemical-science-pack and military-science-pack, so it's available after initial crude-oil / plastic / sulfuric-acid production.

[[facility_kr-atmospheric-condenser]] is the prerequisite tech to unlock [[facility_kr-bio-lab]].

> [!Biomass]
> 
> K2: [[recipe_kr-biomass]] :⏳60s in [[facility_kr-bio-lab]]
> → 2 [[item_kr-biomass]] + 50 [[fluid_petroleum-gas]] + 50 [[fluid_kr-oxygen]]
> ← [[item_kr-biomass]]
> ---
> RX: [[recipe_rx-filter-wood-pulp]]: ⏳8s in [[facility_kr-filtration-plant]]
> → 48 [[item_rx-wood-chips]] + 144 [[fluid_water]]
> ← 144 [[fluid_rx-wood-pulp]] + 6 [[item_kr-biomass]]
> 

[[recipe_rx-filter-wood-pulp]] allows:
- to stack a bit [[item_kr-biomass]] >> to do initial military science >> to unlock [[facility_kr-bio-lab]] >> to build [[facility_kr-bio-lab]] (each require 50 [[item_kr-biomass]])
* without doing chores of going into the wild to destroy biter bases to collect  [[item_kr-biomass]]

The only unique utility of [[facility_kr-atmospheric-condenser]] is producing [[fluid_kr-nitrogen]].
[[fluid_kr-oxygen]] & [[fluid_kr-nitrogen]] are produced from sand electrolysis and water separation.


---

All correct except [[tech_kr-air-purification]]. It is unlocked directly after [[tech_kr-biotechnology]].
This means that even [[tech_kr-atmosphere-condensation]] is unlocked a bit earlier, the actual [[facility_kr-atmospheric-condenser]] will not work, as there will be no [[item_kr-pollution-filter]] to supply them.

Anyway at this stage, [[fluid_kr-nitrogen]] is not yet required. Player can mine [[fluid_kr-mineral-water]] but it has no purpose for long time.

We will need to more implement [[fluid_kr-mineral-water]] as well, because it has minimal use in K2.










----


K2 [[recipe_kr-water-separation]] :⏳3s in [[facility_kr-electrolysis-plant]]
→ 50 [[fluid_water]] 
← 20 [[fluid_kr-oxygen]] + 30 [[fluid_kr-hydrogen]]





, 📚200/100










