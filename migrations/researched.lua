for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if recipes["braidy-belt"] and technologies["logistics"] then
        recipes["braidy-belt"].enabled = technologies["logistics"].researched
    end

    if recipes["fast-braidy-belt"] and technologies["logistics-2"] then
        recipes["fast-braidy-belt"].enabled = technologies["logistics-2"].researched
    end

    if recipes["express-braidy-belt"] and technologies["logistics-3"] then
        recipes["express-braidy-belt"].enabled = technologies["logistics-3"].researched
    end

    -- Krastorio2
    if recipes["advanced-braidy-belt"] and technologies["kr-logistics-4"] then
        recipes["advanced-braidy-belt"].enabled = technologies["kr-logistics-4"].researched
    end
    if recipes["superior-braidy-belt"] and technologies["kr-logistics-5"] then
        recipes["superior-braidy-belt"].enabled = technologies["kr-logistics-5"].researched
    end

    -- AdvancedBelts
    if recipes["extreme-braidy-belt"] and technologies["extreme-logistics"] then
        recipes["extreme-braidy-belt"].enabled = technologies["extreme-logistics"].researched
    end
    if recipes["ultimate-braidy-belt"] and technologies["ultimate-logistics"] then
        recipes["ultimate-braidy-belt"].enabled = technologies["ultimate-logistics"].researched
    end
    if recipes["high-speed-braidy-belt"] and technologies["high-speed-logistics"] then
        recipes["high-speed-braidy-belt"].enabled = technologies["high-speed-logistics"].researched
    end

    -- Space Exploration
    if recipes["space-braidy-belt"] and technologies["se-space-belt"] then
        recipes["space-braidy-belt"].enabled = technologies["se-space-belt"].researched
    end
    if recipes["black-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["black-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["white-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["white-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["red-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["red-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["magenta-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["magenta-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["blue-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["blue-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["cyan-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["cyan-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["green-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["green-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
    if recipes["yellow-braidy-belt"] and technologies["se-deep-space-transport-belt"] then
        recipes["yellow-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
    end
end
