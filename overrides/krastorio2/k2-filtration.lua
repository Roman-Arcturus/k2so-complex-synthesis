-- File: /overrides/krastorio2/k2-smelting-tier1.lua

local k2_assets = "__Krastorio2Assets__" -- K2 graphics
local mod_name = "__k2so-complex-synthesis__"
local rx_assets = mod_name .. "/graphics/icons"

local update_recipe = require("rx-util").update_recipe



-- ======================== Basic Ingredients: ==========================


update_recipe({
    name = "kr-quartz", 
    categories = { "kr-fluid-filtration" }, 
    allow_productivity = true,  
    ingredients = {
        { type = "item", name = "kr-sand", amount = 12 }, -- 10
        { type = "fluid", name = "water", amount = 72 }, -- 10
    },
    results = {
        { type = "item", name = "kr-quartz", amount = 6 },
        { type = "fluid", name = "kr-dirty-water", amount = 60 }, 
        -- needs to be stacked or burned until kr-enriched-minerals tech is unlocked
    },
    energy = 6.2, --⏳6.2s, 🧮 0.2 * (12 + 7.2 + 6 + 6)
})
