local conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")

local equivalents = {
    ["underground-belt"] = "braidy-belt",
    ["fast-underground-belt"] = "fast-braidy-belt",
    ["express-underground-belt"] = "express-braidy-belt",
    ["kr-advanced-underground-belt"] = "advanced-braidy-belt",
    ["kr-superior-underground-belt"] = "superior-braidy-belt",
    ["extreme-underground"] = "extreme-braidy-belt",
    ["ultimate-underground"] = "ultimate-braidy-belt",
    ["high-speed-underground"] = "high-speed-braidy-belt",
    ["se-space-underground-belt"] = "space-braidy-belt"
}

local function swap_ingredient(recipe)
    for _, ingredient in pairs(recipe.ingredients) do
        if ingredient.name then
            if equivalents[ingredient.name] then
                ingredient.name = equivalents[ingredient.name]
            end
        else
            if equivalents[ingredient[1]] then
                ingredient[1] = equivalents[ingredient[1]]
            end
        end
    end
end

local function set_conversion(recipe, ingredient)
    recipe.ingredients = {{ingredient, 2}}
    recipe.category = nil
    recipe.always_show_made_in = false
    recipe.result_count = 2
    recipe.energy_required = 0.5
end

local function set_result(recipe, name)
    for _, result in pairs(recipe.results) do
        if result.name then
            result.name = name
        end
    end
end

local function set_recipe(recipe, ingredient)
    if conversion_recipe then
        set_conversion(recipe, ingredient)
    else
        swap_ingredient(recipe)
    end
end

local function clone_recipe(clone_name, original)
    local clone = table.deepcopy(data.raw["recipe"][original])
    clone.name = clone_name
    if clone.expensive then
        set_recipe(clone.expensive, original)
        set_result(clone.expensive, clone_name)
        if clone.normal then
            set_recipe(clone.normal, original)
            set_result(clone.normal, clone_name)
        end
    else
        clone.result = clone_name
        if conversion_recipe then
            set_conversion(clone, original)
        else
            swap_ingredient(clone)
        end
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
