local braidy_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
local fast_braidy_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
local express_braidy_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])

braidy_belt.name = "braidy-belt"
braidy_belt.minable.result = "braidy-belt"

fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.minable.result = "fast-braidy-belt"

express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.minable.result = "express-braidy-belt"

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }