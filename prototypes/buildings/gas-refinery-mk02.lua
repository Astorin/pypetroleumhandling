RECIPE {
    type = "recipe",
    name = "gas-refinery-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "gas-refinery-mk01", amount = 1},
        {type = "item", name = "steel-plate",       amount = 30},
        {type = "item", name = "advanced-circuit",  amount = 20},
        {type = "item", name = "engine-unit",       amount = 8},
        {type = "item", name = "small-parts-02",    amount = 30},
    },
    results = {
        {type = "item", name = "gas-refinery-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "gas-refinery-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-refinery-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "gas-refinery-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "gas-refinery-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-refinery-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "gas-refinery-mk02"},
    fast_replaceable_group = "gas-refinery",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"gas-refinery"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "700kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(48, -96),
                west_position = util.by_pixel(48, -96),
                south_position = util.by_pixel(48, -96),
                east_position = util.by_pixel(48, -96),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-refinery-mk01/anim.png",
                    --priority = "low",
                    frame_count = 54,
                    line_length = 10,
                    width = 192,
                    height = 288,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-refinery-mk02/off.png",
                    width = 304,
                    height = 387,
                    frame_count = 1,
                    shift = util.by_pixel(7, -48)
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, 4.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-refinery.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-refinery.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
