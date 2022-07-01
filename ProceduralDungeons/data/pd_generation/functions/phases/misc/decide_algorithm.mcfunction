# reset waiting observables
scoreboard players reset %lab_finished pd_level_parameters
scoreboard players reset %wfc_finished pd_level_parameters

# depending on output, call the respective generate function
execute if score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters run function pd_generation:alg_labyrinth/generate
execute if score %algorithm pd_level_parameters = %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters run function pd_generation:alg_wave_collapse/generate
execute if score %algorithm pd_level_parameters = %ALG_3_LABYRINTH_WAVE pd_level_parameters run function pd_generation:alg_labyrinth_collapse/generate

# wait for the algorithm completion
function pd_generation:phases/misc/wait_for_algorithm_completion
