local include_deep_space = (settings.startup["bb-deep-space"].value == true)

local function clone_item(clone_name, original)
    local clone = table.deepcopy(data.raw["item"][original])
    clone.name = clone_name
    clone.place_result = clone_name
    clone.order = data.raw["item"][original].order .. "z"
    return clone
end

local braidy_belt = clone_item("braidy-belt", "underground-belt")
local fast_braidy_belt = clone_item("fast-braidy-belt", "fast-underground-belt")
local express_braidy_belt = clone_item("express-braidy-belt", "express-underground-belt")
data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}

if mods["Krastorio2"] then
    local advanced_braidy_belt = clone_item("advanced-braidy-belt", "kr-advanced-underground-belt")
    local superior_braidy_belt = clone_item("superior-braidy-belt", "kr-superior-underground-belt")
    data:extend {advanced_braidy_belt, superior_braidy_belt}
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = clone_item("extreme-braidy-belt", "extreme-underground")
    local ultimate_braidy_belt = clone_item("ultimate-braidy-belt", "ultimate-underground")
    local high_speed_braidy_belt = clone_item("high-speed-braidy-belt", "high-speed-underground")
    data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
end

if mods["space-exploration"] then
    local space_braidy_belt = clone_item("space-braidy-belt", "se-space-underground-belt")
    data:extend {space_braidy_belt}
    if include_deep_space then
        local black_braidy_belt = clone_item("black-braidy-belt", "se-deep-space-underground-belt-black")
        data:extend {black_braidy_belt}
        if settings.startup["se-deep-space-belt-white"].value then
            local white_braidy_belt = clone_item("white-braidy-belt", "se-deep-space-underground-belt-white")
            data:extend {white_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-red"].value then
            local red_braidy_belt = clone_item("red-braidy-belt", "se-deep-space-underground-belt-red")
            data:extend {red_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-magenta"].value then
            local magenta_braidy_belt = clone_item("magenta-braidy-belt", "se-deep-space-underground-belt-magenta")
            data:extend {magenta_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-blue"].value then
            local blue_braidy_belt = clone_item("blue-braidy-belt", "se-deep-space-underground-belt-blue")
            data:extend {blue_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-cyan"].value then
            local cyan_braidy_belt = clone_item("cyan-braidy-belt", "se-deep-space-underground-belt-cyan")
            data:extend {cyan_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-green"].value then
            local green_braidy_belt = clone_item("green-braidy-belt", "se-deep-space-underground-belt-green")
            data:extend {green_braidy_belt}
        end
        if settings.startup["se-deep-space-belt-yellow"].value then
            local yellow_braidy_belt = clone_item("yellow-braidy-belt", "se-deep-space-underground-belt-yellow")
            data:extend {yellow_braidy_belt}
        end
    end
end
