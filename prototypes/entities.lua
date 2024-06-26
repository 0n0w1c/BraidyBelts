local braidy_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.minable.result = "braidy-belt"
braidy_belt.next_upgrade = "fast-braidy-belt"
braidy_belt.order = data.raw["item"]["underground-belt"].order .. "z"

local fast_braidy_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.minable.result = "fast-braidy-belt"
fast_braidy_belt.next_upgrade = "express-braidy-belt"
fast_braidy_belt.order = data.raw["item"]["fast-underground-belt"].order .. "z"

local express_braidy_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.minable.result = "express-braidy-belt"
express_braidy_belt.next_upgrade = nil
express_braidy_belt.order = data.raw["item"]["express-underground-belt"].order .. "z"

if mods["Krastorio2"] then
    express_braidy_belt.next_upgrade = "advanced-braidy-belt"

    local advanced_braidy_belt = table.deepcopy(data.raw["underground-belt"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.minable.result = "advanced-braidy-belt"
    advanced_braidy_belt.next_upgrade = "superior-braidy-belt"
    advanced_braidy_belt.order = data.raw["item"]["kr-advanced-underground-belt"].order .. "z"

    local superior_braidy_belt = table.deepcopy(data.raw["underground-belt"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.minable.result = "superior-braidy-belt"
    superior_braidy_belt.next_upgrade = nil
    superior_braidy_belt.order = data.raw["item"]["kr-superior-underground-belt"].order .. "z"

    data:extend { advanced_braidy_belt, superior_braidy_belt }
end

if mods["AdvancedBelts"] then
    express_braidy_belt.next_upgrade = "extreme-braidy-belt"

    local extreme_braidy_belt = table.deepcopy(data.raw["underground-belt"]["extreme-underground"])
    extreme_braidy_belt.name = "extreme-braidy-belt"
    extreme_braidy_belt.minable.result = "extreme-braidy-belt"
    extreme_braidy_belt.next_upgrade = "ultimate-braidy-belt"
    extreme_braidy_belt.order = data.raw["item"]["extreme-underground"].order .. "z"

    local ultimate_braidy_belt = table.deepcopy(data.raw["underground-belt"]["ultimate-underground"])
    ultimate_braidy_belt.name = "ultimate-braidy-belt"
    ultimate_braidy_belt.minable.result = "ultimate-braidy-belt"
    ultimate_braidy_belt.next_upgrade = "high-speed-braidy-belt"
    ultimate_braidy_belt.order = data.raw["item"]["ultimate-underground"].order .. "z"

    local high_speed_braidy_belt = table.deepcopy(data.raw["underground-belt"]["high-speed-underground"])
    high_speed_braidy_belt.name = "high-speed-braidy-belt"
    high_speed_braidy_belt.minable.result = "high-speed-braidy-belt"
    high_speed_braidy_belt.next_upgrade = nil
    high_speed_braidy_belt.order = data.raw["item"]["high-speed-underground"].order .. "z"

   data:extend { extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt }
end

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }
