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
    name = "rx-nitro-cellulose",
    subgroup = "ammo",
    icon = rx_assets .. "/rx-guncotton-mesh.png", -- Mesh
    order = "a[biomaterial]-e[nitro-cellulose]",
    stack_size = 200,
    default_request_amount = 50,
    weight = 0.5 * kg,
  }
})

-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-synthesize-nitro-cellulose",
    categories = { "chemistry" },
    enabled = true,            -- for testing
    energy_required = 8,     
    -- subgroup = "ammo",           
    ingredients = {
      { type = "fluid", name = "rx-wood-pulp", amount = 64 },
      { type = "fluid", name = "kr-nitric-acid", amount = 96 },
    },
    results = {
      { type = "item", name = "rx-nitro-cellulose", amount = 16 },
    },
    --main_product = "rx-nitro-cellulose",
    allow_productivity = true,          
    --allow_decomposition = false,
    crafting_machine_tint = {
      primary = { r = 0.11, g = 0.77, b = 0.77, a = 0.77 },
    },       
  }
})


-- ============================ End of file =============================

