-- file: /prototype/kr-amospheric-condenser.lua

--[[Prototypes and recipes produced in #kr-electrolysis-plant.
`categories = { "kr-atmosphere-condensation" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

-- local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

-- ============================= Stage 1/2: =============================
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "fluid",
    name = "rx-noble-gases",
    icon = rx_fx .. "/fluid/rx-noble-gases.png",
    icon_size = 128,
    subgroup = "fluid",
    default_temperature = 20,
    heat_capacity = "0.1kJ",
    base_color = { r = 0.32, g = 0.16, b = 0.64 },
    flow_color = { r = 0.32, g = 0.16, b = 0.64 },
    auto_barrel = true,
  }
})
match_k2_sorting("rx-noble-gases", "kr-hydrogen", "-b[noble]")


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    categories = {"kr-atmosphere-condensation"},
    name = "rx-condense-atmosphere",
    ingredients = {
      { type = "item", name = "rx-filter-gas", amount = 1 }
    },
    results = {
      -- Output 1: Nitrogen (Maps to Fluid Box 1)
      { type = "fluid", name = "kr-nitrogen", amount = 240 },
      -- Output 2: Oxygen (Maps to Fluid Box 2)
      { type = "fluid", name = "oxygen", amount = 60 },
      -- Output 3: Noble-Gases (Maps to Fluid Box 3)
      { type = "fluid", name = "rx-noble-gases", amount = 3 },
      -- Filter durability check
      { type = "item",  name = "rx-filter-gas", amount = 1, independent_probability = 0.50 },
      { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.40 },
      -- 10% that filter is destroyed
    },
    icon = rx_fx .. "/recipe/rx-condense-atmosphere.png",
    icon_size = 128,
    item_group = "intermediate-product",
    energy_required = 18.0,
    enabled = true,
  }
})


-- ============================ End of File: ============================

