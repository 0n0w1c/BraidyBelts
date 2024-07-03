local conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")

local braidy_belt = table.deepcopy(data.raw["recipe"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.result = "braidy-belt"
if conversion_recipe then
    braidy_belt.ingredients = {{"underground-belt", 2}}
end

-- aai-industry seems to envoke the expensive recipe
if mods["aai-industry"] then
    if braidy_belt.expensive then
        for _, result in pairs(braidy_belt.expensive.results) do
            if result.name then
                result.name = "braidy-belt"
            end
        end
        if conversion_recipe then
            braidy_belt.expensive.ingredients = {{"underground-belt", 2}}
        end
    end

    if braidy_belt.normal then
        for _, result in pairs(braidy_belt.normal.results) do
            if result.name then
                result.name = "braidy-belt"
            end
        end
        if conversion_recipe then
            braidy_belt.normal.ingredients = {{"underground-belt", 2}}
        end
    end
end

local fast_braidy_belt = table.deepcopy(data.raw["recipe"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.result = "fast-braidy-belt"
if conversion_recipe then
    fast_braidy_belt.ingredients = {{"fast-underground-belt", 2}}
end

local express_braidy_belt = table.deepcopy(data.raw["recipe"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.result = "express-braidy-belt"
if conversion_recipe then
    express_braidy_belt.ingredients = {{"express-underground-belt", 2}}
end

data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.result = "advanced-braidy-belt"
    if conversion_recipe then
        advanced_braidy_belt.ingredients = {{"kr-advanced-underground-belt", 2}}
    end

    local superior_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.result = "superior-braidy-belt"
    if conversion_recipe then
        superior_braidy_belt.ingredients = {{"kr-superior-underground-belt", 2}}
    end

    data:extend {advanced_braidy_belt, superior_braidy_belt}
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = table.deepcopy(data.raw["recipe"]["extreme-underground"])
    extreme_braidy_belt.name = "extreme-braidy-belt"
    extreme_braidy_belt.result = "extreme-braidy-belt"
    if conversion_recipe then
        extreme_braidy_belt.ingredients = {{"extreme-underground", 2}}
    end

    local ultimate_braidy_belt = table.deepcopy(data.raw["recipe"]["ultimate-underground"])
    ultimate_braidy_belt.name = "ultimate-braidy-belt"
    ultimate_braidy_belt.result = "ultimate-braidy-belt"
    if conversion_recipe then
        ultimate_braidy_belt.ingredients = {{"ultimate-underground", 2}}
    end

    local high_speed_braidy_belt = table.deepcopy(data.raw["recipe"]["high-speed-underground"])
    high_speed_braidy_belt.name = "high-speed-braidy-belt"
    high_speed_braidy_belt.result = "high-speed-braidy-belt"
    if conversion_recipe then
        high_speed_braidy_belt.ingredients = {{"high-speed-underground", 2}}
    end

   data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
end
