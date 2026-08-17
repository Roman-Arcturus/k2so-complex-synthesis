-- File: /data.lua

-- load new prototypes, heavily based on K2 machinery and recipes
if mods["Krastorio2"] then

  --[[ kr-atmospheric-condenser will have two modes.
  1st - the extraction of gases from atmosphere
  2nd - act as a multifluid chemical plant ]]
  data:extend({
    {
      type = "recipe-category",
      name = "rx-fluid-synthesis", -- multifluid chemical plant mode
    }
  })


  require("prototype.kr-crusher-1")
  require("prototype.kr-electrolysis-plant-2")
  require("prototype.chemical-plant-3")
  require("prototype.kr-filtration-plant-3")
  require("prototype.kr-atmospheric-condenser-4")
  require("prototype.advanced-furnace-5")

  --[[
  require("prototypes.prot_kr-greenhouse")


  require("prototypes.prot_chemical-plant")
  require("prototypes.prot_centrifuge")

]]

    -- require("prototypes.rx_logistics_belts")       -- Logistics / belts


    -- require("prototypes.prot_advanced-assembler-machine")




end


