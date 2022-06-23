# maybe queue again
execute if score %level_fully_generated pd_generation matches 1 run function pd_maps:map_device/open_portals
execute if score %level_fully_generated pd_generation matches 0 run schedule function pd_maps:map_device/wait_for_level_completion 5t
