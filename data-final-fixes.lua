-- File: /data-final-fixes.lua 

-- Helper function to safely place an RX item directly after a K2 reference item
local function match_k2_sorting(rx_item_name, k2_reference_name, order_suffix)
    local rx_item = data.raw.item[rx_item_name] or data.raw.fluid[rx_item_name]
    local k2_item = data.raw.item[k2_reference_name] or data.raw.fluid[k2_reference_name]

    if rx_item and k2_item then
        -- Inherit the exact subgroup K2 (or a tweak mod) assigned to it
        rx_item.subgroup = k2_item.subgroup
        -- Append a unique sub-order key so RX sits cleanly right next to K2
        rx_item.order = k2_item.order .. (order_suffix or "-a[rx]")
    end
end

-- Examples:
-- match_k2_sorting("rx-rare-metals-gear", "kr-steel-gear-wheel", "-b[rare-metals]")
-- match_k2_sorting("fluid_rx-liquid-waste", "kr-dirty-water", "-a[liquid-waste]")


-- Check if a mod is active via the global `mods` table.
--[[
if mods["aai-industry"] then
    require("overrides.aai-industry.aai-items")
    require("overrides.aai-industry.aai-logistics")
    require("overrides.aai-industry.aai-combinators")
    require("overrides.aai-industry.aai-furnaces")
    require("overrides.aai-industry.aai-mining")
    require("overrides.aai-industry.aai-assembler-machines")
    require("overrides.aai-industry.aai-power-distribution")
    require("overrides.aai-industry.aai-power-generation")
    require("overrides.aai-industry.aai-buildings")
    require("overrides.aai-industry.aai-labs")
    require("overrides.aai-industry.aai-robotics")
    require("overrides.aai-industry.aai-military")
    require("overrides.aai-industry.aai-tiles")
end


if mods["aai-signal-transmission"] then
    require("overrides.aai-industry.aai-signal-transmission")
end
]]

if mods["Krastorio2"] then
    -- require("overrides.krastorio2.k2-native-items")   
    -- require("overrides.krastorio2.k2-smelting-t1")
    -- require("overrides.krastorio2.k2-smelting-t2")
    -- require("overrides.krastorio2.k2-filtration")    
    
      
    -- require("overrides.krastorio2.k2-intermediaries")
    -- require("overrides.krastorio2.k2-fluids") -- 
    -- require("overrides.krastorio2.k2-buildings")
    -- require("overrides.krastorio2.k2-science")
end

if mods["advanced-centrifuge"] then
--    require("overrides.advanced-centrifuge")
end
if mods["elevated-pipes"] then
--    require("overrides.elevated-pipes")
end
if mods["Lighted-Poles-Plus"] then
--    require("overrides.lighted-poles-plus")
end
if mods["Repair_Turret_2"] then
--    require("overrides.repair-turret-2")
end
if mods["Transport_Drones_Continued_Unofficial"] then
--    require("overrides.transport-drones-un")
end
