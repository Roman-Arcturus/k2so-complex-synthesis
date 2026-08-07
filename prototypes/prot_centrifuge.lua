-- File: prototypes/prot_centrifuge.lua

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local k2_assets = "__Krastorio2Assets__" -- K2 graphics, temporary
local mod_name = "__k2so-rx__"
local rx_assets = mod_name .. "/graphics/icons"

-- ============================= Stage 1/2: ============================= 
-- ========================= Define new items: ==========================



-- ============================= Stage 2/2: =============================
-- ======================== Define new recipes: =========================


data:extend({
{
  type = "recipe",
  name = "uranium-processing",
  categories = {"centrifuging"},
  energy_required = 6,
  ingredients = {
    { type = "item", name = "rx-crushed-uranium-ore", amount = 12 }, -- Replaces raw uranium-ore
  },
  results = {
    { type = "item", name = "uranium-235", amount = 1, probability = 0.007 },
    { type = "item", name = "uranium-238", amount = 1, probability = 0.993 },
  },
  main_product = "",
}




