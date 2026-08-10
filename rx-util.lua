-- File: /rex-util.lua

-- simple interface to access recipe properties
local function update_recipe(definition)
    local recipe = data.raw.recipe[definition.name]

    if not recipe then
        log("[k2so-complex-synthesis] Recipe not found: " .. definition.name)
        return
    end

    -- Enabled state
    if definition.enabled ~= nil then
        recipe.enabled = definition.enabled
    end

    if definition.categories ~= nil then
        recipe.categories = definition.categories
    end

    -- Productivity
    if definition.allow_productivity ~= nil then
        recipe.allow_productivity = definition.allow_productivity
    end

    -- Ingredients
    if definition.ingredients then
        recipe.ingredients = definition.ingredients
    end

    -- Icon handling
    if definition.icon then
        recipe.icon = definition.icon
        recipe.icon_size = definition.icon_size or 64
        recipe.icons = nil -- Prevents prototype errors if the base recipe used the 'icons' table
    end    

    if definition.results then
        recipe.results = definition.results
    else
        local l_amount = definition.result_amount or 1
        recipe.results = { { type = "item", name = definition.name, amount = l_amount } }
    end

    -- Crafting time
    if definition.energy then
        recipe.energy_required = definition.energy
    end

    -- Item properties (stack size and weight)
    if data.raw["item"][definition.name] then
        local item = data.raw["item"][definition.name]

        if definition.stack_size then
            item.stack_size = definition.stack_size
        end
        if definition.rocket_capacity then
            item.weight = 1000 / definition.rocket_capacity * kg
        end
    end
end

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


-- add reach bonus for mod testing
local function increase_reach(amount)
    if not game then return end
    
    -- Target only the standard player team
    local player_force = game.forces["player"]
    
    if player_force then
        player_force.character_reach_distance_bonus = 
            player_force.character_reach_distance_bonus + amount
        player_force.resource_reach_distance_bonus = 
            player_force.resource_reach_distance_bonus + amount
        player_force.character_build_distance_bonus = 
            player_force.character_build_distance_bonus + amount
        player_force.character_item_drop_distance_bonus = 
            player_force.character_item_drop_distance_bonus + amount
    end
end

return { 
    update_recipe = update_recipe, 
    match_k2_sorting = match_k2_sorting,
    increase_reach = increase_reach, 
}