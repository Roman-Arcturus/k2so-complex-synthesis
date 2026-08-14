-- File: /data-updates.lua
-- This file redefines unlocking technologies 



if not mods["aai-industry"] then return end

local tech_unlock_map = {
    ["burner-mechanics"] = {
        "stone-tablet",
        "kr-crush-wood",
        "kr-crush-coal",        
        "rx-grow-tree-seed",
        "rx-grow-wood", 
    },
    --[[
    ["kr-crusher"] = {
        "kr-crush-wood",
        "kr-crush-coal",        
    },
    ["kr-greenhouse"] = {
        "rx-grow-tree-seed",
        "rx-grow-wood",    
    },  ]]  
    ["kr-fluids-chemistry"] = { -- #facility_kr-electrolysis-plant, #facility_chemical-plant
        "rx-wood-pulp",
        "rx-bakelite",
    },
    ["advanced-material-processing"] = { -- #facility_steel-furnace
        "kr-crush-iron-ore", 
        "kr-crush-copper-ore"
    },
    ["kr-rare-metal-processing"] = { 
        "kr-crush-kr-rare-metal-ore",
    },
    ["kr-advanced-chemistry"] = {
        "rx-guncotton",
    },
    ["uranium-mining"] = {
        "kr-crush-uranium-ore", 
    },

}

--[[
for tech_name, recipe_list in pairs(tech_unlock_map) do
    local tech = data.raw.technology[tech_name]
    if tech then
        tech.effects = tech.effects or {}
        for _, recipe in ipairs(recipe_list) do
            table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe })
        end
    end
end
]]

for tech_name, recipe_list in pairs(tech_unlock_map) do
    local tech = data.raw.technology[tech_name]
    if tech then
        tech.effects = tech.effects or {}
        for _, recipe_name in ipairs(recipe_list) do
            -- 1. Ensure recipe is hidden until unlocked
            if data.raw.recipe[recipe_name] then
                data.raw.recipe[recipe_name].enabled = false
            end
            -- 2. Attach unlock to technology
            table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe_name })
        end
    else
        log("RX ERROR: Tech prototype '" .. tech_name .. "' does not exist in data.raw!")
    end
end




--[[
-- Diagnostic: Log matching technology keys
for tech_name, _ in pairs(data.raw.technology) do
    if tech_name:find("crush") or tech_name:find("green") then
        log("RX TECH FOUND: " .. tech_name)
    end
end
]]


-- Helper function to safely strip recipe unlocks
local function remove_recipe_from_tech(tech_name, recipe_name)
    local tech = data.raw.technology[tech_name]
    if tech and tech.effects then
        for i = #tech.effects, 1, -1 do
            local effect = tech.effects[i]
            if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
                table.remove(tech.effects, i)
            end
        end
    end
end


local tech_removal_map = {
    ["electronics"] = {
        "stone-tablet",
    },

    --["automation"] = { "basic-circuit-board", },
}

for tech_name, recipe_list in pairs(tech_removal_map) do
    for _, recipe_name in ipairs(recipe_list) do
        remove_recipe_from_tech(tech_name, recipe_name)
    end
end
