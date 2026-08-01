## 📚 Project Scope: Obsidian Mod Vault Documentation

### 🎯 Primary Objective

To build a clean, transparent, and interconnected **Obsidian Vault** directly bundled with `k2so-complex-synthesis`. This documentation serves as an open architectural manual—explaining **how** recipes work, **why** they exist, and the **game design philosophy** behind every resource loop so players and contributors can provide educated feedback.

### 🧱 Key Structural & Design Standards

- **Standardized Obsidian Linking Protocol**:
    - `[[facility_...]]` for crafting machines.
    - `[[recipe_...]]` for production recipes.
    - `[[item_...]]` for solid items.
    - `[[fluid_...]]` for liquids and gases.
        
- **Standard Page Template**:
    - **📜 Thematic Description**: Concise (~45 words max) real-world chemical or mechanical logic.
    - **🧪 Result**: Primary output(s).
    - **🧩 Used in new recipes**: Downstream integration into mod recipes.
    - **🔱 Derivatives**: Strategic value, byproducts, and industrial utility.
    
- **Balancing Philosophy & Logic Mapping**:
    - Documenting the **Tier 1 to Tier 3 Smelting Hierarchy** (introducing flux, rebalancing enriched metals, and providing high-yield **6 input : 9 output** Tier 3 purified loops).
        
    - Explaining the **Item-Mass Duration Formula** ($\text{Total Items} \times \text{Base Factor} \times \text{Stage Multipliers}$).
        
    - Justifying pre-Space Nauvis bottlenecks (Steel, Glass, Silicon, Bakelite) tailored for a **3x technology cost multiplier**.
        
    - Eliminating single-use items across all production chains.