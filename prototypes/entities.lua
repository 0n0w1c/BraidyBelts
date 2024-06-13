local braidy_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
local fast_braidy_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
local express_braidy_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])

braidy_belt.name = "braidy-belt"
braidy_belt.minable.result = "braidy-belt"
braidy_belt.belt_animation_set = {
  animation_set = {
    layers = {
      {
        direction_count = 20,
        filename = "__DeadlockBlackRubberBelts__/graphics/entities/rubber-belt-base-steel.png",
        frame_count = 8,
        height = 128,
        priority = "extra-high",
        repeat_count = 2,
        scale = 0.5,
        width = 128
      },
      {
        direction_count = 20,
        filename = "__DeadlockBlackRubberBelts__/graphics/entities/rubber-belt-arrow.png",
        frame_count = 16,
        height = 128,
        priority = "extra-high",
        scale = 0.5,
        tint = {
          a = 1,
          b = 0.5,
          g = 0.80799999999999983,
          r = 0.19999999999999996
        },
        width = 128
      }
    }
  }
}

fast_braidy_belt.name = "fast-braidy-belt"
fast_braidy_belt.minable.result = "fast-braidy-belt"

express_braidy_belt.name = "express-braidy-belt"
express_braidy_belt.minable.result = "express-braidy-belt"

data:extend { braidy_belt, fast_braidy_belt, express_braidy_belt }