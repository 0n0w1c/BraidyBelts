local braidy_belt = table.deepcopy(data.raw["recipe"]["underground-belt"])
braidy_belt.name = "braidy-belt"
braidy_belt.result = "braidy-belt"
data:extend { braidy_belt }

local fast_braidy_belt = table.deepcopy(data.raw["recipe"]["fast-underground-belt"])
fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.result = "fast-braidy-belt"
data:extend { fast_braidy_belt }

local express_braidy_belt = table.deepcopy(data.raw["recipe"]["express-underground-belt"])
express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.result = "express-braidy-belt"
data:extend { express_braidy_belt }

if mods["Krastorio2"] then
    local advanced_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-advanced-underground-belt"])
    advanced_braidy_belt.name = "advanced-braidy-belt"
    advanced_braidy_belt.result = "advanced-braidy-belt"
    data:extend { advanced_braidy_belt }

    local superior_braidy_belt = table.deepcopy(data.raw["recipe"]["kr-superior-underground-belt"])
    superior_braidy_belt.name = "superior-braidy-belt"
    superior_braidy_belt.result = "superior-braidy-belt"
    data:extend { superior_braidy_belt }
end

-- braidy_belt.enabled = false
-- fast_braidy_belt.enabled = false
-- express_braidy_belt.enabled = false
