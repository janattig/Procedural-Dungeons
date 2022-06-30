# output
tellraw @a [{"text":"  > building ", "color":"gray"}, {"text":"collapsed wavefunction", "color":"white"}, {"text":" layout", "color":"gray"}]

# indicate that the wfc is not finished
scoreboard players set %wfc_finished pd_level_parameters 0

# run first phase
function pd_generation:alg_wave_collapse/phases/1_preparations
