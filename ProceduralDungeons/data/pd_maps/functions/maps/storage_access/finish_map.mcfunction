##############################
# MAP PARAMETERS
# - ID
# - display_name
# - algorithm
# - (ttt yes/no = yes)
# - linear extent:
#   - min_x, max_x, min_z, max_z
#   - extent_x, extent_z
#   - extent_x_min, extent_x_max, ...
#   - extent
#   - extent_min, extent_max
# - (room filling = 100%)
#   - room_filling_percentage
#   - room_filling_percentage_min, room_filling_percentage_max
# - (loop chance = 10%)
#   - lab_loop_percentage
#   - lab_loop_percentage_min, lab_loop_percentage_max
# - portal_target
##############################





### ALGORITHM

# generate scoreboard value if the map is assembled by which algorithm
scoreboard players set %is_labyrinth pd_maps 0
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map algorithm
execute if score %tmp1 pd_maps = %ALG_1_LABYRINTH pd_level_parameters run scoreboard players set %is_labyrinth pd_maps 1
scoreboard players reset %tmp1 pd_maps

### TTT

# default ttt value = yes
execute unless data storage procedural_dungeons:current_map is_ttt run data modify storage procedural_dungeons:current_map is_ttt set value 1

# generate scoreboard value if the map is a ttt map
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map is_ttt
execute if score %tmp1 pd_maps matches 1 run scoreboard players set %is_ttt_map pd_maps 1
execute if score %tmp1 pd_maps matches 0 run scoreboard players set %is_ttt_map pd_maps 0
execute if score %tmp1 pd_maps matches 0 run data modify storage procedural_dungeons:current_map is_ttt set value 0
scoreboard players reset %tmp1 pd_maps



### SIZE / EXTENT OF GRID

# extent -> extent_x, extent_z
execute if data storage procedural_dungeons:current_map extent run data modify storage procedural_dungeons:current_map extent_x set from storage procedural_dungeons:current_map extent
execute if data storage procedural_dungeons:current_map extent run data modify storage procedural_dungeons:current_map extent_z set from storage procedural_dungeons:current_map extent

# extent_min -> extent_x_min, extent_z_min / extent_max -> extent_x_max, extent_z_max
execute if data storage procedural_dungeons:current_map extent_min run data modify storage procedural_dungeons:current_map extent_x_min set from storage procedural_dungeons:current_map extent_min
execute if data storage procedural_dungeons:current_map extent_min run data modify storage procedural_dungeons:current_map extent_z_min set from storage procedural_dungeons:current_map extent_min
execute if data storage procedural_dungeons:current_map extent_max run data modify storage procedural_dungeons:current_map extent_x_max set from storage procedural_dungeons:current_map extent_max
execute if data storage procedural_dungeons:current_map extent_max run data modify storage procedural_dungeons:current_map extent_z_max set from storage procedural_dungeons:current_map extent_max

# extent min/max -> extent
execute if data storage procedural_dungeons:current_map extent_x_min if data storage procedural_dungeons:current_map extent_x_max run function pd_maps:maps/storage_access/fill_extent_x
execute if data storage procedural_dungeons:current_map extent_z_min if data storage procedural_dungeons:current_map extent_z_max run function pd_maps:maps/storage_access/fill_extent_z

# extent -> min / max coordinates
execute if data storage procedural_dungeons:current_map extent_x run function pd_maps:maps/storage_access/fill_min_max_x
execute if data storage procedural_dungeons:current_map extent_z run function pd_maps:maps/storage_access/fill_min_max_z

# calculate the actual extent dx
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map min_x
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map max_x
scoreboard players set %tmp_dx pd_maps 1
scoreboard players operation %tmp_dx pd_maps += %tmp2 pd_maps
scoreboard players operation %tmp_dx pd_maps -= %tmp1 pd_maps
execute store result storage procedural_dungeons:current_map dx int 1 run scoreboard players get %tmp_dx pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp_dx pd_maps
# calculate the actual extent dz
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map min_z
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map max_z
scoreboard players set %tmp_dz pd_maps 1
scoreboard players operation %tmp_dz pd_maps += %tmp2 pd_maps
scoreboard players operation %tmp_dz pd_maps -= %tmp1 pd_maps
execute store result storage procedural_dungeons:current_map dz int 1 run scoreboard players get %tmp_dz pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp_dz pd_maps



### NUMBER OF ROOMS

# determine correct filling percentage
execute if data storage procedural_dungeons:current_map room_filling_percentage_min if data storage procedural_dungeons:current_map room_filling_percentage_max run function pd_maps:maps/storage_access/fill_filling_percentage

# default value of filling
execute unless data storage procedural_dungeons:current_map room_filling_percentage run data modify storage procedural_dungeons:current_map room_filling_percentage set value 100

# calculate the number of rooms
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map dx
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map dz
execute store result score %tmp pd_maps run data get storage procedural_dungeons:current_map room_filling_percentage
scoreboard players operation %tmp pd_maps *= %tmp2 pd_maps
scoreboard players operation %tmp pd_maps *= %tmp1 pd_maps
scoreboard players operation %tmp pd_maps /= 100 pd_math
execute store result storage procedural_dungeons:current_map num_rooms int 1 run scoreboard players get %tmp pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp pd_maps



### LOOP CHANCE

# determine correct loop chance
execute if data storage procedural_dungeons:current_map lab_loop_percentage_min if data storage procedural_dungeons:current_map lab_loop_percentage_max run function pd_maps:maps/storage_access/fill_loop_chance

# default value of loop chance
execute unless data storage procedural_dungeons:current_map lab_loop_percentage run data modify storage procedural_dungeons:current_map room_filling_percentage set value 10
