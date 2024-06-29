local braidy_belt = table.deepcopy(data.raw["recipe"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.result = "braidy-belt"

if mods["aai-industry"] then
    if braidy_belt.expensive then
        for _, result in pairs(braidy_belt.expensive.results) do
            if result.name then
                result.name = "braidy-belt"
            end
        end
    end

    if braidy_belt.normal then
        for _, result in pairs(braidy_belt.normal.results) do
            if result.name then
                result.name = "braidy-belt"
            end
        end
    end
end

local fast_braidy_belt = table.deepcopy(data.raw["recipe"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.result = "fast-braidy-belt"

local express_braidy_belt = table.deepcopy(data.raw["recipe"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.result = "express-braidy-belt"

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.result = "advanced-braidy-belt"

    local superior_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.result = "superior-braidy-belt"

    data:extend { advanced_braidy_belt, superior_braidy_belt }
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = table.deepcopy(data.raw["recipe"]["extreme-underground"])
    extreme_braidy_belt.name = "extreme-braidy-belt"
    extreme_braidy_belt.result = "extreme-braidy-belt"

    local ultimate_braidy_belt = table.deepcopy(data.raw["recipe"]["ultimate-underground"])
    ultimate_braidy_belt.name = "ultimate-braidy-belt"
    ultimate_braidy_belt.result = "ultimate-braidy-belt"

    local high_speed_braidy_belt = table.deepcopy(data.raw["recipe"]["high-speed-underground"])
    high_speed_braidy_belt.name = "high-speed-braidy-belt"
    high_speed_braidy_belt.result = "high-speed-braidy-belt"

   data:extend { extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt }
end
