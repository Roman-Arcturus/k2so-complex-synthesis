-- File: prototypes/rx-greenhouse.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-advanced-seed-germination",
    categories = { "kr-growing" },
    enabled = true,                     -- Active for validation tests
    energy_required = 32.0,             -- long growing of sappling
    ingredients = {
      { type = "item", name = "rx-wood-chips", amount = 16 },
      { type = "item", name = "kr-sand", amount = 8 },
      { type = "fluid", name = "water", amount = 160 },
    },
    results = {
      { type = "item", name = "tree-seed", amount = 8 },
    },
    stack_size = 200,
    weight = 0.25, 
    default_request_amount = 50,
    main_product = "tree-seed",
    allow_productivity = false,         -- Disabled on seeds to prevent loop loops
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-optimized-wood-growth",
    categories = { "kr-growing" },
    icon = k2_assets .. "/icons/decorations/tree-09.png",
    enabled = true,                     -- Kept unlocked for early validation tests
    energy_required = 128.0,
    ingredients = {
      { type = "item", name = "tree-seed", amount = 8 },
      { type = "item", name = "kr-sand", amount = 32 },
      { type = "fluid", name = "water", amount = 640 },
    },
    results = {
      { type = "item", name = "wood", amount = 32 },
    },
    main_product = "wood",
    allow_productivity = true,          
    allow_decomposition = false,
  }
})

-- ============================ End of file =============================
