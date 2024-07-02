for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["braidy-belt"].enabled = technologies["basic-logistics"].researched
    recipes["fast-braidy-belt"].enabled = technologies["logistics-2"].researched
    recipes["express-braidy-belt"].enabled = technologies["logistics-3"].researched

    if mods["Krastorio2"] then
        -- nothing
    end
end
