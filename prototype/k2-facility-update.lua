-- file: /prototype/k2-facility-update.lua

--[[
Modify Krastorio2 facilities (assembling-machines)
]]

if not mods["Krastorio2"] then return end

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"



-- Remove K2 recipes from kr-atmospheric-condenser
local k2_atmospheric_recipes = {
	"kr-nitrogen",
	"kr-oxygen",
	"kr-hydrogen",
}
for _, recipe_name in ipairs(k2_atmospheric_recipes) do
	if data.raw.recipe[recipe_name] then
		data.raw.recipe[recipe_name].enabled = false
		data.raw.recipe[recipe_name].hidden = true
		data.raw.recipe[recipe_name].hidden_in_factoriopedia = true
	end
end


-- === === === === === === === === === === === === === === === === === === === ===

--[[ facility: kr-filtration-plant
`K2`: one fluid input and one fluid output. Used for 4 variations of the same
recipe: filter kr-dirty-water into raw materials. Also used to wash sand+water in kr-quartz.
`RX`: changes this facility to accept two fluids and output two fluids. 
]]

local function rx_filtration_plant_multifluid(facility)
	-- Set property on the entity itself, NOT inside fluid_boxes array
	facility.off_when_no_fluid_recipe = false

	facility.fluid_boxes = {
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

local facility_filtration = data.raw["assembling-machine"]["kr-filtration-plant"]
if facility_filtration then rx_filtration_plant_multifluid(facility_filtration) end


-- === === === === === === === === === === === === === === === === === === === ===
-- facility: kr-atmospheric-condenser.
--`K2`: no inputs, 8 fluid outputs, 3 recipes to extract kr-oxygen, kr-hydrogen, kr-nitrogen from air on Nauvis.
--`RX`: will make it output kr-nitrogen, kr-oxygen and rx-argon at once using rx-filter-gas as consumable.

function rx_atmosphere_condensation(facility)
	facility.ingredient_count = 4

	-- Ensure crafting category is present
	--[[
	facility.crafting_categories = facility.crafting_categories or {}
	if not table.contains(facility.crafting_categories, "kr-atmosphere-condensation") then
			table.insert(facility.crafting_categories, "kr-atmosphere-condensation")
	end	
	]]

	facility.fluid_boxes = {
		-- Output 1: Primary Gas / Nitrogen (3 Pipe Connections: North & North-East)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.north, position = { -1, -2 } },
				{ flow_direction = "output", direction = defines.direction.north, position = { 1, -2 } },
				{ flow_direction = "output", direction = defines.direction.east,  position = { 2, -1 } }
			}
		},
		-- Output 2: Secondary Gas / Oxygen (3 Pipe Connections: South & South-West)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } },
				{ flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } },
				{ flow_direction = "output", direction = defines.direction.west,  position = { -2, 1 } }
			}
		},
		-- Output 3: Trace Gas / Argon (2 Pipe Connections: East & West)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } },
				{ flow_direction = "output", direction = defines.direction.west, position = { -2, -1 } }
			}
		}
	}
end

--[[ facility: kr-atmospheric-condenser.
transforming this facility into multi-fluid chemical-plant. 
Up to 5 fluids in, and up to 3 fluids out.]]
function rx_condenser_as_plant(facility)
	table.insert(facility.crafting_categories, "rx-fluid-synthesis")

	facility.fluid_boxes = {
		-- Input 1: Water / Primary Fluid (North - 2 Ports)
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } },
				{ flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } }
			}
		},
		-- Input 2: Nitrogen / Secondary Fluid (West - 2 Ports)
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "input", direction = defines.direction.west, position = { -2, -1 } },
				{ flow_direction = "input", direction = defines.direction.west, position = { -2, 1 } }
			}
		},
		-- Input 3: Oxygen / Tertiary Fluid (South-West - 1 Port)
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
					{ flow_direction = "input", direction = defines.direction.south, position = { -1, 2 } }
			}
		},
		-- Output 1: Primary Product / Sulfuric Acid (South-East - 1 Port)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } }
			}
		},
		-- Output 2: Byproducts / Waste Liquids (East - 2 Ports)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.east, position = { 2, -1 } },
				{ flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } }
			}
		}
	}
end

local function setup_unified_condenser(facility)
	facility.ingredient_count = 4

    -- 1. Ensure both recipe categories exist on the machine
    facility.crafting_categories = facility.crafting_categories or {}
    
    local required_categories = { "kr-atmosphere-condensation", "rx-fluid-synthesis" }
    for _, cat in ipairs(required_categories) do
        local has_cat = false
        for _, c in ipairs(facility.crafting_categories) do
            if c == cat then has_cat = true break end
        end
        if not has_cat then
            table.insert(facility.crafting_categories, cat)
        end
    end

    -- 2. Define 3 Input Boxes (for Synthesis) + 3 Output Boxes (for Fractionation)
    facility.fluid_boxes = {
        -- INPUT 1: North (2 Ports)
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } },
                { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } }
            }
        },
        -- INPUT 2: West-Top (1 Port)
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "input", direction = defines.direction.west, position = { -2, -1 } }
            }
        },
        -- INPUT 3: West-Bottom (1 Port)
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "input", direction = defines.direction.west, position = { -2, 1 } }
            }
        },
        -- OUTPUT 1: South (2 Ports)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } },
                { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } }
            }
        },
        -- OUTPUT 2: East-Top (1 Port)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.east, position = { 2, -1 } }
            }
        },
        -- OUTPUT 3: East-Bottom (1 Port)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } }
            }
        }
    }
