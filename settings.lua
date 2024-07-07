data:extend({
    {
        order = "1",
        type = "string-setting",
        name = 'bb-recipe-type',
        setting_type = "startup",
        default_value = "vanilla",
        allowed_values =
        {
            "vanilla",
            "conversion"
        }
    }
})

data:extend({
    {
        order = "2",
        type = "string-setting",
        name = 'bb-mine-type',
        setting_type = "startup",
        default_value = "braidy belt",
        allowed_values =
        {
            "vanilla/modded",
            "braidy belt"
        }
    }
})

if mods["space-exploration"] then
    data:extend({
        {
            order = "3",
            type = "bool-setting",
            name = 'bb-deep-space',
            setting_type = "startup",
            default_value = "false",
        }
    })
end
