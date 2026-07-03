# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(1)", "color":"white"}, {"text":": preparations", "color":"gray"}]

# init the random number generator
function pd_math:rand/seed

# temporarily boost the maximum number of commands which can be run per tick (up from 65536)
gamerule maxCommandChainLength 10000000
scoreboard players set %max_variation_checks pd_level_parameters 1000
scoreboard players set %current_variation_checks pd_level_parameters 0
scoreboard players set %room_variation_checks pd_level_parameters 0
scoreboard players set %border_variation_checks pd_level_parameters 0

# schedule next phase
schedule function pd_generation:alg_wave_collapse/phases/2_initial_conditions 1t
