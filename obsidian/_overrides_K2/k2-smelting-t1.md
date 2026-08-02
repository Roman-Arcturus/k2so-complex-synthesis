*file: /overrides/krastorio2/k2-smelting-t1.lua*
### 📜 Thematic description:

Smelting of Vanilla and K2 ingredients. RX overrides does preserve the proportions of volume and time. Only add flux, without over-complicating the initial stage of the game.

**from K2 basic smelts:** *general rule: 2 input items → 1 result item*
**to RX tier-1 smelts:** *general rule: 6 input items + flux→ 3 result items*

### 🔱 Recipes

> [!iron-plate]
> K2: 2 [[item_iron-ore]] → 1 [[item_iron-plate]]
> ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$
> 📚200/1000
> 
> RX: 6 [[item_iron-ore]] + 1 [[item_stone]] → 3 [[item_iron-plate]]
> ⏳$11s \approx 1.1 * (6+1+3)$
> 📚200/1000
> 


> [!Copper plate]
> 
> K2: 2 [[item_copper-ore]] → 1 [[item_copper-plate]] 
> ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$
> 📚200/1000
> 
> RX: 6 [[item_copper-ore]] + 1 [[item_stone]] → 3 [[item_copper-plate]]
> ⏳$11s \approx 1.1 * (6+1+3)$
>  📚200/1000
> 


> [!Steel plate]
> K2: 10 [[item_iron-plate]] + 2 [[item_kr-coke]]→ 5 [[item_steel-plate]]
> ⏳53s, time-factor: $53s / (10+2+5) \approx 3.1$
> 📚200/400
> 
> RX: 12 [[item_iron-plate]] + 3 [[item_kr-coke]] → 6 [[item_steel-plate]]
> ⏳$65.1s \approx 3.1 * (12+3+6)$
> 📚200/600
> 


> [!Rare Metals]
> K2: 2 [[item_kr-rare-metal-ore]] → 1 [[item_kr-rare-metals]] 
> ⏳3.2s, time-factor: $3.2s / (2+1) \approx 1.1$
> 📚200/1000
> 
> RX: 12 [[item_kr-rare-metal-ore]] + 3 [[item_copper-ore]] → 6 [[item_kr-rare-metals]]
> ⏳$23.1s \approx 1.1 * (12+3+6)$
> 📚200/800
> 


> [!Stone brick]
> K2: 2 [[item_stone]] → 1 [[item_stone-brick]] 
> ⏳**3.2s**, time-factor: $3.2s / (2+1) \approx 1.1$
> 📚200/600
> 
> RX: 12 [[item_stone]] + 3 [[item_iron-ore]] → 6 [[item_stone-brick]]
> ⏳$23.1s \approx 1.1 * (12+3+6)$
> 📚200/600
> 



> [!Sand]
> K2: 16 [[item_kr-sand]] → 8 [[item_kr-glass]]
> ⏳**16s**, time-factor: $16s / (16+8) \approx 0.7$
> 📚200/1000
> 
> RX: 16 [[item_kr-sand]] + 2 [[item_copper-ore]] → 8 [[item_kr-glass]]
> ⏳$18.2s \approx 0.7 * (16+2+8)$
> 📚200/1000
> 


> [!Quartz]
> K2: 18 [[item_kr-quartz]] → 9 [[item_kr-silicon]] 
> ⏳**16s**, time-factor: $16s / (18+9) \approx 0.6$
> 📚200/1000
> 
> RX: 18 [[item_kr-quartz]] + 4 [[item_kr-coke]] → 9 [[item_kr-silicon]]
> ⏳$18.6s \approx 0.6 * (18+4+9)$
> 📚200/1000
> 


> [!Coke]
> 
> K2: 6 [[item_coal]] + 6 [[item_wood]] → 6 [[item_kr-coke]]
> ⏳**16s**, time_factor: $16s / (6+6+6) \approx 0.9$
> 📚200/1000
> 
> RX: 12 [[item_rx-pulverized-carbon]] + 6 [[item_rx-wood-chips]] + 3 [[item_kr-sand]] → 9 [[item_kr-coke]] 
> ⏳$16.0s \approx 0.9 * (12 + 6 + 3 + 9)$
> 📚200/1000
> 
> 


