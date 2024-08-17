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
    if technologies["se-deep-space-transport-belt"] then
        if recipes["black-braidy-belt"] then
            recipes["black-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["white-braidy-belt"] then
            recipes["white-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["red-braidy-belt"] then
            recipes["red-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["magenta-braidy-belt"] then
            recipes["magenta-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["blue-braidy-belt"] then
            recipes["blue-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["cyan-braidy-belt"] then
            recipes["cyan-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["green-braidy-belt"] then
            recipes["green-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
        if recipes["yellow-braidy-belt"] then
            recipes["yellow-braidy-belt"].enabled = technologies["se-deep-space-transport-belt"].researched
        end
    end

    -- FastLogistics
    if recipes["fl:faster-braidy-belt"] and technologies["fl:faster-logistics"] then
        recipes["fl:faster-braidy-belt"].enabled = technologies["fl:faster-logistics"].researched
    end
    if recipes["fl:faster-fast-braidy-belt"] and technologies["fl:faster-logistics-2"] then
        recipes["fl:faster-fast-braidy-belt"].enabled = technologies["fl:faster-logistics-2"].researched
    end
    if recipes["fl:faster-express-braidy-belt"] and technologies["fl:faster-logistics-3"] then
        recipes["fl:faster-express-braidy-belt"].enabled = technologies["fl:faster-logistics-3"].researched
    end

    -- UltimateBelts
    if recipes["ultra-fast-braidy-belt"] and technologies["ultra-fast-logistics"] then
        recipes["ultra-fast-braidy-belt"].enabled = technologies["ultra-fast-logistics"].researched
    end
    if recipes["extreme-fast-braidy-belt"] and technologies["extreme-fast-logistics"] then
        recipes["extreme-fast-braidy-belt"].enabled = technologies["extreme-fast-logistics"].researched
    end
    if recipes["ultra-express-braidy-belt"] and technologies["ultra-express-logistics"] then
        recipes["ultra-express-braidy-belt"].enabled = technologies["ultra-express-logistics"].researched
    end
    if recipes["extreme-express-braidy-belt"] and technologies["extreme-express-logistics"] then
        recipes["extreme-express-braidy-belt"].enabled = technologies["extreme-express-logistics"].researched
    end
    if recipes["original-ultimate-braidy-belt"] and technologies["ultimate-logistics"] then
        recipes["original-ultimate-braidy-belt"].enabled = technologies["ultimate-logistics"].researched
    end
end
