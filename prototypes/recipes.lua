local conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")
local include_deep_space = false
if mods["space-exploration"] then
   include_deep_space = (settings.startup["bb-deep-space"].value == true)
end

local clones = {
    ["underground-belt"] = "braidy-belt",
    ["fast-underground-belt"] = "fast-braidy-belt",
    ["express-underground-belt"] = "express-braidy-belt",
    ["kr-advanced-underground-belt"] = "advanced-braidy-belt",
    ["kr-superior-underground-belt"] = "superior-braidy-belt",
    ["extreme-underground"] = "extreme-braidy-belt",
    ["ultimate-underground"] = "ultimate-braidy-belt",
    ["high-speed-underground"] = "high-speed-braidy-belt",
    ["se-space-underground-belt"] = "space-braidy-belt",
    ["se-deep-space-underground-belt-black"] = "black-braidy-belt",
    ["se-deep-space-underground-belt-white"] = "white-braidy-belt",
    ["se-deep-space-underground-belt-red"] = "red-braidy-belt",
    ["se-deep-space-underground-belt-magenta"] = "magenta-braidy-belt",
    ["se-deep-space-underground-belt-blue"] = "blue-braidy-belt",
    ["se-deep-space-underground-belt-cyan"] = "cyan-braidy-belt",
    ["se-deep-space-underground-belt-green"] = "green-braidy-belt",
    ["se-deep-space-underground-belt-yellow"] = "yellow-braidy-belt"
}

local function swap_ingredient(recipe)
    for _, ingredient in pairs(recipe.ingredients) do
        if ingredient.name then
            if clones[ingredient.name] then
                ingredient.name = clones[ingredient.name]
            end
        else
            if clones[ingredient[1]] then
                ingredient[1] = clones[ingredient[1]]
            end
        end
    end
end

local function set_conversion(recipe, ingredient)
    if ingredient == "se-deep-space-underground-belt" then
        ingredient = ingredient.."-black"
    end
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
        set_recipe(clone, original)
        clone.result = clone_name
    end
    return clone
end

local function add_deep_space()
    local deep_space_belts = {"white", "red", "magenta", "blue", "cyan", "green", "yellow"}
    for _, color in pairs(deep_space_belts) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            local recipe = clone_recipe(color .. "-braidy-belt", "se-deep-space-underground-belt-" .. color)
            data:extend {recipe}
        end
    end
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

    if include_deep_space then
        local black_braidy_belt = clone_recipe("black-braidy-belt", "se-deep-space-underground-belt")
        data:extend {black_braidy_belt}
        add_deep_space()
    end
end
