# set the current number to 0
scoreboard players set %current_number pd_room_parameters 0

# remove all numbered tags
tag @e[tag=pd_room_parameters,distance=..1] remove pd_numbered

# call the recursive function
execute as @e[tag=pd_room_variation, tag=!pd_numbered, limit=1, distance=..1, sort=random] at @s run function pd_generation:rooms/variations/assign_numbers_recursive
