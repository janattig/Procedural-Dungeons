# set the boundaries of rng
scoreboard players set %LCG_rand_min pd_math 1
scoreboard players set %LCG_rand_max pd_math 6

# new random number
function pd_math:rand/update

# decide based on the number which map to give
execute if score %LCG_rand pd_math matches 1 run function pd_maps:maps/get_bunny_jump_ttt_map
execute if score %LCG_rand pd_math matches 2 run function pd_maps:maps/get_canyon_ttt_map
execute if score %LCG_rand pd_math matches 3 run function pd_maps:maps/get_caves_ttt_map
execute if score %LCG_rand pd_math matches 4 run function pd_maps:maps/get_desert_ttt_map
execute if score %LCG_rand pd_math matches 5 run function pd_maps:maps/get_sewers_ttt_map
execute if score %LCG_rand pd_math matches 6 run function pd_maps:maps/get_skyblock_ttt_map
