local function clone_underground_belt(clone_name, original, upgrade)
    local clone = table.deepcopy(data.raw["underground-belt"][original])
    clone.name = clone_name
    clone.minable.result = clone_name
    clone.next_upgrade = upgrade
    return clone
end

local braidy_belt = clone_underground_belt("braidy-belt", "underground-belt", "fast-braidy-belt")
local fast_braidy_belt = clone_underground_belt("fast-braidy-belt", "fast-underground-belt", "express-braidy-belt")
local express_braidy_belt = clone_underground_belt("express-braidy-belt", "express-underground-belt", nil)

data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}

if mods["Krastorio2"] then
    data.raw["underground-belt"]["express-braidy-belt"].next_upgrade = "advanced-braidy-belt"

    local advanced_braidy_belt = clone_underground_belt("advanced-braidy-belt", "kr-advanced-underground-belt", "superior-braidy-belt")
    local superior_braidy_belt = clone_underground_belt("superior-braidy-belt", "kr-superior-underground-belt", nil)

    data:extend {advanced_braidy_belt, superior_braidy_belt}
end

if mods["AdvancedBelts"] then
    data.raw["underground-belt"]["express-braidy-belt"].next_upgrade = "extreme-braidy-belt"

    local extreme_braidy_belt = clone_underground_belt("extreme-braidy-belt", "extreme-underground", "ultimate-braidy-belt")
    local ultimate_braidy_belt = clone_underground_belt("ultimate-braidy-belt", "ultimate-underground", "high-speed-braidy-belt")
    local high_speed_braidy_belt = clone_underground_belt("high-speed-braidy-belt", "high-speed-underground", nil)

    data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
end

if mods["space-exploration"] then

    local space_braidy_belt = clone_underground_belt("space-braidy-belt", "se-space-underground-belt", nil)

    data:extend {space_braidy_belt}
end