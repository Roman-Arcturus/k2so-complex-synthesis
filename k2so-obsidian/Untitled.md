file: `/data.lua`
```lua
data:extend({
  {
    type = "recipe-category",
    name = "rx-fluid-synthesis", -- multifluid chemical plant mode
  }
})
```

file: `/data-updates.lua`
```lua
-- redefining the facilities: kr-filtration-plant and kr-atmospheric-condenser
require("prototype.k2-facility-update")

```

file: `/prototype/k2-facility-update`
```lua
local function rx_atmosphere_condensation(facility)
-- ...
end

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

local facility_condenser = data.raw["assembling-machine"]["kr-atmospheric-condenser"]

if facility_condenser then  
  rx_atmosphere_condensation(facility_condenser)
  rx_condenser_as_plant(facility_condenser)
end

```

I didn't add a new recipe that uses `kr-atmospheric-condenser` in `rx-fluid-synthesis` mode yet. Just added this possibility.

However calling `rx_condenser_as_plant(facility_condenser)` makes or recipe for atmosphere condensation again unavailable / red.

