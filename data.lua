-- File: /data.lua 

-- load new prototypes, heavily based on K2 machinery and recipes
if mods["Krastorio2"] then
    require("prototypes.prot_kr-crusher")   
    require("prototypes.prot_kr-greenhouse")
    require("prototypes.prot_kr-electrolysis-plant")
    require("prototypes.prot_kr-filtration-plant")
    require("prototypes.prot_chemical-plant")
    require("prototypes.prot_centrifuge")

    -- require("prototypes.rx_logistics_belts")       -- Logistics / belts

    -- require("prototypes.rx-smelting-t3")     -- kr-greenhouse
    -- require("prototypes.prot_advanced-assembler-machine")    
end
