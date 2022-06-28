# give itself a tag for comparison purposes
tag @e remove pd_to_be_compared_to

# look in all other spawned rooms for the same id and de-prioritize if found
execute as @e[tag=pd_room, tag=pd_spawned, distance=1..] run execute if score @s pd_room_id = @e[tag=pd_to_be_compared_to, limit=1] pd_room_id run scoreboard players remove @e[tag=pd_to_be_compared_to, limit=1] pd_room_priority 1

# indicate that itself is done
tag @s add pd_has_priority
tag @s remove pd_to_be_compared_to

# call again
execute as @e[tag=pd_room_variation, tag=!pd_has_priority, limit=1, distance=..1] run function pd_generation:rooms/variations/assign_priority_from_other_ids_recursive
