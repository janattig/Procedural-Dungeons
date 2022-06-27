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

# clear the memory
data remove storage procedural_dungeons:current_map id
data remove storage procedural_dungeons:current_map display_name
data remove storage procedural_dungeons:current_map algorithm
data remove storage procedural_dungeons:current_map is_ttt
data remove storage procedural_dungeons:current_map min_x
data remove storage procedural_dungeons:current_map min_z
data remove storage procedural_dungeons:current_map max_x
data remove storage procedural_dungeons:current_map max_z
data remove storage procedural_dungeons:current_map extent
data remove storage procedural_dungeons:current_map extent_x
data remove storage procedural_dungeons:current_map extent_z
data remove storage procedural_dungeons:current_map extent_x_min
data remove storage procedural_dungeons:current_map extent_x_max
data remove storage procedural_dungeons:current_map extent_z_min
data remove storage procedural_dungeons:current_map extent_z_max
data remove storage procedural_dungeons:current_map extent_min
data remove storage procedural_dungeons:current_map extent_max
data remove storage procedural_dungeons:current_map dx
data remove storage procedural_dungeons:current_map dz
data remove storage procedural_dungeons:current_map room_filling_percentage
data remove storage procedural_dungeons:current_map room_filling_percentage_min
data remove storage procedural_dungeons:current_map room_filling_percentage_max
data remove storage procedural_dungeons:current_map num_rooms
data remove storage procedural_dungeons:current_map lab_loop_percentage
data remove storage procedural_dungeons:current_map lab_loop_percentage_min
data remove storage procedural_dungeons:current_map lab_loop_percentage_max
data remove storage procedural_dungeons:current_map portal_target
