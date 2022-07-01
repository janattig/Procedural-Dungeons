# output
tellraw @a [{"text":"  > building ", "color":"gray"}, {"text":"labyrinth wavefunction", "color":"white"}, {"text":" layout", "color":"gray"}]

# indicate that the lab and the wfc is not finished
scoreboard players set %lab_finished pd_level_parameters 0
scoreboard players set %wfc_finished pd_level_parameters 0

# init the random number generator
function pd_math:rand/seed

# trigger the labyrinth generation
function pd_generation:alg_labyrinth/generate

# schedule a wait function for labyrinth completion
schedule function pd_generation:alg_labyrinth_collapse/wait_for_labyrinth_completion 1t
