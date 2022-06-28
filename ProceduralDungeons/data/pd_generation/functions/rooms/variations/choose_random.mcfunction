# choose the room variation marker at random

# assign numbers to the variations
function pd_generation:rooms/variations/assign_numbers

# choose a random number between 1 and the current number
scoreboard players set %LCG_rand_min pd_math 1
scoreboard players operation %LCG_rand_max pd_math = %current_number pd_room_parameters
function pd_math:rand/update
scoreboard players operation %chosen_number pd_room_parameters = %LCG_rand pd_math

# select the chosen room variation
execute as @e[tag=pd_room_variation, distance=..1] run execute if score @s pd_room_parameters = %chosen_number pd_room_parameters run tag @s add pd_chosen

# kill all non-chosen markers
kill @e[tag=pd_room_variation, distance=..1, tag=!pd_chosen]
