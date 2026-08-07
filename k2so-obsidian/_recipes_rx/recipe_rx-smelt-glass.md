*file: /prototypes/rx-smelting-t3.lua*

#### 📜 Thematic description:
High-yield thermal reduction of quartz using pulverized carbon and hydrogen chloride. The reaction requires recycled glass seed crystals to initiate uniform molten crystallization inside an industrial furnace, venting wastewater as a byproduct.

#### 🏭 Facility:
* [[facility_kr-industrial-furnace]]

#### 📥 Inputs:
* 📦 12 [[item_kr-quartz]]
* 📦 4 [[item_rx-crushed-coal]]
* 📦 3 [[item_kr-glass]] *(Seed Crystal Input)*
* 💧 32 [[fluid_kr-hydrogen-chloride]]

#### 🧪 Result:
* 📦 15 [[item_kr-glass]] *(Net +12)*
* 🧪 24 [[fluid_kr-dirty-water]]

#### ⏱️ Balance & Crafting:
* 🧮75.2s = 0.7 factor * 3 slow melt/cool * (12 + 4 + 3 + 2.4 + 15-3 + 2.4)

#### 🧩 [[item_kr-glass]] in new recipes:
* 🔄 Feed-forward Seed Loop into [[recipe_rx-smelt-glass]]
* ➡️ 

#### 🔱 Derivatives:
* None

To increase machine throughput, I multiplied x3 each input/output ingredients. I also removed the x3 slow/cool factor.

I built a production line consisting of two columns by 8 industrial-furnace, with a column between them made of 16 beacons.
Each beacons contain 2* speed-module-1, each industrial-furnace contains 5* productivity-module-1

Rate Calculator mod gave me these numbers:
In: 116.3 kr-hydrogen-chloride, 58.15 kr-quartz, 19.38 kr-coke
Out: 153.8 kr-dirty-water, 81.59 kr-glass

-------

I made the same production column with K2 recipe of glass (RX override with flux). 16 industrial-furnaces with 16 beacons in the middle.
Rate Calculator mod gave me these numbers:

In: 117.3 kr-sand, 14.67 copper-ore
Out: 73.3 kr-glass.

-----

K2 recipe for kr-quartz is : 12 kr-sand -> 6 kr-glass
RX advanced recipe kr-quartz is: 12 kr-sand -> 18 kr-glass.

So if we will keep these numbers, K2 recipe for glass production is easier and more productive. So either it needs to be nerfed, or kr-quartz needs to be more expensive in terms of kr-sand.


----

in vanilla/K2 (tier1 in my specs) - glass is melted directly from sand. silicone is melted from quartz (18 quartz>>9 silicon) , and quartz is washed from sand (2 sand >>1 quartz).

sand is cheap, 3 stone >> 7-8 sand. In the beginning of the game stone is not really useful. Only bricks for production buildings, but it is not a resource that is constantly being drained for something.

I would rather make tier1 slightly more expensive, without transforming it into a grind.

when player unlocks industrial-furnace :
processing-unit and production science pack prerequisites. There should be a spike of demand for quartz, glass, silicon for electronic-components, processing-unit etc, so old tier1 will become too wasteful and slow


















