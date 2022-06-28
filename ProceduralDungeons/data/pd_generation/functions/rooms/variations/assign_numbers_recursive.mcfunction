# called recursively by a variation to make itself have a number

# increment number
scoreboard players add %current_number pd_room_parameters 1

# set itself as the current number
scoreboard players operation @s pd_room_parameters = %current_number pd_room_parameters

# add a tag to self that it is number
tag @s add pd_numbered

# call the function again
execute as @e[tag=pd_room_variation, tag=!pd_numbered, limit=1, distance=..1, sort=random] at @s run function pd_generation:rooms/variations/assign_numbers_recursive
