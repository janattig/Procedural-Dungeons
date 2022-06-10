# check the current reset dimension for specific reset queus
execute if score %reset_region_size pd_dimension_parameters matches 11 run function pd_dimensions:cave_world/reset/register_11x11_here
