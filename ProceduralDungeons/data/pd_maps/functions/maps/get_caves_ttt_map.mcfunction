# reset the data
function pd_maps:maps/storage_access/reset_current_map


# set id (to later identify it in the generation process)
data modify storage procedural_dungeons:current_map id set value -2
# set the displayed name to modify the title of the map item
# items title will read "DISPLAY_NAME Map"
data modify storage procedural_dungeons:current_map display_name set value "Caves"

# set the map size
scoreboard players set %extent_min pd_maps 5
scoreboard players set %extent_max pd_maps 12
function pd_maps:maps/storage_access/store_random_map_size

# map is a ttt map
data modify storage procedural_dungeons:current_map is_ttt set value 1

# map is generated with labyrinth algorithm
execute store result storage procedural_dungeons:current_map algorithm int 1 run scoreboard players get %ALG_1_LABYRINTH pd_level_parameters

# set the percentage of rooms
scoreboard players set %LCG_rand_min pd_math 3
scoreboard players set %LCG_rand_max pd_math 10
function pd_math:rand/update
execute store result storage procedural_dungeons:current_map room_filling_percentage int 10 run scoreboard players get %LCG_rand pd_math
# set percentage of loops when attempting new connections to already connected rooms
scoreboard players set %LCG_rand_min pd_math 10
scoreboard players set %LCG_rand_max pd_math 40
function pd_math:rand/update
execute store result storage procedural_dungeons:current_map lab_loop_percentage int 1 run scoreboard players get %LCG_rand pd_math

# set the portal target
data modify storage procedural_dungeons:current_map portal_target set value [0.5d, 64.0d, 0.5d]


# finish the map, i.e. complete optional information and generate data for text
function pd_maps:maps/storage_access/finish_map

# give the actual map to self
loot give @s loot pd_maps:current_map
