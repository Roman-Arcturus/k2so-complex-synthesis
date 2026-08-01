-- File: /overrides/krastorio2/k2-native-items.lua

local k2_assets = "__Krastorio2Assets__" -- K2 graphics
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe

-- ======================== Basic Ingredients: ==========================

-- Overwrite the entry-level assembler seed recipe
update_recipe({
    name = "tree-seed",
    categories = { "crafting" },
    allow_productivity = false,
    ingredients = {
        { type = "item", name = "rx-wood-chips", amount = 24 }, -- instead of wood logs
    },
    results = {
        { type = "item", name = "tree-seed", amount = 1 },
    },
    energy = 12.0, -- longer logs cutting and growing seeds
})

