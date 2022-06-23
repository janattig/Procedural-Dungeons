# add scoreboard for maps
scoreboard objectives add pd_math dummy


# setup random number generation
scoreboard players set %LCG_a pd_math 1664525
scoreboard players set %LCG_c pd_math 1013904223
scoreboard players set %LCG_current pd_math 1
scoreboard players set %LCG_rand_min pd_math 0
scoreboard players set %LCG_rand_max pd_math 10
scoreboard players set %LCG_range pd_math 10
scoreboard players set %LCG_rand pd_math 4

# seed the LCG random number generation
function pd_math:rand/seed


# math
scoreboard players set 2 pd_math 2
scoreboard players set -2 pd_math -2
scoreboard players set -1 pd_math -1
