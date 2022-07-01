# depending on algorithm, check the respective progress
scoreboard players set %tmp_alg3_ready pd_generation 0
execute if score %lab_finished pd_level_parameters matches 1 run scoreboard players set %tmp_alg3_ready pd_generation 1

# if generation can continue, schedule next phase, otherwise, schedule this function for next tick again
execute if score %tmp_alg3_ready pd_generation matches 0 run schedule function pd_generation:alg_labyrinth_collapse/wait_for_labyrinth_completion 1t
execute if score %tmp_alg3_ready pd_generation matches 1 run schedule function pd_generation:alg_labyrinth_collapse/start_wave_collapse 1t

# debugging output
execute if score %tmp_alg3_ready pd_generation matches 1 run tellraw @a [{"text":"  > switching algorithms to wave collapse", "color":"gray"}]
scoreboard players reset %tmp_alg3_ready pd_generation
