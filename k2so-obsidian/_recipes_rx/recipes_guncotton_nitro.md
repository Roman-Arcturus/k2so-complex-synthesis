#### ![[item_rx-crude-guncotton.png|32]] Tier 1: Crude Explosive / Black-Powder Era

Early-game military propellant available prior to Nitric Acid research. Uses acidic sulfur/chlorine oxidation on cellulose to produce lower-grade explosive powder.

**`#recipe_rx-crude-guncotton`** ⏳4.0s 
→ 24 #fluid_rx-wood-pulp + 24 #fluid_sulfuric-acid + 2 #item_sulfur
← 2 #item_rx-crude-guncotton + 12 #fluid_kr-dirty-water

- **Inputs:** 2 fluids (`#fluid_rx-wood-pulp` + `#fluid_sulfuric-acid`) and 1 solid (`#item_sulfur`).
- **Yield:** Low density (2 items per cycle).
- **Military Uses:** Firearm magazine, Basic Grenades, Landmines, T1 Explosives, Cannon shells.
#### ![[item_rx-nitrocellulose.png|32]] Tier 2: Nitro-Cellulose / Industrial Guncotton Era

Unlocks alongside `kr-advanced-chemistry` (Nitric Acid). High-potency smokeless powder for mid-to-late game ordinance.

**`#recipe_rx-nitrocellulose`** ⏳3.0s 
→ 24 #fluid_rx-wood-pulp + 36 #fluid_kr-nitric-acid + 24 #fluid_sulfuric-acid
← 4 #item_rx-nitrocellulose + 24 #fluid_kr-dirty-water

- **Inputs:** 2 fluids (`#fluid_rx-wood-pulp` + `#fluid_kr-nitric-acid` mixed with `#fluid_sulfuric-acid` as dehydrating agent).
- **Yield:** High density (4 items per cycle, 200% efficiency of T1).    
- **Military Uses:** Piercing Rounds, Military Science Packs, Rockets, Artillery Shells, Tank Shells, Atomic Bomb components.


### Tech & Recipe Progression Summary

| **Tech Era**        | **Primary Propellant**     | **Chemical Requirements**               | **Unlocked Military Items**                                 |
| ------------------- | -------------------------- | --------------------------------------- | ----------------------------------------------------------- |
| **Early Game**      | `#item_rx-crude-guncotton` | Wood Pulp + Sulfuric Acid + Sulfur      | Yellow Ammo, Basic Grenades, Shotgun Shells, T1 Landmines   |
| **Mid / Late Game** | `#item_rx-nitrocellulose`  | Wood Pulp + Nitric Acid + Sulfuric Acid | AP Ammo, Uranium Ammo, Rockets, Artillery, Military Science |

# RA

Great. The generic "explosives" will be overwritten with out guncotton recipe. And it will be the integral component for much more military than currently in-game. As soon as new military tech will require `chemical-tech-card` - the recipes will switch to use #item_rx-nitrocellulose.

We will also change military tech from burning coke to burning guncotton, which has much more sence.

---

### Military Progression & Tech Split

```
[Pre-Chemical Tech Card]  --> Crude Guncotton (Sulfuric Acid + Wood Pulp + Sulfur)
[Chemical Tech Card]     --> Nitrocellulose (Nitric Acid + Wood Pulp + Acid)
```

### Recipe Migration Matrix

Below is how vanilla and K2 military recipes adapt across the science divide:

| **Category**             | **Early Tier (Pre-Chemical Science)**       | **Mid/Late Tier (chemical-tech-card+)**               |
| ------------------------ | ------------------------------------------- | ----------------------------------------------------- |
| **Primary Ingredient**   | `#item_rx-crude-guncotton`                  | `#item_rx-nitrocellulose`                             |
| **Explosives Overwrite** | Replaced by Crude Guncotton in T1 recipes   | Replaced by Nitrocellulose in T2 recipes              |
| **Small Arms**           | Firearm Magazine, Shotgun Shells            | Piercing Rounds, Uranium Rounds                       |
| **Heavy Ordinance**      | Basic Grenades, T1 Landmines, Cannon Shells | Explosive Rockets, Artillery Shells, Cluster Grenades |
| **Flamethrower Fuel**    | Crude Guncotton + Heavy Oil (Replaces Coke) | Nitrocellulose + Light Oil / K2 Rocket Fuel           |