end

function rx_redefine_condenser(in_facility)
	-- 1. DEDICATED FRACTIONATION CONDENSER (All 8 ports as Outputs across all 4 faces)
	in_facility.crafting_categories = { "kr-atmosphere-condensation" }
	in_facility.fluid_boxes = {
		-- Output 1: Nitrogen (North & East)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.north, position = { -1, -2 } },
				{ flow_direction = "output", direction = defines.direction.north, position = { 1, -2 } },
				{ flow_direction = "output", direction = defines.direction.east,  position = { 2, -1 } }
			}
		},
		-- Output 2: Oxygen (South & West)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } },
				{ flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } },
				{ flow_direction = "output", direction = defines.direction.west,  position = { -2, 1 } }
			}
		},
		-- Output 3: Argon (East & West)
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
			volume = 1000,
			pipe_connections = {
				{ flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } },
				{ flow_direction = "output", direction = defines.direction.west, position = { -2, -1 } }
			}
		}
	}

	-- 2. CLONE INTO SYNTHESIS FACILITY (Uses same graphics, reconfigured for Synthesis)
	local synthesis_plant = table.deepcopy(in_facility)
	synthesis_plant.name = "rx-fluid-synthesis-plant"
	synthesis_plant.minable.result = "rx-fluid-synthesis-plant"
	synthesis_plant.crafting_categories = { "rx-fluid-synthesis" }
	
	-- Assign 4 Inputs + 4 Outputs for complex chemical synthesis
	synthesis_plant.fluid_boxes = {
		-- Inputs
		{ 
			production_type = "input", 
			pipe_covers = pipecoverspictures(), 
			pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), 
			volume = 1000, 
			pipe_connections = {
				{ flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } }
			} 
		},
		{ production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } }} },
		{ production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.west, position = { -2, -1 } }} },
		{ production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.west, position = { -2, 1 } }} },
		-- Outputs
		{ production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } }} },
		{ production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } }} },
		{ production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.east, position = { 2, -1 } }} },
		{ production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } }} }
	}

	data:extend({ synthesis_plant })
end

local facility_condenser = data.raw["assembling-machine"]["kr-atmospheric-condenser"]
if facility_condenser then 	
	-- setup_unified_condenser(facility_condenser)

	--rx_redefine_condenser(facility_condenser)


	--rx_atmosphere_condensation(facility_condenser) 


end

-- --- --- ---

local condenser = data.raw["assembling-machine"]["kr-atmospheric-condenser"]
local condenser_item = data.raw["item"]["kr-atmospheric-condenser"]

if condenser and condenser_item then
    -- 1. RECONFIGURE ATMOSPHERIC CONDENSER (All 8 ports as Fractionation Outputs)
    condenser.crafting_categories = { "kr-atmosphere-condensation" }
    condenser.fluid_boxes = {
        -- Output 1: Nitrogen (North & East)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.north, position = { -1, -2 } },
                { flow_direction = "output", direction = defines.direction.north, position = { 1, -2 } },
                { flow_direction = "output", direction = defines.direction.east,  position = { 2, -1 } }
            }
        },
        -- Output 2: Oxygen (South & West)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } },
                { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } },
                { flow_direction = "output", direction = defines.direction.west,  position = { -2, 1 } }
            }
        },
        -- Output 3: Argon (East & West)
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } },
                { flow_direction = "output", direction = defines.direction.west, position = { -2, -1 } }
            }
        }
    }

    -- 2. CLONE ITEM PROTOTYPE
    local synthesis_item = table.deepcopy(condenser_item)
    synthesis_item.name = "rx-gas-synthesis-facility"
    synthesis_item.place_result = "rx-gas-synthesis-facility"

    -- 3. CLONE ENTITY PROTOTYPE
    local synthesis_plant = table.deepcopy(condenser)
    synthesis_plant.name = "rx-gas-synthesis-facility"
    synthesis_plant.minable.result = "rx-gas-synthesis-facility"
    synthesis_plant.crafting_categories = { "rx-fluid-synthesis" }
    
    synthesis_plant.fluid_boxes = {
        -- Inputs (4 Ports)
        { production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } }} },
        { production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } }} },
        { production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.west, position = { -2, -1 } }} },
        { production_type = "input", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "input", direction = defines.direction.west, position = { -2, 1 } }} },
        -- Outputs (4 Ports)
        { production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } }} },
        { production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } }} },
        { production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.east, position = { 2, -1 } }} },
        { production_type = "output", pipe_covers = pipecoverspictures(), pipe_picture = require("__Krastorio2__.prototypes.buildings.pipe-picture"), volume = 1000, pipe_connections = {{ flow_direction = "output", direction = defines.direction.east, position = { 2, 1 } }} }
    }

    data:extend({ synthesis_item, synthesis_plant })
end

