# depending on output, call the respective generate function
execute if score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters run function pd_generation:alg_labyrinth/generate
execute if score %algorithm pd_level_parameters = %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters run function pd_generation:alg_wave_collapse/generate
