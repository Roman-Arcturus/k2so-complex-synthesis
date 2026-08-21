-- File: prototype/kr-crusher.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

-- local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

-- kr-crusher recipes require K2 internal lib to define
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")
if not crushing_lib and not crushing_lib.make_recipe then return end

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"


-- ============================= Stage 1/2: ============================= 
-- ========================== Define new item ===========================


data:extend({
  {
    type = "item",
    name = "rx-crushed-iron-ore",
    icon = rx_fx .. "/item/rx-crushed-iron-ore.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-iron-ore", "iron-ore", "-b[crushed]")

data:extend({
  {
    type = "item",
    name = "rx-crushed-copper-ore",
    icon = rx_fx .. "/item/rx-crushed-copper-ore.png",
    icon_size = 128,    
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-copper-ore", "copper-ore", "-b[crushed]")

data:extend({
  {
    type = "item",
    name = "rx-crushed-rare-metal-ore",
    icon = rx_fx .. "/item/rx-crushed-rare-metal-ore.png",
    icon_size = 128,    
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-rare-metal-ore", "kr-rare-metal-ore", "-b[crushed]")

data:extend({
  {
    type = "item",
    name = "rx-crushed-uranium-ore",
    icon = rx_fx .. "/item/rx-crushed-uranium-ore.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 1.25 * kg, 
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-uranium-ore", "uranium-ore", "-b[crushed]")

data:extend({
  {
    type = "item",
    name = "rx-crushed-coal",
    icon = rx_fx .. "/item/rx-crushed-coal.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-coal", "coal", "-b[crushed]")

data:extend({
  {
    type = "item",
    name = "rx-crushed-wood",
    icon = rx_fx .. "/item/rx-crushed-wood.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.5 * kg, 
    default_request_amount = 50,    
  }
})
match_k2_sorting("rx-crushed-wood", "wood", "-b[crushed]")

-- ============================= Stage 2/2: ============================= 
-- ========== Make recipe using Krastorio2 internal library =============

crushing_lib.make_recipe(
  data.raw.item["iron-ore"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 6 }
    },
    results = {
        { type = "item", name = "rx-crushed-iron-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    },
    main_result = "rx-crushed-iron-ore",
    allow_productivity = true,
    enabled = true,
  }
)

crushing_lib.make_recipe(
  data.raw.item["copper-ore"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 6 }
    },
    results = {
        { type = "item", name = "rx-crushed-copper-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    },
    main_result = "rx-crushed-copper-ore",
    allow_productivity = true,
    enabled = true,
  }
)

crushing_lib.make_recipe(
  data.raw.item["kr-rare-metal-ore"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "kr-rare-metal-ore", amount = 6 }
    },
    results = {
        { type = "item", name = "rx-crushed-rare-metal-ore", amount = 9 },
        { type = "item", name = "rx-crushed-copper-ore", amount = 3 },
        { type = "item", name = "kr-sand", amount = 3 },
    },
    main_result = "rx-crushed-rare-metal-ore",
    allow_productivity = true,
    enabled = true,
  }
)

crushing_lib.make_recipe(
  data.raw.item["uranium-ore"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "uranium-ore", amount = 6 }
    },
    results = {
        { type = "item", name = "rx-crushed-uranium-ore", amount = 9 },
        { type = "item", name = "rx-crushed-iron-ore", amount = 3 },
        { type = "item", name = "kr-sand", amount = 3 },
    },
    main_result = "rx-crushed-uranium-ore",
    allow_productivity = true,
    enabled = true,
  }
)


crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-coal", amount = 6 }},
  }
)


crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "coal", amount = 6 }
    },
    results = {
        { type = "item", name = "rx-crushed-coal", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    },
    main_result = "rx-crushed-coal",
    allow_productivity = true,
    enabled = true,
  }
)

crushing_lib.make_recipe(
  data.raw.item["wood"], {
    subgroup = "intermediate-product",
    energy_required = 3,
    ingredients = {
      { type = "item", name = "wood", amount = 6 }
    },
    results = {
      { type = "item", name = "rx-crushed-wood", amount = 18 },
    },
    main_result = "rx-crushed-wood",
    allow_productivity = true,
    enabled = true,
  }
)


-- ============================= End of file ==============================
