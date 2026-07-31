-- File: prototypes/rx-filtration.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

--[[
data:extend({
  {
    type = "item",
    name = "rx-wood-pulp", 
    -- icon = k2_assets .. "/icons/items/biomass-1.png", 
    icon = rx_assets .. "/rx-wood-pulp.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-c[wood-pulp]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.25, 
  }
})
]]
data:extend({
  {
    type = "fluid",
    name = "rx-wood-pulp", 
    icon = rx_assets .. "/rx-wood-pulp.png", 
    icon_size = 64,
    subgroup = "fluid",
    order = "a[biomaterial]-c[wood-pulp]",
    default_temperature = 20,
    heat_capacity = "0.1kJ",
    base_color = { r = 0.45, g = 0.32, b = 0.18 }, -- Wood pulp brown
    flow_color = { r = 0.65, g = 0.50, b = 0.30 },
    auto_barrel = true,
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
    energy_required = 8, -- Washing and spinning duration
    ingredients = {
      { type = "item", name = "rx-wood-chips", amount = 48 },
      { type = "fluid", name = "water", amount = 144 }, -- 
    },
    results = {
      { type = "fluid", name = "rx-wood-pulp", amount = 162 },
    },
    main_product = "rx-wood-pulp",     -- Tells the UI to prioritize the pulp icon
    allow_productivity = true,         -- Enables your compounding yield strategy
    allow_decomposition = false,
  }
})

-- ============================ End of file =============================
