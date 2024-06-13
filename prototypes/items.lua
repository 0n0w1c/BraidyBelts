local braidy_belt = table.deepcopy(data.raw["item"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.place_result = "braidy-belt"
data:extend { braidy_belt }

local fast_braidy_belt = table.deepcopy(data.raw["item"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.place_result = "fast-braidy-belt"
data:extend { fast_braidy_belt }

local express_braidy_belt = table.deepcopy(data.raw["item"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.place_result = "express-braidy-belt"
data:extend { express_braidy_belt }

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["item"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.place_result = "advanced-braidy-belt"
    data:extend { advanced_braidy_belt }

    local superior_braidy_belt = table.deepcopy(data.raw["item"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.place_result = "superior-braidy-belt"
    data:extend { superior_braidy_belt }
end
