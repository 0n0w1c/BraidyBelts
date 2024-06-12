local braidy_belt = table.deepcopy(data.raw["recipe"]["underground-belt"])
local fast_braidy_belt = table.deepcopy(data.raw["recipe"]["fast-underground-belt"])
local express_braidy_belt = table.deepcopy(data.raw["recipe"]["express-underground-belt"])

braidy_belt.name = "braidy-belt"
braidy_belt.result = "braidy-belt"
braidy_belt.enabled = true

fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.result = "fast-braidy-belt"
fast_braidy_belt.enabled = true

express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.result = "express-braidy-belt"
express_braidy_belt.enabled = true

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }