# post process the row spanned by %min_x , %max_x
# executed at minimal coordinates

# reset counting scoreboards
scoreboard players set %current_x pd_room_parameters 0

# call the function to post process all blocks
execute positioned ~ ~ ~ run function pd_generation:rooms/post_processing/all_blocks

# reset counting scoreboards
scoreboard players reset %current_x pd_room_parameters
