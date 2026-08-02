*file:  /overrides/krastorio2/k2-smelting-t2.lua*

### 📜 Thematic description:
Krastorio2 enriched metal smelts. 
General rule: 1 enriched ore → 1 result plate. 
Metal ore enrichment already increased productivity: 9 input raw ore → 6 output enriched ore.

RX overrides does preserve the proportions of volume and time. But add flux/coking for realism.
### 🔱 Recipes

> [!Iron plate from enriched iron ore]
> K2: 1 [[item_kr-enriched-iron]] → 1 [[item_iron-plate]]
> ⏳3.2s, time_factor: $3.2s / 2 \approx 1.6$
> 
> RX: 6 [[item_kr-enriched-iron]] + 1 [[item_kr-quartz]] + 2 [[item_kr-coke]] → 6 [[item_iron-plate]]
> ⏳$24s \approx  1.6 * (6+1+2+6)$
> 📚200/1000
> 

> [!Copper plate from enriched copper ore]
> K2: 1 [[item_kr-enriched-copper]] → 1 [[item_copper-plate]]
> ⏳3.2s, time_factor: $3.2s / 2 \approx 1.6$
> 
> RX: 6 [[item_kr-enriched-copper]] + 3 [[item_kr-quartz]] → 6 [[item_copper-plate]]
> ⏳$24s \approx  1.6 * (6+1+2+6)$
> 📚200/1000
> 


> [!Rare metals from enriched rare metal ore]
> K2: 1 [[item_kr-enriched-rare-metals]] → 1 [[item_kr-rare-metals]]
> ⏳3.2s, time_factor: $3.2s / 2 \approx 1.6$
> 
> RX: 6 [[item_kr-enriched-rare-metals]] + 3 [[item_kr-enriched-copper]] + 3 [[item_kr-quartz]] → 6 [[item_kr-rare-metals]]
> ⏳$29s \approx  1.6 * (6+3+3+6)$
> 📚200/1000
> 
> 




