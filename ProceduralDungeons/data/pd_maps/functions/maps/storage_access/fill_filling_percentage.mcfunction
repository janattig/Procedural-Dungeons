execute store result score %LCG_rand_min pd_math run data get storage procedural_dungeons:current_map room_filling_percentage_min
execute store result score %LCG_rand_max pd_math run data get storage procedural_dungeons:current_map room_filling_percentage_max
function pd_math:rand/update
execute store result storage procedural_dungeons:current_map room_filling_percentage int 1 run scoreboard players get %LCG_rand pd_math
