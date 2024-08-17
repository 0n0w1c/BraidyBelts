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
    if clone then
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
    end
    return clone
end

local function clone_selected_deep_space()
    for _, color in pairs(deep_space_colors) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            local clone = clone_recipe(color .. "-braidy-belt", "se-deep-space-underground-belt-" .. color)
            if clone then
                data:extend {clone}
            end
        end
    end
end

local braidy_belt = clone_recipe("braidy-belt", "underground-belt")
local fast_braidy_belt = clone_recipe("fast-braidy-belt", "fast-underground-belt")
local express_braidy_belt = clone_recipe("express-braidy-belt", "express-underground-belt")
if braidy_belt and fast_braidy_belt and express_braidy_belt then
    data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}
end

if mods["Krastorio2"] then
    local advanced_braidy_belt = clone_recipe("advanced-braidy-belt", "kr-advanced-underground-belt")
    local superior_braidy_belt = clone_recipe("superior-braidy-belt", "kr-superior-underground-belt")
    if advanced_braidy_belt and superior_braidy_belt then
        data:extend {advanced_braidy_belt, superior_braidy_belt}
    end
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = clone_recipe("extreme-braidy-belt", "extreme-underground")
    local ultimate_braidy_belt = clone_recipe("ultimate-braidy-belt", "ultimate-underground")
    local high_speed_braidy_belt = clone_recipe("high-speed-braidy-belt", "high-speed-underground")
    if extreme_braidy_belt and ultimate_braidy_belt and high_speed_braidy_belt then
        data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
    end
end

if mods["space-exploration"] then
    local space_braidy_belt = clone_recipe("space-braidy-belt", "se-space-underground-belt")
    if space_braidy_belt then
        data:extend {space_braidy_belt}
    end

    if deep_space_selected then
        local black_braidy_belt = clone_recipe("black-braidy-belt", "se-deep-space-underground-belt")
        if black_braidy_belt then
            data:extend {black_braidy_belt}
        end

        clone_selected_deep_space()
    end
end

if mods["FastLogistics"] then
    local fl_faster_braidy_belt = clone_recipe("fl:faster-braidy-belt", "fl:faster-underground-belt")
    local fl_faster_fast_braidy_belt = clone_recipe("fl:faster-fast-braidy-belt", "fl:faster-fast-underground-belt")
    local fl_faster_express_braidy_belt = clone_recipe("fl:faster-express-braidy-belt", "fl:faster-express-underground-belt")
    if fl_faster_braidy_belt and fl_faster_fast_braidy_belt and fl_faster_express_braidy_belt then
        data:extend {fl_faster_braidy_belt, fl_faster_fast_braidy_belt, fl_faster_express_braidy_belt}
    end
end

if mods["UltimateBelts"] then
    local ultra_fast_braidy_belt = clone_recipe("ultra-fast-braidy-belt", "ultra-fast-underground-belt")
    local extreme_fast_braidy_belt = clone_recipe("extreme-fast-braidy-belt", "extreme-fast-underground-belt")
    local ultra_express_braidy_belt = clone_recipe("ultra-express-braidy-belt", "ultra-express-underground-belt")
    local extreme_express_braidy_belt = clone_recipe("extreme-express-braidy-belt", "extreme-express-underground-belt")
    local original_ultimate_braidy_belt = clone_recipe("original-ultimate-braidy-belt", "original-ultimate-underground-belt")
    if ultra_fast_braidy_belt and extreme_fast_braidy_belt and ultra_express_braidy_belt and extreme_express_braidy_belt and original_ultimate_braidy_belt then
        data:extend {ultra_fast_braidy_belt, extreme_fast_braidy_belt, ultra_express_braidy_belt, extreme_express_braidy_belt, original_ultimate_braidy_belt}
    end
end
