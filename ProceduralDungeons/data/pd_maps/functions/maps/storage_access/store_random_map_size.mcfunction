# generate a random size
scoreboard players operation %LCG_rand_min pd_math = %extent_min pd_maps
scoreboard players operation %LCG_rand_max pd_math = %extent_max pd_maps
function pd_math:rand/update
execute store result score %tmp_1 pd_maps run scoreboard players get %LCG_rand pd_math
function pd_math:rand/update
execute store result score %tmp_2 pd_maps run scoreboard players get %LCG_rand pd_math
scoreboard players operation %tmp_x pd_maps = %tmp_1 pd_maps
scoreboard players operation %tmp_z pd_maps = %tmp_2 pd_maps
scoreboard players operation %tmp_x pd_maps /= -2 pd_math
scoreboard players operation %tmp_z pd_maps /= -2 pd_math
scoreboard players operation %tmp_1 pd_maps /= 2 pd_math
scoreboard players operation %tmp_2 pd_maps /= 2 pd_math
scoreboard players remove %tmp_1 pd_maps 1
scoreboard players remove %tmp_2 pd_maps 1
execute store result storage procedural_dungeons:current_map min_x int 1 run scoreboard players get %tmp_x pd_maps
execute store result storage procedural_dungeons:current_map max_x int 1 run scoreboard players get %tmp_1 pd_maps
execute store result storage procedural_dungeons:current_map min_z int 1 run scoreboard players get %tmp_z pd_maps
execute store result storage procedural_dungeons:current_map max_z int 1 run scoreboard players get %tmp_2 pd_maps
