-- File: /data.lua 

--[[=================================================================
new entities:
  rx-wood-chips  / cr-crusher
  rx-pulverized-carbon  / cr-crusher

  rx-wood-pulp  / kr-filtration-plant
  rx-phenolic-resin  / chemical-plant

  rx-enriched-steel-mix  / disabled for now

new recipes through k2 internal lib:
  kr-crush-wood
  kr-crush-coke

new recipes through extend({}) :
  rx-steel-from-enriched-mix
=================================================================]]

-- Exit immediately if neither version of Krastorio 2 is present
if not mods["Krastorio2"] then return end
-- if not mods["Krastorio2-spaced-out"] and not mods["Krastorio2"] then return end


local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary

-- ============================================================================
data:extend({
  {
    type = "item",
    name = "rx-wood-chips",
    icon = k2_assets .. "/icons/recipes/wood-with-fertilizer.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-b[wood-chips]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5 * kg, -- Densified for rocket and city-block road transport
  }
})
-- ============================================================================

-- ============================================================================
data:extend({
  {
    type = "item",
    name = "rx-pulverized-carbon",
    icon = k2_assets .. "/icons/recipes/coal-filtration.png",
    subgroup = "intermediate-product",
    order = "a[carbon]-a[pulverized]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5 * kg,
  }
})
-- ============================================================================

-- kr-crusher recipes require K2 internal lib
local crushing_lib = require("__Krastorio2__.prototypes.libraries.crushing")
if not crushing_lib and not crushing_lib.make_recipe then return end

-- Run Krastorio's native recipe generator for the target item.
-- This handles the recipe database entry AND binds the item mechanics safely.
crushing_lib.make_recipe(
  data.raw.item["wood"], {
    subgroup = "intermediate-product",
    order = "a[biomaterial]-b[wood-chips]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-wood-chips", amount = 2 },
    },
  }
)

crushing_lib.make_recipe(
  data.raw.item["coal"], {
    subgroup = "intermediate-product",
    order = "a[carbon]-a[pulverized]",
    energy_required = 2,
    results = {
        { type = "item", name = "rx-pulverized-carbon", amount = 2 },
    },
  }
)

local raw_recipe = data.raw["recipe"]["kr-crush-wood"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "wood", amount = 12 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-wood-chips", amount = 18 }
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

local raw_recipe = data.raw["recipe"]["kr-crush-coal"]
if raw_recipe then
    raw_recipe.ingredients = {
        { type = "item", name = "coal", amount = 12 }
    }
    raw_recipe.results = {
        { type = "item", name = "rx-pulverized-carbon", amount = 18 }
    }
    raw_recipe.allow_productivity = true
    raw_recipe.enabled = true
end

-- ============================================================================
-- ITEM DEFINITION: WOOD PULP.
-- Subgroup: Intermediates / Raw Material
-- ============================================================================
data:extend({
  {
    type = "item",
    name = "rx-wood-pulp", -- kr-filtration-plant
    icon = k2_assets .. "/icons/items/biomass-1.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-c[wood-pulp]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.25 * kg, -- Lightweight for high-volume city-block shipping
  }
})

-- ============================================================================
-- ITEM DEFINITION: Phenolic Resin (Bakelite). rx-phenolic-resin
data:extend({
  {
    type = "item",
    name = "rx-phenolic-resin", -- chemistry
    icon = k2_assets .. "/icons/items/black-reinforced-plate-kl.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-d[phenolic-resin]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5 * kg, 
  }
})
-- ============================================================================

-- ============================================================================
-- ============================================================================

--[[
-- ============================================================================
-- ITEM DEFINITION: Enriched Steel Mix. rx-enriched-steel-mix
-- Subgroup: Intermediates / Raw Material
-- ============================================================================
data:extend({
  {
    type = "item",
    name = "rx-enriched-steel-mix",
    icon = "__Krastorio2Assets__" .. "/icons/resources/rare-metal-ore.png", 
    subgroup = "raw-material",
    order = "z[steel]-c",
    stack_size = 200,
    default_request_amount = 50,
    weight = 1 * kg, 
  }
})

-- ============================================================================
-- STAGE 1: CHEMICAL PLANT (Creating the purified mix)
-- Rationale: Combining Enriched Ore, Flux, and Oxygen to create a high-grade compound.
-- Math: 6 Enriched Ore costs 9 Raw Ore.
-- ============================================================================
data:extend({
  {
    type = "recipe",
    name = "rx-enriched-steel-mix",
    categories = { "chemistry" }, 
    enabled = false,         
    energy_required = 12,
    ingredients = { 
      { type = "item", name = "kr-enriched-iron", amount = 6 }, -- Costs 9 Raw Iron Ore
      { type = "item", name = "kr-quartz", amount = 2 }, -- Flux introduced here to bind impurities
      { type = "item", name = "kr-coke", amount = 3 }, -- with oxygen regulates carbon composition
      { type = "fluid", name = "kr-oxygen", amount = 30 }, 
    },
    results = {
      { type = "item", name = "rx-enriched-steel-mix", amount = 6 }, -- 1-to-1 conversion
    },
    allow_productivity = true,
    allow_decomposition = false,
  }
})

-- ============================================================================
-- STAGE 2: FURNACE SMELTING (The actual melt)
-- Rationale: High-temperature blast processing to output pure Steel Plates.
-- Math: 6 Steel-Mix (worth 9 Raw Ore) yields 4.5 Steel Plates -> 9 / 4 = 2.5 Ore per Steel.
-- ============================================================================
data:extend({
  {
    type = "recipe",
    name = "rx-steel-from-enriched-mix",
    categories = { "smelting" },
    enabled = false,
    energy_required = 24,
    ingredients = {
      { type = "item", name = "rx-enriched-steel-mix", amount = 6 }, -- Worth 9 Raw Ore
      { type = "item", name = "kr-coke", amount = 2 },               -- Extra carbon/heat fuel
    },
    results = {
      { type = "item", name = "steel-plate", amount = 4 }, -- Yields 4 Steel Plates
    },
    allow_productivity = true,
    allow_decomposition = false,
  }
})

]]