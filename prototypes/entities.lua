local mine_braidy_belt = (settings.startup["bb-mine-type"].value == "braidy belt")
local deep_space_colors = {"white", "red", "magenta", "blue", "cyan", "green", "yellow"}
local deep_space_selected = false

if mods["space-exploration"] then
    deep_space_selected = (settings.startup["bb-deep-space"].value == true)
end

local function clone_underground_belt(clone_name, original, upgrade)
    local clone = table.deepcopy(data.raw["underground-belt"][original])
    clone.name = clone_name
    clone.next_upgrade = upgrade
    if mine_braidy_belt then
        clone.minable.result = clone_name
    else
        clone.minable.result = original
    end
    return clone
end

local function clone_selected_deep_space()
    for _, color in pairs(deep_space_colors) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            local clone = clone_underground_belt(color .. "-braidy-belt", "se-deep-space-underground-belt-" .. color, nil)
            data:extend {clone}
        end
    end
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
    if deep_space_selected then
        local black_braidy_belt = clone_underground_belt("black-braidy-belt", "se-deep-space-underground-belt-black", nil)
        data:extend {black_braidy_belt}
        clone_selected_deep_space()
    end
end
