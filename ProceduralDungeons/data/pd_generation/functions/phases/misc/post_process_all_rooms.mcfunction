# choose a random unprocessed room
tag @e remove pd_post_processing_now
execute as @e[tag=pd_room, tag=!pd_post_processed, limit=1] at @s run tag @s add pd_post_processing_now

# process this room
execute as @e[tag=pd_room, tag=pd_post_processing_now] at @s run function pd_generation:rooms/post_process_room

# add/remove tags
execute as @e[tag=pd_room, tag=pd_post_processing_now] at @s run tag @s add pd_post_processed
tag @e remove pd_post_processing_now


# check if there are rooms left to post process
scoreboard players set %unprocessed_rooms pd_level_parameters 0
execute as @e[tag=pd_room, tag=!pd_post_processed] at @s run scoreboard players add %unprocessed_rooms pd_level_parameters 1



# if there are more rooms to post process, schedule the function again
execute if score %unprocessed_rooms pd_level_parameters matches 1.. run schedule function pd_generation:phases/misc/post_process_all_rooms 1t

# if there are no more rooms, schedule the next phase
execute if score %unprocessed_rooms pd_level_parameters matches 0 run schedule function pd_generation:phases/6_finalize 1t
