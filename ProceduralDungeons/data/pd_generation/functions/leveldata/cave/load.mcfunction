# LOADING the level to actually generate it

# room set (has to be specified)
data modify storage procedural_dungeons:current_level all_rooms append from storage procedural_dungeons:level_data all_rooms[{map:"cave", size:11}]

# OPTIONAL: dimension number (only optional if it can be deduced from "map" data of rooms)
execute store result storage procedural_dungeons:current_level dimension int 1 run scoreboard players get %cave_world pd_dimensions
