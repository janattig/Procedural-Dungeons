# add scoreboard for maps
scoreboard objectives add pd_maps dummy


# setup random number generation
scoreboard players set %LCG_a pd_maps 22695477
scoreboard players set %LCG_c pd_maps 1
scoreboard players set %LCG_current pd_maps 1
scoreboard players set %LCG_rand_min pd_maps 0
scoreboard players set %LCG_rand_max pd_maps 10
scoreboard players set %LCG_range pd_maps 10
scoreboard players set %LCG_rand pd_maps 4

# seed the LCG random number generation
function pd_maps:rand/seed
