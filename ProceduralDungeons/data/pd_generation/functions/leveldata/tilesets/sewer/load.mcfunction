# LOADING the tileset

# room set (has to be specified)
data modify storage procedural_dungeons:current_level all_rooms append from storage procedural_dungeons:level_data all_rooms[{map:"sewer", size:15}]

# OPTIONAL: dimension number (only optional if it can be deduced from "map" data of rooms)
execute store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %sewer_world pd_dimensions

# set the starting height of the algorithm.
# This is also the height of the lowest row of blocks in the rooms
scoreboard players set %start_y pd_level_parameters 54

# set the post processing height (y) of the algorithm (layers above start_y)
scoreboard players set %post_processing_size_y pd_level_parameters 14
