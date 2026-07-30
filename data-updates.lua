--[[=============================================================
File: /data-updates.lua
This file defines unlocking technologies for the new prototypes

technology["kr-enriched-ores"] unlock recipes:
    rx-enriched-steel-mix
    rx-steel-from-enriched-mix    

===============================================================]]

-- Exit immediately if neither version of Krastorio 2 is present
--if not mods["Krastorio2-spaced-out"] and not mods["Krastorio2"] then return end
if not mods["Krastorio2"] then return end

-- ==============================================================
-- Enriched Steel Mix and smelting steel from Enriched mix are
-- unlocked by Krastorio2 tech kr-enriched-ores

--[[
local tech_enriched_ores = data.raw.technology["kr-enriched-ores"]
if tech_enriched_ores then
    table.insert(tech_enriched_ores.effects, {
        type = "unlock-recipe",
        recipe = "rx-enriched-steel-mix"
    })

    table.insert(tech_enriched_ores.effects, { 
        type = "unlock-recipe", 
        recipe = "rx-steel-from-enriched-mix" 
    })
end
]]
-- ==============================================================

