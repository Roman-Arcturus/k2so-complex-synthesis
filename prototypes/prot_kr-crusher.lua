-- File: prototypes/prot_kr-crusher.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

-- kr-crusher recipes require K2 internal lib to define
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")
if not crushing_lib and not crushing_lib.make_recipe then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-rx__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/3: ============================= 
-- ========================== Define new items ==========================

data:extend({
  {
    type = "item",
    name = "rx-crushed-wood",
    icon = rx_assets .. "/rx-crushed-wood.png",
    subgroup = "intermediate-product",
    -- order = "a[wood]-b[wood-chips]",
    stack_size = 200,
    weight = 0.25 * kg, 
    default_request_amount = 50,    
  }
})

data:extend({
  {
    type = "item",
    name = "rx-crushed-coal",
    icon = rx_assets .. "/rx-crushed-coal.png",
    subgroup = "intermediate-product",
    order = "a[coal]-b[crushed]",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})

data:extend({
  {
    type = "item",
    name = "rx-crushed-iron-ore",
    icon = rx_assets .. "/rx-crushed-iron-ore.png",
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
    icon = rx_assets .. "/rx-crushed-copper-ore.png",
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
    icon = rx_assets .. "/rx-crushed-rare-metal-ore.png",
    subgroup = "intermediate-product",
    stack_size = 200,
    weight = 0.625 * kg,
    default_request_amount = 50,    
  }
})


-- ============================= Stage 2/3: ============================= 
-- ===== Register basic materials as usable input for kr-crusher ========

crushing_lib.make_recipe(
  data.raw.item["wood"], {
    subgroup = "intermediate-product",
    order = "a[wood]-b[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-wood", amount = 6 },
    },
  }
)

crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    order = "a[coal]-a[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-coal", amount = 6 },
    },
  }
)

crushing_lib.make_recipe(
  data.raw.item["iron-ore"], {
    subgroup = "intermediate-product",
    order = "a[iron-ore]-a[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-iron-ore", amount = 6 },
    },
  }
)

crushing_lib.make_recipe(
  data.raw.item["copper-ore"], {
    subgroup = "intermediate-product",
    order = "a[copper-ore]-a[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-copper-ore", amount = 6 },
    },
  }
)


crushing_lib.make_recipe(
  data.raw.item["kr-rare-metal-ore"], {
    subgroup = "intermediate-product",
    order = "a[kr-rare-metal-ore]-a[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-rare-metal-ore", amount = 6 },
    },
  }
)

-- ============================= Stage 3/3: =============================
-- ==== Update the newly created recipes with ingredients and amounts ===

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

local raw_recipe = data.raw["recipe"]["kr-crush-coal"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "coal", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-coal", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

local raw_recipe = data.raw["recipe"]["kr-crush-iron-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "iron-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-iron-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

local raw_recipe = data.raw["recipe"]["kr-crush-copper-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "copper-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-copper-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end


local raw_recipe = data.raw["recipe"]["kr-crush-kr-rare-metal-ore"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "kr-rare-metal-ore", amount = 6 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-crushed-rare-metal-ore", amount = 12 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

-- ============================ End of file =============================
