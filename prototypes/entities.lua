local braidy_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.minable.result = "braidy-belt"
data:extend { braidy_belt }

local fast_braidy_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.minable.result = "fast-braidy-belt"
data:extend { fast_braidy_belt }

local express_braidy_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.minable.result = "express-braidy-belt"
data:extend { express_braidy_belt }

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["underground-belt"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.minable.result = "advanced-braidy-belt"
    data:extend { advanced_braidy_belt }

    local superior_braidy_belt = table.deepcopy(data.raw["underground-belt"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.minable.result = "superior-braidy-belt"
    data:extend { superior_braidy_belt }
end
