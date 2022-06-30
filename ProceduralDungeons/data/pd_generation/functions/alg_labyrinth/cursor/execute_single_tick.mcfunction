# reset the counter of moves in this tick
scoreboard players set %current_moves pd_labyrinth 0

# call the function to make moves
function pd_generation:alg_labyrinth/cursor/make_moves

# check if it should be scheduled again
execute if score %unfinished_rooms pd_level_parameters matches 1.. run schedule function pd_generation:alg_labyrinth/cursor/execute_single_tick 1t
execute unless score %unfinished_rooms pd_level_parameters matches 1.. run schedule function pd_generation:alg_labyrinth/finalize 1t

# update visuals
#execute as @e[tag=pd_room] at @s run function pd_generation:rooms/update_visuals
