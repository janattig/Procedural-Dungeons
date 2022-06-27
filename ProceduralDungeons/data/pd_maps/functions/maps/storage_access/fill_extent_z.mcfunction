execute store result score %LCG_rand_min pd_math run data get storage procedural_dungeons:current_map extent_z_min
execute store result score %LCG_rand_max pd_math run data get storage procedural_dungeons:current_map extent_z_max
function pd_math:rand/update
execute store result storage procedural_dungeons:current_map extent_z int 1 run scoreboard players get %LCG_rand pd_math
