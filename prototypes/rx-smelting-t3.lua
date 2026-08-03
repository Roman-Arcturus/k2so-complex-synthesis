-- File: prototypes/rx-smelting-t3.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-steel",
    categories = { "smelting" }, 
    ingredients = {
      { type = "item", name = "kr-enriched-iron", amount = 6 },
      { type = "item", name = "kr-coke", amount = 6 },
      { type = "item", name = "steel-plate", amount = 6 }, -- Seed Crystal, not consumed
      { type = "fluid", name = "kr-oxygen", amount = 36 },
    },
    results = {
      { type = "item", name = "steel-plate", amount = 12 }, -- Net + 6
      { type = "fluid", name = "kr-dirty-water", amount = 36 }
    },
    energy_required = 292, --🧮292.0s = 3.12 factor * 3 slow melt/cool * (6 + 6 + 6 + 3.6 + 12-6 + 3.6)
    main_product = "steel-plate",

    enabled = true,
    icon = rx_assets .. "/rx-purified-steel.png",
    icon_size = 64,
    subgroup = "raw-material",
    order = "a[steel]-b[enriched]",
    allow_productivity = true,         
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-glass",
    categories = { "smelting" }, 
    ingredients = { -- x3
      { type = "item", name = "kr-quartz", amount = 36 },
      { type = "item", name = "rx-crushed-coal", amount = 12 },
      { type = "item", name = "kr-glass", amount = 9 }, -- Seed Crystal, not consumed
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 72 },
    },-- 116.4 
    results = {
      { type = "item", name = "kr-glass", amount = 45 }, -- 12 + 3 (seed) 
      { type = "fluid", name = "kr-dirty-water", amount = 72 }
    },
    energy_required = 75.2, --🧮75.2s = 0.7 factor *(36+12+7.2+45+7.2)
    main_product = "kr-glass",

    enabled = true,
    icon = rx_assets .. "/rx-purified-glass.png",
    icon_size = 64,
    subgroup = "raw-material",
    order = "a[glass]-b[purified]",
    allow_productivity = true,         
    allow_decomposition = false,
  }
})

data:extend({
  {
    type = "recipe",
    name = "rx-smelt-silicon",
    categories = { "smelting" }, 
    ingredients = {
      { type = "item", name = "kr-quartz", amount = 18 },
      { type = "item", name = "rx-crushed-coal", amount = 6 },
      { type = "item", name = "kr-silicon", amount = 6 }, -- Seed Crystal, not consumed
      { type = "fluid", name = "kr-hydrogen-chloride", amount = 36 },
    },
    results = {
      { type = "item", name = "kr-silicon", amount = 24 }, -- net + 18
      { type = "fluid", name = "kr-dirty-water", amount = 36 }
    },
    energy_required = 99.4, --🧮99.4s = 0.6 factor * 3 slow melt/cool * (18 + 6 + 6 + 3.6 + 24-6 + 3.6)
    main_product = "kr-silicon",

    enabled = true,
    icon = rx_assets .. "/rx-purified-silicon.png",    
    icon_size = 64,
    subgroup = "raw-material",
    order = "a[silicon]-b[purified]",
    allow_productivity = true,         
    allow_decomposition = false,
  }
})
