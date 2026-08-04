
# rx
Lets get back to wood processing. so:
[[item_wood]] → **[[facility_kr-crusher]]** → [[item_rx-wood-chips]]

[[item_rx-wood-chips]] → **[[rc_rx_kr-filtration-plant]]** → [[fluid_rx-wood-pulp]]

[[fluid_rx-wood-pulp]] → **[[rc_rx_chemical-plant]]** → [[legacy/_items_rx/item_rx-bakelite]]

This process makes sense in real-life, but for the game it creates two items that has only one purpose. [[item_rx-wood-chips]] can only be washed in [[fluid_rx-wood-pulp]], and [[fluid_rx-wood-pulp]] can only be used to create [[legacy/_items_rx/item_rx-bakelite]]. This is bad design, we need to give them other purpose as well.
Any ideas?

-------
# 🧪 Expanding the Biological Chain: Multi-Purpose Biomaterials

You are entirely right. From a game-design perspective, a linear "A → B → C → D" pipeline where intermediates have zero alternative escape routes creates a rigid, boring logistics tree. It causes dead-ends where a backup in one specific end-product entirely freezes a massive upstream processing infrastructure.

To eliminate this single-use design bottleneck, we must weave **[[item_rx-wood-chips]]** and **[[fluid_rx-wood-pulp]]** into other major industrial and chemical branches of your factory. 

Here are highly realistic, thematic alternative purposes for both intermediates that beautifully expand your Nauvis biological footprint.

---

## 🪵 1. Alternative Uses for `[[rx-wood-chips]]`

Instead of chips only traveling to filtration towers, they can be diverted into heavy combustion, agriculture, and high-volume packaging columns.

*   ### Alternative A: Automated `[[kr-biomass]]` Cultivation
    *   **The Logic**: In Krastorio 2, biomass is the foundational block for fertilizers and bio-fuel, but its native recipe requires petroleum gas and oxygen. In the real world, organic wood chips serve as the perfect high-surface-area substrate bed for growing industrial bacterial cultures, fungi, and raw biomass slurry.
    *   **The Recipe**: `[[rx-wood-chips]]` + `[[water]]` + `[[kr-oxygen-gas]]` → **`[[kr-biomass]]`** (Inside the Chemical Plant).
    *   **The Impact**: This completely changes your fertilizer loop, letting you grow biomass cleanly using forestry products instead of taxing your oil/petroleum lines!
*   ### Alternative B: Bulk Logistical Packaging & Insulation Canyons
    *   **The Logic**: Before plastics took over, wood chips and excelsior shavings were the universal shock-absorber and temperature insulator for shipping heavy, fragile elements (like delicate chemical glass or high-explosive components).
    *   **The Recipe**: Inject `[[rx-wood-chips]]` into recipes for cargo transport, heavy automated item containers, or early explosive storage boxes.

---

## 🌾 2. Alternative Uses for `[[rx-wood-pulp]]`

Since wood pulp is essentially a clean, dense slurry of isolated cellulose fibers, its alternative routes should focus on chemical manipulation, synthetic textiles, and fuel binding.

*   ### Alternative A: Cellulose-Based Synthetic Rubber (`[[rubber]]`)
    *   **The Logic**: In Krastorio 2, rubber is made by combining petroleum gas and sulfur. However, industrial history shows that adding dense cellulose pulp slurry as a vulcanization binder and filler drastically increases the structural durability and heat-resistance of industrial tires, seals, and conveyor belts.
    *   **The Recipe**: `[[rx-wood-pulp]]` + `[[petroleum-gas]]` + `[[sulfur]]` → **`[[rubber]]`** (Inside the Chemical Plant).
    *   **The Yield**: Delivers an alternative, high-yield parallel rubber blueprint that rewards your forestry blocks by saving raw oil.
*   ### Alternative B: High-Density Solid Bio-Fuel Matrix
    *   **The Logic**: Paper pulp and wood slurry can be chemically pressed and dehydrated to create hyper-dense wood pellets or industrial solid fuel blocks that burn noticeably hotter and cleaner than raw, damp logs.
    *   **The Recipe**: Press `[[rx-wood-pulp]]` inside an advanced assembler or furnace to manufacture highly concentrated fuel cells or rocket-fuel stabilizers.

---

## 🗺️ The New Interconnected Eco-Grid

By implementing these alternative routes, your forestry blocks transform into a dynamic, flexible ecosystem:

```text
               ┌──► [ Logistical Packaging / Crating ]
               │
[ Wood Chips ] ├──► [[kr-biomass]] ──► [[kr-fertilizer]] ──► (Speeds up Greenhouses)
               │
               └──► [[rx-wood-pulp]]
                          │
         ┌────────────────┴────────────────┐
         ▼                                 ▼
   [[rx-bakelite]]                 [ Synthetic Rubber ]
(Advanced Computing)             (Belts, Pipes, Logistics)
```

---

<FollowUp>
Which alternative pathways feel most rewarding for your factory's economy? 
* **The Biomass/Fertilizer route** for chips to create a beautiful closed-loop farming cycle
* **The Synthetic Rubber route** for pulp to create a major cross-mod dependency with your logistical transport lines

Let me know your design preference before we begin mapping out the proportional equations!
</FollowUp>

-----

# rx

1. Using rx-wood-chips for kr-biomass and kr-fertilizer is a great idea. In my roleplay I needed a lot of biomass to produce K2 Air-pollution filters. Every chunk of my base had an kr-air-purifier to keep pollution at minimum.

