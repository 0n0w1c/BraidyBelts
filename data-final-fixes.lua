deep_space_colors = {"white", "red", "magenta", "blue", "cyan", "green", "yellow"}
conversion_recipe = (settings.startup["bb-recipe-type"].value == "conversion")
mine_braidy_belt = (settings.startup["bb-mine-type"].value == "braidy belt")

deep_space_selected = false
if mods["space-exploration"] then
    deep_space_selected = settings.startup["bb-deep-space"].value
end

clones = {
    ["underground-belt"] = "braidy-belt",
    ["fast-underground-belt"] = "fast-braidy-belt",
    ["express-underground-belt"] = "express-braidy-belt",
    ["kr-advanced-underground-belt"] = "advanced-braidy-belt",
    ["kr-superior-underground-belt"] = "superior-braidy-belt",
    ["extreme-underground"] = "extreme-braidy-belt",
    ["ultimate-underground"] = "ultimate-braidy-belt",
    ["high-speed-underground"] = "high-speed-braidy-belt",
    ["se-space-underground-belt"] = "space-braidy-belt",
    ["se-deep-space-underground-belt-black"] = "black-braidy-belt",
    ["se-deep-space-underground-belt-white"] = "white-braidy-belt",
    ["se-deep-space-underground-belt-red"] = "red-braidy-belt",
    ["se-deep-space-underground-belt-magenta"] = "magenta-braidy-belt",
    ["se-deep-space-underground-belt-blue"] = "blue-braidy-belt",
    ["se-deep-space-underground-belt-cyan"] = "cyan-braidy-belt",
    ["se-deep-space-underground-belt-green"] = "green-braidy-belt",
    ["se-deep-space-underground-belt-yellow"] = "yellow-braidy-belt",
    ["fl:faster-underground-belt"] = "fl:faster-braidy-belt",
    ["fl:faster-fast-underground-belt"] = "fl:faster-fast-braidy-belt",
    ["fl:faster-express-underground-belt"] = "fl:faster-express-braidy-belt",
    ["ultra-fast-underground-belt"] = "ultra-fast-braidy-belt",
    ["extreme-fast-underground-belt"] = "extreme-fast-braidy-belt",
    ["ultra-express-underground-belt"] = "ultra-express-braidy-belt",
    ["extreme-express-underground-belt"] = "extreme-express-braidy-belt",
    ["original-ultimate-underground-belt"] = "original-ultimate-braidy-belt",
}

require("prototypes.entities")
require("prototypes.items")
require("prototypes.recipes")
require("prototypes.technology")
