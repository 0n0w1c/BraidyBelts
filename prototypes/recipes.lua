local conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")

local function clone_recipe(clone_name, original)
    local clone = table.deepcopy(data.raw["recipe"][original])
    clone.name = clone_name
    clone.result = clone_name
    return clone
end

local function adjust_recipe(recipe, ingredient)
    if conversion_recipe then
        recipe.ingredients = {{ingredient, 2}}
    end

    if recipe.expensive then
        for _, result in pairs(recipe.expensive.results) do
            if result.name then
                result.name = recipe.name
            end
        end
        if conversion_recipe then
            recipe.expensive.ingredients = {{ingredient, 2}}
        end
    end

    if recipe.normal then
        for _, result in pairs(recipe.normal.results) do
            if result.name then
                result.name = recipe.name
            end
        end
        if conversion_recipe then
            recipe.normal.ingredients = {{ingredient, 2}}
        end
    end
end

local braidy_belt = clone_recipe("braidy-belt", "underground-belt")
adjust_recipe(braidy_belt, "underground-belt")

local fast_braidy_belt = clone_recipe("fast-braidy-belt", "fast-underground-belt")
adjust_recipe(fast_braidy_belt, "fast-underground-belt")

local express_braidy_belt = clone_recipe("express-braidy-belt", "express-underground-belt")
adjust_recipe(express_braidy_belt, "express-underground-belt")

data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}

if mods["Krastorio2"] then
    local advanced_braidy_belt = clone_recipe("advanced-braidy-belt", "kr-advanced-underground-belt")
    adjust_recipe(advanced_braidy_belt, "kr-advanced-underground-belt")

    local superior_braidy_belt = clone_recipe("superior-braidy-belt", "kr-superior-underground-belt")
    adjust_recipe(superior_braidy_belt, "kr-superior-underground-belt")

    data:extend {advanced_braidy_belt, superior_braidy_belt}
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = clone_recipe("extreme-braidy-belt", "extreme-underground")
    adjust_recipe(extreme_braidy_belt, "extreme-underground")

    local ultimate_braidy_belt = clone_recipe("ultimate-braidy-belt", "ultimate-underground")
    adjust_recipe(ultimate_braidy_belt, "ultimate-underground")

    local high_speed_braidy_belt = clone_recipe("high-speed-braidy-belt", "high-speed-underground")
    adjust_recipe(high_speed_braidy_belt, "high-speed-underground")

    data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
end
