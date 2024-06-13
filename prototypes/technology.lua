table.insert(data.raw['technology']['logistics'].effects, {type = "unlock-recipe", recipe = "braidy-belt"})
table.insert(data.raw['technology']['logistics-2'].effects, {type = "unlock-recipe", recipe = "fast-braidy-belt"})
table.insert(data.raw['technology']['logistics-3'].effects, {type = "unlock-recipe", recipe = "express-braidy-belt"})

if mods["Krastorio2"] then
    table.insert(data.raw['technology']['kr-logistic-4'].effects, {type = "unlock-recipe", recipe = "advanced-braidy-belt"})
    table.insert(data.raw['technology']['kr-logistic-5'].effects, {type = "unlock-recipe", recipe = "superior-braidy-belt"})
end
