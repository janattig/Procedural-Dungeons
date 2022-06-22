# generate new random number using LCG
scoreboard players operation %LCG_current pd_maps *= %LCG_a pd_maps
scoreboard players operation %LCG_current pd_maps += %LCG_c pd_maps

# extract random number in range from this
scoreboard players set %LCG_range pd_maps 1
scoreboard players operation %LCG_range pd_maps += %LCG_rand_max pd_maps
scoreboard players operation %LCG_range pd_maps -= %LCG_rand_min pd_maps
scoreboard players operation %LCG_rand pd_maps = %LCG_current pd_maps
scoreboard players operation %LCG_rand pd_maps %= %LCG_range pd_maps
scoreboard players operation %LCG_rand pd_maps += %LCG_rand_min pd_maps
