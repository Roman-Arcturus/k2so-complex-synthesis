-- File: /data-final-fixes.lua 

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
    require("overrides.krastorio2.k2-smelting-tier1")
    require("overrides.krastorio2.k2-smelting-tier2")
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
