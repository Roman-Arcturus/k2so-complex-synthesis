# ⏱️ Recipe Timing & Balance Specification

This document details the mathematical framework for calculating recipe crafting times in our overhaul mod. To maintain consistency, prevent arbitrary balance values, and reward high-tier factory layouts using beacons and speed modules, recipe times are calculated systematically using **Recipe-Specific Baseline Factors**, **Weighted Material Volumes**, and **Thermal Inertia Multipliers**.

## 🎯 Core Principles

1. **Stoichiometric Time Scaling:** Crafting time scales proportionally with total input and output volume. Complex, high-yield recipes naturally require longer processing windows.
    
2. **Fluid Density Normalization:** To prevent large fluid quantities from inflating craft times to unplayable levels, fluid volumes are normalized at a **10:1 ratio relative to solid mass** ($1\text{ fluid unit} = 0.1\text{ solid mass unit}$).
    
3. **Recipe-Specific Baselines:** Base time factors ($F_{\text{time}}$) are derived directly from default K2 recipe baselines for each material branch, maintaining K2's intentional balance progression.
    
4. **Thermal Inertia ($M_{\text{thermal}}$):** High-tier smelting processes requiring heavy machinery (e.g., `industrial-furnace`) apply a $3\times$ multiplier to reflect slow industrial heating, melting, and controlled crystallization cycles.
    

## 🧮 Mathematical Formulas

### 1. Baseline Recipe Time Factor ($F_{\text{time}}$)

Extracted from reference K2 vanilla recipes:

$$F_{\text{time}} = \frac{T_{\text{vanilla}}}{\sum \text{Inputs}_{\text{solid+fluid}} + \sum \text{Outputs}_{\text{solid+fluid}}}$$

### 2. Weighted Recipe Mass/Volume ($U$)

Calculates the total mass-equivalent scale of a new recipe:

$$U = \text{Solids}_{\text{in}} + \frac{\text{Fluids}_{\text{in}}}{10} + \text{Net Solids}_{\text{out}} + \frac{\text{Fluids}_{\text{out}}}{10}$$

> **Note on Recirculated Seeds:** For recipes utilizing seed inputs (e.g., glass cullet or silicon seeds), output mass is measured as **Net Output** ($\text{Gross Output} - \text{Seed Input}$) to avoid double-counting recirculated material.

### 3. Base Crafting Time ($T_{\text{base}}$)

$$T_{\text{base}} = U \times F_{\text{time}} \times M_{\text{thermal}}$$

- **$M_{\text{thermal}} = 1.0$** for standard assembly, chemical plants, and basic smelting.
    
- **$M_{\text{thermal}} = 3.0$** for Tier 3 heavy metallurgical processes inside the Industrial Furnace.
    

## 📊 K2 Baseline Reference Table

Below are the baseline reference recipes used to establish branch-specific time factors ($F_{\text{time}}$):

| **Target Material** | **K2 Baseline Recipe**                                                                     | **Base Time (Tvanilla​)** | **Total Units** | **Calculated Ftime​**                         |
| ------------------- | ------------------------------------------------------------------------------------------ | ------------------------- | --------------- | --------------------------------------------- |
| **Glass**           | $16\text{ Sand} \rightarrow 8\text{ Glass}$                                                | 16s                       | 24 items        | $\frac{16}{24} \approx \mathbf{0.67\text{s}}$ |
| **Silicon**         | $18\text{ Quartz} \rightarrow 9\text{ Silicon}$                                            | 16s                       | 27 items        | $\frac{16}{27} \approx \mathbf{0.60\text{s}}$ |
| **Steel**           | $10\text{ Iron Plate} + 2\text{ Coke} \rightarrow 5\text{ Steel}$                          | 53s                       | 17 items        | $\frac{53}{17} \approx \mathbf{3.12\text{s}}$ |
| **Iron Smelt**      | $6\text{ Enriched Iron} + 1\text{ Quartz} + 2\text{ Coke} \rightarrow 6\text{ Iron Plate}$ | 24s                       | 15 items        | $\frac{24}{15} = \mathbf{1.60\text{s}}$       |

## 📝 Practical Example: [[recipe_rx-smelt-glass]]

### Recipe Inputs & Outputs

- **Inputs:**
    - 📦 12 `[[item_kr-quartz]]`
    - 📦 4 `[[item_rx-pulverized-carbon]]`
    - 📦 3 `[[item_kr-glass]]` _(Seed Crystal)_
    - 💧 32 `[[fluid_kr-hydrogen-chloride]]`
    
- **Outputs:**
    - 📦 15 `[[item_kr-glass]]` _(Net +12)_
    - 🧪 24 `[[fluid_kr-dirty-water]]`

### Calculation Steps

1. **Calculate Weighted Mass ($U$):**
    $$U = (12 + 4 + 3) + \frac{32}{10} + (15 - 3) + \frac{24}{10}$$
    $$U = 19 + 3.2 + 12 + 2.4 = 36.6\text{ mass units}$$
2. **Apply Glass Baseline Factor ($F_{\text{time}} \approx 0.7\text{s}$):**
    $$T_{\text{standard}} = 36.6 \times 0.7 = 25.62\text{ seconds}$$
    
3. **Apply Thermal Inertia Multiplier ($M_{\text{thermal}} = 3.0$):**
    $$T_{\text{base}} = 25.62 \times 3 = \mathbf{76.86\text{ seconds}} \quad (\approx \mathbf{76.9\text{s}})$$

## ⚡ Endgame Machine Performance

With a base duration of **76.9s**, machine performance scales dynamically based on module configuration:

- **Unboosted Industrial Furnace** (Crafting Speed = 4.0):
    
    $$\text{Real Cycle Time} = \frac{76.86}{4.0} \approx \mathbf{19.2\text{s per batch}}$$
    
- **Fully Module/Beacon Boosted** (Crafting Speed $\approx 15.0$):
    
    $$\text{Real Cycle Time} = \frac{76.86}{15.0} \approx \mathbf{5.1\text{s per batch}} \quad (\mathbf{2.35\text{ net glass/sec}})$$

