RECIPE {
    type = "recipe",
    name = "pumpjack-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "pumpjack-mk01",    amount = 1},
        {type = "item", name = "steel-plate",      amount = 40},
        {type = "item", name = "advanced-circuit", amount = 5},
        {type = "item", name = "small-parts-02",   amount = 30},
        {type = "item", name = "engine-unit",      amount = 5},
    },
    results = {
        {type = "item", name = "pumpjack-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "pumpjack-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk02"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 2,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "450kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/left.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-51, -32)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/right.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(77, -32)
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
