local function insert_selected_deep_space()
    for _, color in pairs(deep_space_colors) do
        if settings.startup["se-deep-space-belt-" .. color].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = color .. "-braidy-belt"})
        end
    end
end

table.insert(data.raw['technology']['logistics'].effects, {type = "unlock-recipe", recipe = "braidy-belt"})
table.insert(data.raw['technology']['logistics-2'].effects, {type = "unlock-recipe", recipe = "fast-braidy-belt"})
table.insert(data.raw['technology']['logistics-3'].effects, {type = "unlock-recipe", recipe = "express-braidy-belt"})

if mods["Krastorio2"] then
    table.insert(data.raw['technology']['kr-logistic-4'].effects, {type = "unlock-recipe", recipe = "advanced-braidy-belt"})
    table.insert(data.raw['technology']['kr-logistic-5'].effects, {type = "unlock-recipe", recipe = "superior-braidy-belt"})
end

if mods["AdvancedBelts"] then
    table.insert(data.raw['technology']['extreme-logistics'].effects, {type = "unlock-recipe", recipe = "extreme-braidy-belt"})
    table.insert(data.raw['technology']['ultimate-logistics'].effects, {type = "unlock-recipe", recipe = "ultimate-braidy-belt"})
    table.insert(data.raw['technology']['high-speed-logistics'].effects, {type = "unlock-recipe", recipe = "high-speed-braidy-belt"})
end

if mods["space-exploration"] then
    table.insert(data.raw["technology"]["se-space-belt"].effects, {type = "unlock-recipe", recipe = "space-braidy-belt"})
    if deep_space_selected then
        table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "black-braidy-belt"})

        insert_selected_deep_space()
    end
end