2. In current K2 there is no such thing as rubber. I would rather avoid introducing another ingredient for now. We need to have a tight interconnection with what we already have.

3. I wonder, K2 allows only 3 gases to be produced in kr-atmospheric-condenser: Nitrogen, Oxygen, Hydrogen. Other gases are produces in chemical-plant and kr-electrolysis-plant. Also we added kr-chlorine as byproduct =, which is also byproduct of kr-lithium production. Can we use rx-wood-pulp in some chemical processes with fluids? 

-------

# 🧪 Expanding Wood Pulp: Fluid & Chemical Interconnections

Your feedback provides the perfect direction for your mod's design. Expanding **`[[rx-wood-pulp]]`** into Krastorio 2's chemical gas and pollution filtering loops creates a brilliant logistical loop: your automated greenhouses directly manufacture the clean filters needed to absorb the pollution of your entire industrial city-block network.

Here are three tightly integrated, realistic chemical processing ideas that consume **`[[rx-wood-pulp]]`** alongside Krastorio 2's native fluids and your new byproducts, completely eliminating single-use dead ends.

---

## 💡 Idea A: Cellulose Bio-Purification Filters (`[[kr-pollution-filter]]`)
* **The Concept**: In Krastorio 2, the `[[kr-air-purifier]]` requires a consumable item called a **`[[kr-pollution-filter]]`** to clean the chunk's atmosphere. In reality, industrial air scrubbers and heavy gas filters rely on specialized porous **cellulose fiber lattices** (made from treated wood pulp) coated in chemical binding agents to snare microscopic carbon soot and toxic particulates.
* **The Interconnection Matrix**:
	- 📥 **Required Inputs**: 
		- 📦 `[[rx-wood-pulp]]` (The porous cellulose fiber bed)
		- 📦 `[[rx-crushed-coal]]` (Activated carbon coating to capture sulfur gas)
		- 🧪 `[[kr-dirty-water]]` (Washing fluid)
	- 📤 **Yield Outputs**: 
		- 💎 `[[kr-pollution-filter]]` (High-yield extraction)
* **The Strategic Reward**: This links your forestry blocks directly to your factory's environmental survival. To scale up your dirty metallurgy and chemistry city-blocks under the **3x technology cost modifier**, you *must* mass-produce cellulose filters to keep your base clean.

---

## 💡 Idea B: Electrolytic Bio-Gasification (Alternative Gas Loop)
* **The Concept**: Cellulose wood pulp can be electro-chemically broken down (acid hydrolysis) inside an electrolysis plant to generate industrial gases. By reacting the organic slurry with an acid or gas byproduct, the cellulose chains crack apart, releasing pure element streams.
* **The Interconnection Matrix**:
	- 📥 **Required Inputs**:
		- 📦 `[[rx-wood-pulp]]`
		- 🧪 `[[kr-hydrogen-chloride]]` (Consumes your steel-paste loop byproduct)
	- 📤 **Yield Outputs**:
		- 🧪 `[[kr-hydrogen]]` (High volume extraction)
		- 🧪 `[[kr-dirty-water]]` (Wastewater recycling)
* **The Strategic Reward**: This provides an alternative, high-volume path to generate pure Hydrogen without relying solely on basic water electrolysis or atmospheric condensation, letting your biological lines actively support your heavy energy or rocket fuel networks.

---

## 💡 Idea C: Synthetic Nitro-Cellulose Propulsion Matrix
* **The Concept**: In industrial history, mixing pure cellulose plant fibers with highly concentrated nitric acid creates **Nitro-cellulose** (guncotton). Because it burns incredibly hot with zero residue, it completely replaced traditional gunpowder and serves as a major chemical component for manufacturing advanced military ordnance and high-velocity rocket fuel stabilizers.
* **The Interconnection Matrix**:
	- 📥 **Required Inputs**:
		- 📦 `[[rx-wood-pulp]]`
		- 🧪 `[[kr-nitric-acid]]` (Ties directly to your nitrogen/ammonia chemical lines)
	- 📤 **Yield Outputs**:
		- 📦 `[[rocket-fuel]]` or military explosives components
* **The Strategic Reward**: Shifts your rocket and defense logistics from basic petroleum loops into a highly technical agro-chemical manufacturing chain, keeping Nauvis essential long into the late game.

---

## ⏹️ System Standby for Your Verdict

By focusing on these pathways, every single custom item you introduce is deeply woven back into Krastorio 2's core systems—supporting pollution filtering, gas infrastructure, and chemical recycling.

<FollowUp>
Which chemical pathway do you want to define next for your Obsidian vault?
* **Idea A** to lock down your high-volume pollution filter loops
* **Idea B** to hook your wood pulp into a closed-loop hydrogen/acid network

Let me know your choice, and we can map out the proportional equations!
</FollowUp>

------

## rx
### Idea A is great. 
K2 filter recipe is:
	5x biomass, 2x steel-late, 2x plastic-bar → 1 kr-pollution-filter
plastic-bar doesn't make sense here, so instead we will use:
	-  [[fluid_rx-wood-pulp]] + [[item_rx-crushed-coal]] + [[item_kr-biomass]] as consumable part of the filter.
	- steel-plate for structure

after filter is used it is transformed into kr-used-pollution-filter.
In kr-bio-lab it is washed with water and replenished with consumable parts. Byproduct is kr-dirty-water.

### Idea B is not for me. 
I avoid burning fuel as much as possible. I use solar/wind power and rush toward nuclear power.

## Idea C is great. 
We will use Nitro-Cellulose for explosives and more advanced ammo. It transforms wood into an indespensable resource.




