#### 📜 Thematic description:
High-yield thermal reduction of quartz using pulverized carbon and hydrogen chloride. The reaction requires recycled glass seed crystals to initiate uniform molten crystallization inside an industrial furnace, venting wastewater as a byproduct.

#### 🏭 Facility:
* [[facility_kr-industrial-furnace]]

K2: * 16 [[item_kr-sand]] → 8 [[item_kr-glass]] ⏳**16s**, time_factor: 16s / 24 items total = **0.7**

#### ⏱️ Balance & Crafting:
* 🧮**Base Crafting Time:** 75.2s = 0.7 factor * 3 slow melt/cool * (12 + 4 + 3 + 2.4 + 15-3 + 2.4)
* **Crafting Category:**  [[facility_industrial-furnace]]



#### 📥 Inputs:
* 📦 12 [[item_kr-quartz]]
* 📦 4 [[item_rx-pulverized-carbon]]
* 📦 3 [[item_kr-glass]] *(Seed Crystal Input)*
* 💧 32 [[fluid_kr-hydrogen-chloride]]

#### 🧪 Result:
* 📦 15 [[item_kr-glass]] *(Net +12)*
* 🧪 24 [[fluid_kr-dirty-water]]

#### 🧩 Used in new recipes:
* ➡️ 
* 🔄 Feed-forward Seed Loop into [[recipe_rx-smelt-glass]]

#### 🔱 Derivatives:
* None




Ok. Now I need you to remind you the timings. I want to maintain the K2 logic of production time. I do it as follows:

Default K2 recipe for glass.

16 item_kr-sand → 8 kr-glass ⏳16s, time_factor: 16s / 24 items total = **0.7**

Now we take time_factor, multiply it by the total number of ingredients in the recipe to encourage using the beacons with speed-module. 

So: 12 + 4 + 3 + 32 + (15-3) + 24 = 87
87 x 0.7 = 60.9 seconds.

We can also multiply this time by 3, to symbolize long heating and slow cooling, but we will see if it will make sense.

---

We can remove the fluid numbers from calculation, or divide fluid amount by 10

12 + 4 + 3 + 3.2 + (15-3) + 2.4 = 36.6
36.6 x 0.7 = 25.6
25.6 x 3 = 76.9


$$U = \text{Solids}_{\text{in}} + \frac{\text{Fluids}_{\text{in}}}{10} + \text{Net Solids}_{\text{out}} + \frac{\text{Fluids}_{\text{out}}}{10}$$

$$T_{\text{base}} = U \times F_{\text{time}} \times 3$$








