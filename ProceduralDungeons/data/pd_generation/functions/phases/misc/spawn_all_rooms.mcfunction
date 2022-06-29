# choose a random unspawned room
tag @e remove pd_spawning_now
execute as @e[tag=pd_room, tag=!pd_spawned, limit=1, sort=random] at @s run tag @s add pd_spawning_now

# spawn this room
execute as @e[tag=pd_room, tag=pd_spawning_now] at @s run function pd_generation:rooms/spawn_room

# add/remove tags
execute as @e[tag=pd_room, tag=pd_spawning_now] at @s run tag @s add pd_spawned
tag @e remove pd_spawning_now


# check if there are rooms left to spawn
scoreboard players set %unspawned_rooms pd_level_parameters 0
execute as @e[tag=pd_room, tag=!pd_spawned] at @s run scoreboard players add %unspawned_rooms pd_level_parameters 1



# if there are more rooms to spawn, schedule the function again
execute if score %unspawned_rooms pd_level_parameters matches 1.. run schedule function pd_generation:phases/misc/spawn_all_rooms 5t

# if there are no more rooms, schedule the next phase
execute if score %unspawned_rooms pd_level_parameters matches 0 run schedule function pd_generation:phases/5_post_process_rooms 20t
