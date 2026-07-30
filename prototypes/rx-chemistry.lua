-- File: prototypes/rx-chemistry.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "item",
    name = "rx-bakelite", 
    icon = k2_assets .. "/icons/items/black-reinforced-plate-kl.png", 
    subgroup = "intermediate-product",
    order = "a[biomaterial]-d[bakelite]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5, 
  }
})




-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================


data:extend({
  {
    type = "recipe",
    name = "rx-bakelite-synthesis",
    categories = { "chemistry" },      -- Standard chemical plant category
    enabled = true,                    -- Enabled for immediate runtime testing
    energy_required = 8,                
    ingredients = {
      { type = "item", name = "rx-wood-pulp", amount = 24 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "rx-bakelite", amount = 12 },
    },
    main_product = "rx-bakelite",
    allow_productivity = true,          -- Critical for compounding yield benefits
    allow_decomposition = false,
  }
})


-- ============================ End of file =============================

