# post process the plane spanned by %min_x , ... , %max_z
# executed at minimal coordinates

# reset counting scoreboards
scoreboard players set %current_x pd_room_parameters 0
scoreboard players set %current_z pd_room_parameters 0

# call the function to post process all rows
execute positioned ~ ~ ~ run function pd_generation:rooms/post_processing/all_rows

# reset counting scoreboards
scoreboard players reset %current_x pd_room_parameters
scoreboard players reset %current_z pd_room_parameters
