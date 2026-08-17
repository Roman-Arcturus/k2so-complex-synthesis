-- File: prototype/chemical-plant.lua

--[[Prototypes and recipes produced in #industrial-furnace. 
`categories = { "chemistry" }`
Only #planet_Nauvis recipes up to #tech_space-science-pack.]]

-- New tech is based on Krastorio2 buildings & intermediaries
if not mods["Krastorio2"] then return end

local fx = "__base__/graphics/icons"
local k2_fx = "__Krastorio2Assets__" .. "/icons"
local rx_fx = "__k2so-rx__" .. "/graphics"

--local update_recipe = require("rx-util").update_recipe
local match_k2_sorting = require("rx-util").match_k2_sorting

-- ============================= Stage 1/1: ============================= 
-- ======================== Define new recipes: =========================


