-- File: prototypes/rx-filtration.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons/"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "item",
    name = "rx-wood-pulp", -- kr-filtration-plant
    -- icon = k2_assets .. "/icons/items/biomass-1.png", 
    icon = rx_assets .. "rx-wood-pulp.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-c[wood-pulp]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.25, -- Lightweight for high-volume city-block shipping
  }
})

-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-wood-pulp-filtration",
    categories = { "kr-fluid-filtration" }, -- K2 filtration plant category
    enabled = true, -- Temporary set to true for immediate ingame testing
    energy_required = 6, -- Washing and spinning duration
    ingredients = {
      { type = "item", name = "rx-wood-chips", amount = 18 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "fluid", name = "kr-dirty-water", amount = 40 },
    },
    main_product = "rx-wood-pulp",     -- Tells the UI to prioritize the pulp icon
    allow_productivity = true,         -- Enables your compounding yield strategy
    allow_decomposition = false,
  }
})

-- ============================ End of file =============================
