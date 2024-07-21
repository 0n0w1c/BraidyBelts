local function clone_item(clone_name, original)
    local clone = table.deepcopy(data.raw["item"][original])
    if clone then
        clone.name = clone_name
        clone.place_result = clone_name
        clone.order = data.raw["item"][original].order .. "z"
    end
    return clone
end

local function clone_selected_deep_space()
    for _, color in pairs(deep_space_colors) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            local clone = clone_item(color .. "-braidy-belt", "se-deep-space-underground-belt-" .. color)
            if clone then
                data:extend {clone}
            end
        end
    end
end

local braidy_belt = clone_item("braidy-belt", "underground-belt")
local fast_braidy_belt = clone_item("fast-braidy-belt", "fast-underground-belt")
local express_braidy_belt = clone_item("express-braidy-belt", "express-underground-belt")
if braidy_belt and fast_braidy_belt and express_braidy_belt then
    data:extend {braidy_belt, fast_braidy_belt, express_braidy_belt}
end

if mods["Krastorio2"] then
    local advanced_braidy_belt = clone_item("advanced-braidy-belt", "kr-advanced-underground-belt")
    local superior_braidy_belt = clone_item("superior-braidy-belt", "kr-superior-underground-belt")
    if advanced_braidy_belt and superior_braidy_belt then
        data:extend {advanced_braidy_belt, superior_braidy_belt}
    end
end

if mods["AdvancedBelts"] then
    local extreme_braidy_belt = clone_item("extreme-braidy-belt", "extreme-underground")
    local ultimate_braidy_belt = clone_item("ultimate-braidy-belt", "ultimate-underground")
    local high_speed_braidy_belt = clone_item("high-speed-braidy-belt", "high-speed-underground")
    if extreme_braidy_belt and ultimate_braidy_belt and high_speed_braidy_belt then
        data:extend {extreme_braidy_belt, ultimate_braidy_belt, high_speed_braidy_belt}
    end
end

if mods["space-exploration"] then
    local space_braidy_belt = clone_item("space-braidy-belt", "se-space-underground-belt")
    if space_braidy_belt then
        data:extend {space_braidy_belt}
    end
    if deep_space_selected then
        local black_braidy_belt = clone_item("black-braidy-belt", "se-deep-space-underground-belt-black")
        if black_braidy_belt then
            data:extend {black_braidy_belt}
        end

        clone_selected_deep_space()
    end
end

if mods["FastLogistics"] then
    local fl_faster_braidy_belt = clone_item("fl:faster-braidy-belt", "fl:faster-underground-belt")
    local fl_faster_fast_braidy_belt = clone_item("fl:faster-fast-braidy-belt", "fl:faster-fast-underground-belt")
    local fl_faster_express_braidy_belt = clone_item("fl:faster-express-braidy-belt", "fl:faster-express-underground-belt")
    if fl_faster_braidy_belt and fl_faster_fast_braidy_belt and fl_faster_express_braidy_belt then
        data:extend {fl_faster_braidy_belt, fl_faster_fast_braidy_belt, fl_faster_express_braidy_belt}
    end
end
