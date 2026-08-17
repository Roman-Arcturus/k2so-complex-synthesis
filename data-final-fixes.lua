-- File: /data-final-fixes.lua 

local match_k2_sorting = require("rx-util").match_k2_sorting
-- Examples:
-- match_k2_sorting("rx-rare-metals-gear", "kr-steel-gear-wheel", "-b[rare-metals]")
-- match_k2_sorting("fluid_rx-liquid-waste", "kr-dirty-water", "-a[liquid-waste]")


-- Check if a mod is active via the global `mods` table.


if mods["aai-industry"] then
--[[    
	require("overrides.aai_chemical-plant")
	require("overrides.kr-electrolysis-plant")

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
]]    
end

if mods["aai-signal-transmission"] then
--    require("overrides.aai-industry.aai-signal-transmission")
end


if mods["Krastorio2"] then
	require("override.kr-electrolysis-plant")
	require("override.kr-filtration-plant")
	-- require("override.kr-atmospheric-condenser")
			
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
