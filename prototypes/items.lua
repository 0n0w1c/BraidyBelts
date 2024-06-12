local braidy_belt = table.deepcopy(data.raw["item"]["underground-belt"])
local fast_braidy_belt = table.deepcopy(data.raw["item"]["fast-underground-belt"])
local express_braidy_belt = table.deepcopy(data.raw["item"]["express-underground-belt"])

braidy_belt.name = "braidy-belt"
fast_braidy_belt.name = "fast-braidy-belt"
express_braidy_belt.name = "express-braidy-belt"

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }