-- File: prototypes/rx-crushing.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

-- kr-crusher recipes require K2 internal lib to define
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")
if not crushing_lib and not crushing_lib.make_recipe then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/3: ============================= 
-- ========================== Define new items ==========================

data:extend({
  {
    type = "item",
    name = "rx-crushed-wood",
    icon = rx_assets .. "/rx-crushed-wood.png",
    subgroup = "intermediate-product",
    order = "a[biomaterial]-b[wood-chips]",
    stack_size = 200,
    weight = 0.25 * kg, 
    default_request_amount = 50,    
  }
})

data:extend({
  {
    type = "item",
    name = "rx-crushed-coal",
    --icon = rx_assets .. "/rx-crushed-coal.png",
    icon = k2_assets .. "/icons/items/imersite-1-light.png",
    subgroup = "intermediate-product",
    order = "a[carbon]-a[pulverized]",
    stack_size = 200,
    weight = 0.5 * kg,
    default_request_amount = 50,    
  }
})

-- ============================= Stage 2/3: ============================= 
-- ===== Register basic materials as usable input for kr-crusher ========

crushing_lib.make_recipe(
  data.raw.item["wood"], {
    subgroup = "intermediate-product",
    order = "a[wood]-b[wood-chips]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-wood", amount = 2 },
    },
  }
)

crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    order = "a[coal]-a[crushed]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-crushed-coal", amount = 2 },
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
        { type = "item", name = "rx-crushed-wood", amount = 24 }
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
        { type = "item", name = "rx-crushed-coal", amount = 18 },
        { type = "item", name = "kr-sand", amount = 6 },
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

-- ============================ End of file =============================
