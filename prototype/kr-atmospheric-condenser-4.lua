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
    name = "rx-argon",
    icon = rx_fx .. "/fluid/rx-argon.png",
    icon_size = 128,
    subgroup = "fluid",
    default_temperature = 20,
    heat_capacity = "0.1kJ",
    base_color = { r = 0.32, g = 0.16, b = 0.64 },
    flow_color = { r = 0.32, g = 0.16, b = 0.64 },
    auto_barrel = true,
  }
})
match_k2_sorting("rx-argon", "kr-nitrogen", "-b")


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    categories = {"kr-atmosphere-condensation"},
    name = "rx-gas-condensation",
    ingredients = {
      { type = "item", name = "rx-filter-gas", amount = 1 }
    },
    results = {
      -- Output 1: Nitrogen (Maps to Fluid Box 1)
      { type = "fluid", name = "kr-nitrogen", amount = 240 },
      -- Output 2: Oxygen (Maps to Fluid Box 2)
      { type = "fluid", name = "oxygen", amount = 60 },
      -- Output 3: Argon (Maps to Fluid Box 3)
      { type = "fluid", name = "rx-argon", amount = 6 },
      -- Filter durability check
      { type = "item",  name = "rx-filter-gas", amount = 1, independent_probability = 0.50 },
      { type = "item",  name = "rx-filter-gas-used", amount = 1, independent_probability = 0.40 },
      -- 10% that filter is destroyed
    },
    icon = rx_fx .. "/recipe/rx-gas-condensation.png",
    icon_size = 128,
    item_group = "intermediate-product",
    energy_required = 18.0,
    enabled = true,
  }
})

data:extend({
  {
    type = "recipe",
    categories = { "rx-fluid-synthesis" },
    name = "rx-sulfuric-acid-nitrosyl",
    ingredients = {
      { type = "fluid", name = "kr-nitrogen", 	amount = 200 },
      { type = "fluid", name = "kr-oxygen", 	  amount = 100 },
      -- { type = "fluid", name = "kr-hydrogen", 	amount = 100 },
      { type = "item",  name = "sulfur", 			  amount = 4 },			
    },
    results = {
      { type = "fluid", name = "sulfuric-acid", amount = 250 },
    },
    crafting_machine_tint = {
      primary = { r = 0.85, g = 0.75, b = 0.20, a = 1.0 },
      secondary = { r = 0.30, g = 0.50, b = 0.30, a = 1.0 },
    },
    energy_required = 4.0,
    enabled = true,
    icon = rx_fx .. "/recipe/rx-sulfuric-acid-nitrosyl.png",
    icon_size = 128,

    --item_group = "intermediate-product",
    subgroup = "fluid-recipes",
    -- order = "a[fluid]-b[sulfuric-acid-nitrosyl]"

    allow_productivity = true,         
    allow_decomposition = false,		
  }
})
match_k2_sorting("rx-sulfuric-acid-nitrosyl", "sulfuric-acid", "-b[nitrosyl]")


-- ============================ End of File: ============================

