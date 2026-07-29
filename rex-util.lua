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

return { update_recipe = update_recipe, increase_reach = increase_reach }