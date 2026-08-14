-- File: prototypes/prot-chemical-plant.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-rx__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================

data:extend({
  {
    type = "item",
    name = "rx-guncotton",
    subgroup = "ammo",
    icon = rx_assets .. "/rx-guncotton.png", -- Mesh
    order = "a[wood]-z[guncotton]",
    stack_size = 200,
    weight = 0.5 * kg,
    default_request_amount = 50,    
  }
})

--[[
data:extend({
  {
    type = "item",
    name = "rx-rare-metals-gear",
    subgroup = "intermediate-product",
    icon = rx_assets .. "/rx-rare-metals-gear.png", 
    order = "a[kr-rare-metals]-b[gears]",
    stack_size = 200,
    weight = 1.5 * kg,
    default_request_amount = 50,
  }
})]]


-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================

data:extend({
  {
    type = "recipe",
    name = "rx-guncotton",
    categories = { "chemistry" },
    energy_required = 8,     
    ingredients = {
      { type = "fluid", name = "rx-wood-pulp", amount = 64 },
      { type = "fluid", name = "kr-nitric-acid", amount = 96 },
    },
    results = {
      { type = "item", name = "rx-guncotton", amount = 16 },
      { type = "fluid", name = "kr-dirty-water", amount = 128 },
    },
    main_product = "rx-guncotton",
    enabled = true,            -- for testing    
    allow_productivity = true, 
    allow_decomposition = false,         
    crafting_machine_tint = {
      primary = { r = 0.11, g = 0.77, b = 0.77, a = 0.77 },
    },       
  }
})

--[[
data:extend({
  {
    type = "recipe",
    name = "rx-rare-metals-gear",
    categories = { "chemistry" },
    energy_required = 2,     
    ingredients = {
      { type = "item", name = "kr-steel-gear-wheel", amount = 1 },
      { type = "item", name = "kr-rare-metals", amount = 1 },
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 16 },
      { type = "fluid", name = "kr-nitrogen", amount = 16 },
    },
    results = {
      { type = "item", name = "rx-rare-metals-gear", amount = 1 },
      { type = "fluid", name = "kr-dirty-water", amount = 32 },
    },

    main_product = "rx-rare-metals-gear",
    enabled = true, 
    allow_productivity = true, 
    allow_decomposition = false,         
    crafting_machine_tint = {
      primary = { r = 0.11, g = 0.33, b = 0.77, a = 0.77 },
    },       
  }
})
  ]]

-- ============================ End of file =============================

