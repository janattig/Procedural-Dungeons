# depending on algorithm, check the respective progress
scoreboard players set %can_be_generated pd_generation 0
execute if score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters if score %lab_finished pd_level_parameters matches 1 run scoreboard players set %can_be_generated pd_generation 1
execute if score %algorithm pd_level_parameters = %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters if score %wfc_finished pd_level_parameters matches 1 run scoreboard players set %can_be_generated pd_generation 1

# if generation can continue, schedule next phase, otherwise, schedule this function for next tick again
execute if score %can_be_generated pd_generation matches 0 run schedule function pd_generation:phases/misc/wait_for_algorithm_completion 5t
execute if score %can_be_generated pd_generation matches 1 run schedule function pd_generation:phases/4_spawn_rooms 1t

# debugging output
execute if score %can_be_generated pd_generation matches 1 run tellraw @a [{"text":"  > algorithm finished", "color":"gray"}]
