# reset the data
function pd_maps:maps/storage_access/reset_current_map


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



# set all parameters
data modify storage procedural_dungeons:current_map id set value 5
data modify storage procedural_dungeons:current_map display_name set value "Bunny Jump"
execute store result storage procedural_dungeons:current_map algorithm int 1 run scoreboard players get %ALG_1_LABYRINTH pd_level_parameters
data modify storage procedural_dungeons:current_map is_ttt set value 1
data modify storage procedural_dungeons:current_map extent_min set value 4
data modify storage procedural_dungeons:current_map extent_max set value 7
data modify storage procedural_dungeons:current_map room_filling_percentage_min set value 50
data modify storage procedural_dungeons:current_map room_filling_percentage_max set value 100
data modify storage procedural_dungeons:current_map lab_loop_percentage_min set value 5
data modify storage procedural_dungeons:current_map lab_loop_percentage_max set value 40
data modify storage procedural_dungeons:current_map portal_target set value [1.0d, 14.0d, 1.0d]



# finish the map, i.e. complete optional information and generate data for text
function pd_maps:maps/storage_access/finish_map

# give the actual map to self
loot give @s loot pd_maps:current_map
