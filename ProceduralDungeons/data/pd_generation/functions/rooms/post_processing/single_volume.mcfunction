# post process the volume spanned by %min_x , ... , %max_z
# executed as the cursor at minimal coordinates

# reset counting scoreboards
scoreboard players set %current_x pd_room_parameters 0
scoreboard players set %current_y pd_room_parameters 0
scoreboard players set %current_z pd_room_parameters 0

# call the function to post process all planes
execute positioned ~ ~ ~ run function pd_generation:rooms/post_processing/all_planes

# reset counting scoreboards
scoreboard players reset %current_x pd_room_parameters
scoreboard players reset %current_y pd_room_parameters
scoreboard players reset %current_z pd_room_parameters
