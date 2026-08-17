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



-- ============================= Stage 1/3: ============================= 
-- ========================== Define new item ==========================


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


-- ============================= Stage 2/3: ============================= 
-- ===== Register basic materials as usable input for kr-crusher ========


crushing_lib.make_recipe(
  data.raw.item["iron-ore"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-iron-ore", amount = 6 }},
  }
)

crushing_lib.make_recipe(
  data.raw.item["copper-ore"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-copper-ore", amount = 6 }},
  }
)

crushing_lib.make_recipe(
  data.raw.item["kr-rare-metal-ore"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-rare-metal-ore", amount = 6 }},
  }
)

crushing_lib.make_recipe(
  data.raw.item["uranium-ore"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-uranium-ore", amount = 6 }},
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
  data.raw.item["wood"], {
    subgroup = "intermediate-product",
    energy_required = 2,
    results = {{ type = "item", name = "rx-crushed-wood", amount = 6 }},
  }
)

-- ============================= Stage 3/3: =============================
-- ==== Update the newly created recipes with ingredients and amounts ===


local raw_recipe = data.raw["recipe"]["kr-crush-iron-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "iron-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-iron-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.main_result = "rx-crushed-iron-ore"    
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-iron-ore", "iron-ore", "-b[crushed]")

--- --- ---

local raw_recipe = data.raw["recipe"]["kr-crush-copper-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "copper-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-copper-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.main_result = "rx-crushed-copper-ore"
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-copper-ore", "copper-ore", "-b[crushed]")

--- --- ---

local raw_recipe = data.raw["recipe"]["kr-crush-kr-rare-metal-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "kr-rare-metal-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-rare-metal-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.main_result = "rx-crushed-rare-metal-ore"
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-rare-metal-ore", "kr-rare-metal-ore", "-b[crushed]")

--- --- ---

local raw_recipe = data.raw["recipe"]["kr-crush-uranium-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "uranium-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-uranium-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.main_result = "rx-crushed-uranium-ore"
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-uranium-ore", "uranium-ore", "-b[crushed]")

--- --- ---

local raw_recipe = data.raw["recipe"]["kr-crush-coal"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "coal", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-coal", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.main_result = "rx-crushed-coal"
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-coal", "coal", "-b[crushed]")

--- --- ---

local raw_recipe = data.raw["recipe"]["kr-crush-wood"]
if raw_recipe then
  raw_recipe.ingredients = {
    { type = "item", name = "wood", amount = 6 }
  }
  raw_recipe.results = {
    { type = "item", name = "rx-crushed-wood", amount = 18 }
  }
  raw_recipe.allow_productivity = true
  raw_recipe.enabled = true
end
match_k2_sorting("rx-crushed-wood", "wood", "-b[crushed]")

-- ============================ End of file =============================
