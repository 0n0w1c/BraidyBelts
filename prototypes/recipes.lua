local conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")

-- expensive mode should be deprecated in 2.0
local function expensive_mode(recipe, ingredient)
    for _, result in pairs(recipe.expensive.results) do
        if result.name then
            result.name = recipe.name
        end
    end
    if conversion_recipe then
        recipe.expensive.ingredients = {{ingredient, 2}}
        recipe.expensive.category = nil
        recipe.expensive.always_show_made_in = false
        recipe.expensive.result_count = 2
        recipe.expensive.energy_required = 0.5
    end

    if recipe.normal then
        for _, result in pairs(recipe.normal.results) do
            if result.name then
                result.name = recipe.name
            end
        end
        if conversion_recipe then
            recipe.normal.ingredients = {{ingredient, 2}}
            recipe.normal.category = nil
            recipe.normal.always_show_made_in = false
            recipe.normal.result_count = 2
            recipe.normal.energy_required = 0.5
        end
    end
end

local function clone_recipe(clone_name, original)
    local clone = table.deepcopy(data.raw["recipe"][original])
    clone.name = clone_name
    clone.result = clone_name
    if conversion_recipe then
        clone.ingredients = {{original, 2}}
        clone.category = nil
        clone.always_show_made_in = false
        clone.result_count = 2
        clone.energy_required = 0.5
    end
    if clone.expensive then
        expensive_mode(clone, original)
    end
    return clone
end

local braidy_belt = clone_recipe("braidy-belt", "underground-belt")
local fast_braidy_belt = clone_recipe("fast-braidy-belt", "fast-underground-belt")
local express_braidy_belt = clone_recipe("express-braidy-belt", "express-underground-belt")
data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}

if mods["Krastorio2"] then
    local advanced_braidy_belt = clone_recipe("advanced-braidy-belt", "kr-advanced-underground-belt")
    local superior_braidy_belt = clone_recipe("superior-braidy-belt", "kr-superior-underground-belt")
    data:extend {advanced_braidy_belt, superior_braidy_belt}
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = clone_recipe("extreme-braidy-belt", "extreme-underground")
    local ultimate_braidy_belt = clone_recipe("ultimate-braidy-belt", "ultimate-underground")
    local high_speed_braidy_belt = clone_recipe("high-speed-braidy-belt", "high-speed-underground")
    data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
end

if mods["space-exploration"] then
    local space_braidy_belt = clone_recipe("space-braidy-belt", "se-space-underground-belt")
    data:extend {space_braidy_belt}
end
