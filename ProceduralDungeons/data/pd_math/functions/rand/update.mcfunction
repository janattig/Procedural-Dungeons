# generate new random number using LCG
scoreboard players operation %LCG_current pd_math *= %LCG_a pd_math
scoreboard players operation %LCG_current pd_math += %LCG_c pd_math
scoreboard players operation %LCG_current pd_math %= %LCG_m pd_math

# extract random number in range from this
scoreboard players set %LCG_range pd_math 1
scoreboard players operation %LCG_range pd_math += %LCG_rand_max pd_math
scoreboard players operation %LCG_range pd_math -= %LCG_rand_min pd_math
scoreboard players operation %LCG_rand pd_math = %LCG_current pd_math
scoreboard players operation %LCG_rand pd_math /= %LCG_bits pd_math
scoreboard players operation %LCG_rand pd_math %= %LCG_range pd_math
scoreboard players operation %LCG_rand pd_math += %LCG_rand_min pd_math
