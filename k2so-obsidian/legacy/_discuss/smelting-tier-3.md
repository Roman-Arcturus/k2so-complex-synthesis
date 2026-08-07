### Purified Steel Blast Melt 
#### New prototypes
* [[item_rx-enriched-steel-mix]] is produced in [[rc_rx_chemical-plant]] from [[item_kr-enriched-iron]], small amount of [[item_steel-plate]] for crystallization and [[fluid_kr-nitric-acid]] for reaction.
* [[item_rx-solid-oxidizer]] is produced in [[prot_kr-electrolysis-plant]] by [[recipe_rx-synthesize-oxidizer]] process. 
* Final smelting is formulated & is done by [[recipe_rx-smelt-steel]] process.
* [[item_rx-crushed-coal]] is used as Flux. [[item_rx-solid-oxidizer]] is used to supply Oxygen into smelting.

#### The smelting

- **The Logic**: Instead of melting bulky iron plates with crude coke, we inject high-purity [[item_rx-crushed-coal]] into the [[item_rx-enriched-steel-mix]] compound. The microscopic carbon dust uniformly binds the alloy matrix under intense blast heat, for high yield extraction.
- **Proportions**:
	* 6 [[item_rx-enriched-steel-mix]] + 3 [[item_rx-crushed-coal]] + 3 [[rc-oxidizer]] → **9 [[item_steel-plate]]**
- **The Math**:
    - Total Items: 6 Inputs + 3 Flux + 3 Oxidizer + 9 Result = 21 items total
    - Time Duration: At this stage Player has [[beacon]] and first [[speed-module]] and he is strongly encouraged to use them, because purified smelting requires triple time. 
    - Time calculation: K2 steel production time_factor is **3.1**. 
    - 3.1 (time_factor) * 21 (items total) * 3 (triple coefficient) = **195.3s**

---
### Purified Glass Crystallization
#### New prototypes
* Final smelting is formulated & is done by [[recipe_rx-smelt-glass]] process.
* [[item_rx-crushed-coal]] is used as Flux.
#### The smelting
- **The Logic**: Early glass uses basic washed sand. Tier 3 glass shifts to pure [[item_kr-quartz]] and uses [[item_rx-crushed-coal]] to strip mineral impurities. This produces flawless, high-grade glass wafers for advanced displays and electronics.
- **Proportions**:
	- 6 [[item_kr-quartz]] + 3 [[item_rx-crushed-coal]] + 1 [[kr-glass]] → **9 [[kr-glass]]**
- **The Math**:
	- Total Items: 6 Inputs + 3 Flux + 1 Crystallization + 9 Results = 19 items total
	* Time calculation: K2 [[kr-glass]] production time_factor is **0.7**. 
	* 0.7 (time_factor) * 19 (items total) * 3 (triple coefficient melt) * 3 (slow cooling) = **119.7s**

---
### Purified Silicon Crystallization
#### New prototypes
* [[item_rx-solid-oxidizer]] is produced in [[prot_kr-electrolysis-plant]] by [[rx-solidifying-oxigen]] process. 
* Final smelting is formulated & is done by [[recipe_rx-smelt-silicon]] process.
* [[item_rx-crushed-coal]] is used as Flux.
#### The smelting
- **The Logic**: Semiconductor-grade silicon requires an intense oxygen blast to reduce high-purity silica grids. We introduce [[item_rx-solid-oxidizer]] alongside pure carbon powder inside an advanced furnace environment.
- **Proportions**: 6 [[item_kr-quartz]] + 3 [[item_rx-crushed-coal]] + 3 [[item_rx-solid-oxidizer]] → **9 [[kr-silicon]]**
- **The Math**:
	- Total Items: 6 inputs + 3 flux + 3 oxidizer + 9 result = 21 items total
	* Time calculation: K2 [[kr-silicon]] production time_factor is **0.6**. 
	* 0.6 (time_factor) * 21 (items total) * 3 (triple coefficient melt) * 3 (slow crystallization) = **113.4s**

---


