## Tier 1: Basic Smelting (Crude Earth)

### **Recipe Changes** 
**from K2SO basic metals:** *general rule: 2 input items → 1 result item*

* 2 [[iron-ore]] → 1 [[iron-plate]] ⏳**3.2s**, time_factor: 3.2s / 3 items total = **1.1**
* 2 [[copper-ore]] → 1 [[copper-plate]] ⏳**3.2s**, time_factor: 3.2s / 3 items total = **1.1**
* 10 [[iron-plate]] + 2 [[kr-coke]]→ 5 [[item_steel-plate]] ⏳**53s**, time_factor: 53s / 17 = **3.1**
* 2 [[kr-rare-metal-ore]] → 1 [[kr-rare-metals]] ⏳**3.2s**, time_factor: 3.2s / 3 items total = **1.1**

* 2 [[stone]] → 1 [[stone-brick]] ⏳**3.2s**, time_factor: 3.2s / 3 items total = **1.1**
* 6 [[item_coal]] + 6 [[item_wood]] → 6 [[coke]] ⏳**16s**, time_factor: 16s / 18 items total = **0.9**
* 16 [[item_kr-sand]] → 8 [[kr-glass]] ⏳**16s**, time_factor: 16s / 24 items total = **0.7**
* 18 [[item_kr-quartz]] → 9 [[kr-silicon]] ⏳**16s**, time_factor: 16s / 27 items total = **0.6**

**to RX tier-1:** *general rule: 6 input items + flux→ 3 result items, preserve time_factor*

* 6 [[iron-ore]] + 1 [[stone]] → 3 [[iron-plate]] ⏳**11s** = 10 items total * **1.1**
* 6 [[copper-ore]] + 1 [[stone]] → 3 [[copper-plate]] ⏳**11s** = 10 items total * **1.1**
* 12 [[iron-plate]] + 3 [[kr-coke]] → 6 [[item_steel-plate]] ⏳**65.1s** = 21 items total * **3.1**
* 12 [[kr-rare-metal-ore]] + 3 [[copper-ore]] → 6 [[kr-rare-metals]] ⏳**23.1s** = 21 items total * **1.1**

* 12 [[stone]] + 3 [[iron-ore]] → 6 [[stone-brick]] ⏳**23.1s** = 21 items total * **1.1**
* 6 [[item_coal]] + 6 [[item_wood]] + 3 [[item_kr-sand]] → 6 [[coke]] ⏳**18.9s** = 21 items total * **0.9**
* 16 [[item_kr-sand]] + 2 [[copper-ore]] → 8 [[kr-glass]] ⏳**18.2s** = 26 items total * **0.7**
* 18 [[item_kr-quartz]] + 4 [[kr-coke]] → 9 [[kr-silicon]] ⏳**18.6s** = 31 items total * **0.6**

## Tier 2: K2 Enriched Smelting
**from K2SO enriched metals:** *general rule: 1 enriched item → 1 result item*

* 1 [[item_kr-enriched-iron]] → 1 [[iron-plate]] ⏳**3.2s**, time_factor: 3.2s / 2 items total = **1.6**
* 1 [[kr-enriched-copper]] → 1 [[copper-plate]] ⏳**3.2s**, time_factor: 3.2s / 2 items total = **1.6**
* 1 [[kr-enriched-rare-metals]] → 1 [[kr-rare-metals]] ⏳**3.2s**, time_factor: 3.2s / 2 items total = **1.6**

**to RX tier-2:** *general rule: 6 input items + 3 flux → 6 result items, preserve time_factor*

6 [[item_kr-enriched-iron]] + 1 [[item_kr-quartz]] + 2 [[kr-coke]] → 6 [[iron-plate]] ⏳**24s** = 15 items total * **1.6**
6 [[kr-enriched-copper]] + 3 [[item_kr-quartz]]  → 6 [[copper-plate]] ⏳**24s** = 15 items total * **1.6**
6 [[kr-enriched-rare-metals]] + 3 [[kr-enriched-copper]] + 2 [[item_kr-quartz]]
	→ 6 [[kr-rare-metals]] ⏳**27.2s** = 17 items total * **1.6**

## Tier 3: rx Purified Smelting
last tier of steel and glass/silicon production before launching into Space from Nauvis.

**Productivity of smelting main ingredient into result:**
**tier-1: One stage** 
	Direct smelting **2 raw : 1 result**
	
**tier-2: Two Stages** 
	Chemical enrichment of metals **9 raw : 6 enriched**
	Enriched smelting **6 enriched : 6 result**

**tier-3: Two stages**  
	Preparing new prototypes and adding them into new 3 recipes:
		Smelting Chemically Enriched Steel **6 enriched : 9 result**
		Smelting [[item_kr-quartz]] into Glass / **6 input : 9 result**
		Smelting [[item_kr-quartz]] into Silicon / **6 input : 9 result**

**Tier 3: Purified Smelting (Strategic Architecture)**

Once the player touches down on [[planet-Vulcanus]], free molten iron and copper from lava completely eclipse traditional [[planet-Nauvis]] ore smelting. Upgrading them on [[planet-Nauvis]] would be a massive waste of development time and player infrastructure. 

By narrowing Tier 3 down to **Steel, Glass, and Silicon**, we align the recipes with the pre-space space constraints:

1. **The Steel Crisis**: Constructing the first orbital Space Platforms requires a spike of steel  production. Because [[planet-Vulcanus]] foundry-based steel takes time to set up, forcing a massive, efficient **6 input : 9 output** parallel steel line on [[planet-Nauvis]] provides a massive industrial reward that speeds up your launch window

2. **The Electronic Circuit Squeeze**: Glass and Silicon drive [[kr-electronic-components]]. Increasing their consumption encourages the player to step away from wasteful early-game builds and deploy dedicated, high-efficiency chemical columns.

3. **Productivity Module 1 Consumables**: Since Yellow Science forces the automation of Tier 1 [[productivity-module]], the player already has a steady supply. Encouraging them through multi-stage loops allows these modules to compound exponentially, making the **3x technology cost** run satisfying. 

4. By this stage in the game, [[legacy/_items_rx/item_rx-bakelite]] must be used extensively, because [[item_wood]] is not a part of [[kr-coke]] or new [[electronic-circuit]] production anymore. So large wood production, crushing & washing is now necessary for [[legacy/_items_rx/item_rx-bakelite]] and should be used for something else.

5. We will need to make use of every new ingredient, there should be no "one use ingredient" in the game, like [[stone-tablet]] from AAI, or [[item_kr-quartz]] that is used only for [[kr-silicon]] and some minor use in heat-pipes and lasers in K2.

