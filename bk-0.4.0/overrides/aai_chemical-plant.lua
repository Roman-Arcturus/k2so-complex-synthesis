-- file: /overrides/aai_chemical-plant.lua

--[[Vanilla, #mod_AAI-Industry & #mod_Krastorio2 recipes.
Recipes produced in #facility_chemical-plant. `categories = { "chemistry" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[#### #recipe_heavy-oil-cracking
AAI: ⏳2s → 40 #fluid_heavy-oil + 30 #fluid_water ← 30 #fluid_light-oil]]

update_recipe({
    name = "heavy-oil-cracking", 
    ingredients = {
        { type = "fluid", name = "heavy-oil",       amount = 48 },
        { type = "fluid", name = "steam",           amount = 36 },
    },
    results = {
        { type = "fluid", name = "light-oil",       amount = 48 },
        { type = "fluid", name = "petroleum-gas",   amount = 12 },
    },
    main_product = "light-oil",
    icon = fx .. "/fluid/heavy-oil-cracking.png",
    allow_productivity = true,      
    energy = 2, 
})

--[[#### #recipe_light-oil-cracking
AAI: ⏳2.0s → 30 #fluid_light-oil + 30 #fluid_water ← 20 #fluid_petroleum-gas]]

update_recipe({
    name = "light-oil-cracking", 
    ingredients = {
        { type = "fluid", name = "light-oil",       amount = 36 },
        { type = "fluid", name = "steam",           amount = 36 },
    },
    results = {
        { type = "fluid", name = "petroleum-gas",   amount = 24 },        
        { type = "fluid", name = "kr-hydrogen",     amount = 12 },
    },
    main_product = "petroleum-gas",
    icon = fx .. "/fluid/light-oil-cracking.png",    
    allow_productivity = true,      
    energy = 2, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[#### #recipe_solid-fuel-from-petroleum-gas
AAI: ⏳1.0s, 📚200/1000 → 20 #fluid_petroleum-gas ← 1 #item_solid-fuel]]

update_recipe({
    name = "solid-fuel-from-petroleum-gas", 
    ingredients = {
        { type = "fluid", name = "petroleum-gas",   amount = 36 },
        { type = "fluid", name = "steam",           amount = 12 },
    },
    results = {
        { type = "item",  name = "solid-fuel",      amount = 2 },        
    },
    icon = fx .. "/solid-fuel-from-petroleum-gas.png",
    allow_productivity = true,      
    energy = 1.5, 
    stack_size = 200,
    rocket_capacity = 1000,
})

--[[#### #recipe_solid-fuel-from-light-oil
AAI: ⏳1.0s, 📚200/1000 → 10 #fluid_light-oil ← 1 #item_solid-fuel]]

update_recipe({
    name = "recipe_solid-fuel-from-light-oil", 
    ingredients = {
        { type = "fluid", name = "light-oil",       amount = 24 },
        { type = "fluid", name = "water",           amount = 12 },
    },
    results = {
        { type = "item",  name = "solid-fuel",      amount = 2 },        
    },
    icon = fx .. "/solid-fuel-from-light-oil.png",
    allow_productivity = true,      
    energy = 1.0, 
    stack_size = 200,
    rocket_capacity = 1000,
})

--[[#### #recipe_solid-fuel-from-heavy-oil
AAI: ⏳1.0s, 📚200/1000 → 20 #fluid_heavy-oil ← 1 #item_solid-fuel]]

update_recipe({
    name = "recipe_solid-fuel-from-heavy-oil", 
    ingredients = {
        { type = "fluid", name = "heavy-oil",       amount = 36 },
    },
    results = {
        { type = "item",  name = "solid-fuel",      amount = 2 },        
        { type = "fluid", name = "kr-dirty-water",  amount = 12 },        
    },
    main_product = "solid-fuel",
    icon = fx .. "/solid-fuel-from-heavy-oil.png",
    allow_productivity = true,      
    energy = 1.0, 
    stack_size = 200,
    rocket_capacity = 1000,
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[#### #recipe_lubricant #tech_lubricant  
AAI: ⏳1.0s → 10 #fluid_heavy-oil ← 10 #fluid_lubricant]]

update_recipe({
    name = "lubricant", 
    ingredients = {
        { type = "fluid", name = "heavy-oil",       amount = 48 },
        { type = "fluid", name = "kr-hydrogen",     amount = 24 },
        { type = "item",  name = "kr-quartz",       amount = 2 },
    },
    results = {
        { type = "fluid", name = "lubricant",   amount = 24 },        
        { type = "fluid", name = "kr-hydrogen",     amount = 12 },
    },
    main_product = "lubricant",
    icon = fx .. "/fluid/lubricant.png",
    allow_productivity = true,      
    energy = 2, 
})


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[AAI: #recipe_sulfur ⏳1.0s, 📚200/1000 
→ 30 #fluid_water + 30 #fluid_petroleum-gas ← 2 #item_sulfur]]

update_recipe({
    name = "sulfur", 
    ingredients = {
        { type = "fluid", name = "petroleum-gas",   amount = 48 },
        { type = "fluid", name = "steam",           amount = 24 },
        { type = "item",  name = "kr-quartz",       amount = 2 },
    },
    results = {
        { type = "item",  name = "sulfur",          amount = 3 },
        { type = "fluid", name = "kr-dirty-water",  amount = 24 },        
        { type = "fluid", name = "kr-hydrogen",     amount = 12 },
    },
    icon = fx .. "/sulfur.png",    
    main_product = "sulfur",
    allow_productivity = true,      
    energy = 1.5, 
})

--[[AAI: #recipe_sulfuric-acid ⏳1.0s
→ 1 #item_iron-plate + 5 #item_sulfur + 100 #fluid_water ← 50 #fluid_sulfuric-acid]]

update_recipe({
    name = "sulfuric-acid", 
    ingredients = {
        { type = "item",  name = "sulfur",          amount = 6 },
        { type = "item",  name = "iron-plate",      amount = 1 },        
        { type = "item",  name = "kr-quartz",       amount = 1 },
        { type = "fluid", name = "steam",           amount = 84 },
    },
    results = {
        { type = "fluid", name = "sulfuric-acid",   amount = 24 },                
        { type = "fluid",  name = "kr-dirty-water",  amount = 3 },
    },
    icon = fx .. "/fluid/sulfuric-acid.png",    
    main_product = "sulfuric-acid",
    allow_productivity = true,      
    energy = 1.5, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[AAI: #recipe_plastic-bar ⏳1.0s, 📚200/2000 
→ 1 #item_coal + 20 #fluid_petroleum-gas ← 2 #item_plastic-bar]]

update_recipe({
    name = "plastic-bar", 
    ingredients = {
        { type = "item",  name = "rx-crushed-coal", amount = 1 },
        { type = "fluid", name = "petroleum-gas",   amount = 36 },        
        { type = "fluid", name = "steam",           amount = 24 },
    },
    results = {
        { type = "item",  name = "plastic-bar",     amount = 3 },        
        { type = "fluid", name = "kr-dirty-water",  amount = 12 },
    },
    icon = fx .. "/plastic-bar.png",    
    main_product = "plastic-bar",
    allow_productivity = true,      
    energy = 1.5, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[K2: #recipe_kr-ammonia ⏳5.0s 
→ 50 #fluid_kr-hydrogen + 50 #fluid_kr-nitrogen ← 50 #fluid_kr-ammonia]]

update_recipe({
    name = "kr-ammonia", 
    ingredients = {
        { type = "fluid", name = "kr-hydrogen",     amount = 84 },
        { type = "fluid", name = "kr-nitrogen",     amount = 24 },        
        { type = "item",  name = "iron-plate",      amount = 1 },
    },
    results = {
        { type = "fluid", name = "kr-ammonia",      amount = 48 },
        { type = "fluid", name = "kr-hydrogen",     amount = 12 },
    },
    icon = k2_fx .. "/fluids/ammonia.png",    
    main_product = "kr-ammonia",
    allow_productivity = true,      
    energy = 4.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[K2: #recipe_kr-nitric-acid⏳5.0s 
→ 50 #fluid_kr-ammonia + 1 #item_kr-rare-metals + 25 #fluid_kr-mineral-water 
← 50 #fluid_kr-nitric-acid]]

update_recipe({
    name = "kr-nitric-acid", 
    ingredients = {
        { type = "fluid", name = "kr-ammonia",          amount = 48 },
        { type = "fluid", name = "kr-mineral-water",    amount = 48 },        
        { type = "item",  name = "kr-rare-metals",      amount = 2 },
    },
    results = {
        { type = "fluid", name = "kr-nitric-acid",      amount = 36 },
        { type = "fluid", name = "kr-dirty-water",      amount = 12 },
    },
    icon = k2_fx .. "/fluids/nitric-acid.png",
    main_product = "kr-nitric-acid",
    allow_productivity = true,      
    energy = 4.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[K2: #recipe_kr-hydrogen-chloride ⏳5.0s 
→ 50 #fluid_kr-chlorine + 50 #fluid_kr-hydrogen ← 50 #fluid_kr-hydrogen-chloride]]

update_recipe({
    name = "kr-hydrogen-chloride", 
    ingredients = {
        { type = "fluid", name = "kr-chlorine",         amount = 36 },
        { type = "fluid", name = "kr-hydrogen",         amount = 48 },        
        { type = "item",  name = "kr-quartz",           amount = 2 },
    },
    results = {
        { type = "fluid", name = "kr-hydrogen-chloride",    amount = 36 },
        { type = "fluid", name = "kr-hydrogen",             amount = 12 },
    },
    icon = k2_fx .. "/fluids/hydrogen-chloride.png",
    main_product = "kr-hydrogen-chloride",
    allow_productivity = true,      
    energy = 3.0, 
})

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

--[[AAI: #recipe_battery ⏳4.0s, 📚200/400 
→ 1 #item_iron-plate + 1 #item_copper-plate + 20 #fluid_sulfuric-acid ← 1 #item_battery]]

update_recipe({
    name = "battery", 
    ingredients = {
        { type = "item",  name = "copper-plate",        amount = 3 },
        { type = "item",  name = "iron-plate",          amount = 3 },
        { type = "item",  name = "rx-bakelite",         amount = 6 },
        { type = "fluid", name = "sulfuric-acid",       amount = 48 },
    },
    results = {
        { type = "item",  name = "battery",             amount = 2 },
        { type = "fluid", name = "kr-dirty-water",      amount = 12 },
    },
    icon = fx .. "/battery.png",
    main_product = "battery",
    allow_productivity = true,      
    energy = 3.6,
    rocket_capacity = 800, 
})


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

-- #tech_kr-enriched-ores

--[[#### K2: #recipe_kr-enriched-iron : ⏳3s, 📚200/1000  
→ 9 #item_iron-ore + 3 #fluid_sulfuric-acid + 25 #fluid_water
← 6 #item_kr-enriched-iron + 25 #fluid_kr-dirty-water]]

update_recipe({
    name = "kr-enriched-iron", 
    ingredients = {
        { type = "item",  name = "rx-crushed-iron-ore",     amount = 8 },
        { type = "fluid", name = "kr-hydrogen-chloride",    amount = 36 },
        { type = "fluid", name = "sulfuric-acid",           amount = 24 },
    },
    results = {
        { type = "item",  name = "kr-enriched-iron",        amount = 6 },
        { type = "fluid", name = "kr-dirty-water",          amount = 48 },
        { type = "fluid", name = "kr-hydrogen",             amount = 12 },
    },
    icon = k2_fx .. "/items/enriched-iron.png",
    main_product = "kr-enriched-iron",
    allow_productivity = true,      
    energy = 3.0, 
})

--[[#### K2: #recipe_kr-enriched-copper : ⏳3s, 📚200/1000  
→ 9 #item_copper-ore + 6 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water]]

update_recipe({
    name = "kr-enriched-copper", 
    ingredients = {
        { type = "item",  name = "rx-crushed-copper-ore",   amount = 8 },
        { type = "fluid", name = "kr-nitric-acid",          amount = 36 },
        { type = "fluid", name = "kr-ammonia",              amount = 24 },
    },
    results = {
        { type = "item",  name = "kr-enriched-copper",      amount = 6 },
        { type = "fluid", name = "kr-dirty-water",          amount = 48 },
        { type = "fluid", name = "kr-nitrogen",             amount = 12 },
    },
    icon = k2_fx .. "/items/enriched-copper.png",
    main_product = "kr-enriched-copper", 
    allow_productivity = true,      
    energy = 3.0, 
})

--[[#### K2: #recipe_kr-enriched-rare-metals : ⏳3s, 📚200/1000  
→ 9 #item_kr-rare-metal-ore + 10 #fluid_kr-hydrogen-chloride + 25 #fluid_water
← 6 #item_kr-enriched-rare-metals + 25 #fluid_kr-dirty-water]]

update_recipe({
    name = "kr-enriched-rare-metals", 
    ingredients = {
        { type = "item",  name = "rx-crushed-rare-metal-ore",   amount = 8 },
        { type = "fluid", name = "kr-hydrogen-chloride",        amount = 36 },
        { type = "fluid", name = "kr-nitric-acid",              amount = 24 },
    },
    results = {
        { type = "item",  name = "kr-enriched-rare-metals",     amount = 6 },
        { type = "fluid", name = "kr-dirty-water",              amount = 48 },
        { type = "fluid", name = "kr-chlorine",                 amount = 12 },
    },
    icon = k2_fx .. "/items/enriched-rare-metals.png",
    main_product = "kr-enriched-rare-metals", 
    allow_productivity = true,      
    energy = 3.0, 
})


--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
