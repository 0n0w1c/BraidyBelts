local braidy_belt = table.deepcopy(data.raw["item"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.place_result = "braidy-belt"
braidy_belt.order = data.raw["item"]["underground-belt"].order .. "z"

local fast_braidy_belt = table.deepcopy(data.raw["item"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.place_result = "fast-braidy-belt"
fast_braidy_belt.order = data.raw["item"]["fast-underground-belt"].order .. "z"

local express_braidy_belt = table.deepcopy(data.raw["item"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.place_result = "express-braidy-belt"
express_braidy_belt.order = data.raw["item"]["express-underground-belt"].order .. "z"

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["item"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.place_result = "advanced-braidy-belt"
    advanced_braidy_belt.order = data.raw["item"]["kr-advanced-underground-belt"].order .. "z"

    local superior_braidy_belt = table.deepcopy(data.raw["item"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.place_result = "superior-braidy-belt"
    superior_braidy_belt.order = data.raw["item"]["kr-superior-underground-belt"].order .. "z"

    data:extend { advanced_braidy_belt, superior_braidy_belt }
end
