FLUID {
    type = "fluid",
    name = "scrude",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/scrude.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.01, g = 0.01, b = 0.01},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
