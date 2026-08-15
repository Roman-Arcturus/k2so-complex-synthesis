-- File: /data-updates.lua
-- This file redefines unlocking technologies 



if not mods["aai-industry"] and not mods["Krastorio2"] then return end

-- tech map
local tech_unlock_map = {
    ["burner-mechanics"] = {
        "stone-tablet",
        "kr-crush-wood",
        "kr-crush-coal",        
        "rx-grow-tree-seed",
        "rx-grow-wood", 
    },
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
]]


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

-- remove unlocks from specific technologies
local tech_removal_map = {
    ["electronics"] = {
        "stone-tablet",
    },

    --["automation"] = { "basic-circuit-board", },
}

--[[
for tech_name, recipe_list in pairs(tech_removal_map) do
    for _, recipe_name in ipairs(recipe_list) do
        remove_recipe_from_tech(tech_name, recipe_name)
    end
end
]]

-- Change kr-filtration-plant to accept two fluids and output two fluids.
local filtration_plant = data.raw["assembling-machine"]["kr-filtration-plant"]

if filtration_plant then
	-- Set property on the entity itself, NOT inside fluid_boxes array
	filtration_plant.off_when_no_fluid_recipe = false

	filtration_plant.fluid_boxes = {
		-- Input 1 (Top / North)
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
					{
							flow_direction = "input",
							direction = defines.direction.north,
							position = { 0, -3 }
					}
			}
		},
		-- Input 2 (Left / West)
		{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
				volume = 1000,
				pipe_connections = {
						{
							flow_direction = "input",
							direction = defines.direction.west,
							position = { -3, 0 }
						}
				}
		},
		-- Output 1 (Bottom / South)
		{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
				volume = 1000,
				pipe_connections = {
					{
						flow_direction = "output",
						direction = defines.direction.south,
						position = { 0, 3 }
					}
				}
		},
		-- Output 2 (Right / East)
		{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
				volume = 1000,
				pipe_connections = {
					{
						flow_direction = "output",
						direction = defines.direction.east,
						position = { 3, 0 }
					}
				}
		}
	}
end