local deep_space_colors = {"white", "red", "magenta", "blue", "cyan", "green", "yellow"}
local deep_space_selected = false
if mods["space-exploration"] then
    deep_space_selected = (settings.startup["bb-deep-space"].value == true)
end

local function clone_item(clone_name, original)
    local clone = table.deepcopy(data.raw["item"][original])
    clone.name = clone_name
    clone.place_result = clone_name
    clone.order = data.raw["item"][original].order .. "z"
    return clone
end

local function clone_selected_deep_space()
    for _, color in pairs(deep_space_colors) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            local clone = clone_item(color .. "-braidy-belt", "se-deep-space-underground-belt-" .. color)
            data:extend {clone}
        end
    end
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
    if deep_space_selected then
        local black_braidy_belt = clone_item("black-braidy-belt", "se-deep-space-underground-belt-black")
        data:extend {black_braidy_belt}
        clone_selected_deep_space()
    end
end
