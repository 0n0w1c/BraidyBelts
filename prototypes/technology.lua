if mods["space-exploration"] then
    local include_deep_space = (settings.startup["bb-deep-space"].value == true)
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
    if include_deep_space then
        table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "black-braidy-belt"})
        if settings.startup["se-deep-space-belt-white"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "white-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-red"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "red-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-magenta"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "magenta-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-blue"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "blue-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-cyan"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "cyan-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-green"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "green-braidy-belt"})
        end
        if settings.startup["se-deep-space-belt-yellow"].value then
            table.insert(data.raw["technology"]["se-deep-space-transport-belt"].effects, {type = "unlock-recipe", recipe = "yellow-braidy-belt"})
        end
    end
end
