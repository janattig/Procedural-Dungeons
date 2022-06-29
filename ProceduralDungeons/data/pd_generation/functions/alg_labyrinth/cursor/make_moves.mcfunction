# make a single move
execute as @e[tag=lab_cursor] at @s run function pd_generation:alg_labyrinth/cursor/make_single_move

# see if there are unfinished rooms
scoreboard players set %unfinished_rooms pd_level_parameters 0
execute as @e[tag=pd_room, tag=!lab_finished, tag=lab_connected] run scoreboard players add %unfinished_rooms pd_level_parameters 1

# see how many rooms there are connected in total
scoreboard players set %num_rooms pd_level_parameters 0
execute as @e[tag=pd_room, tag=lab_connected] run scoreboard players add %num_rooms pd_level_parameters 1

# add a move to the counter
scoreboard players add %current_moves pd_labyrinth 1

# run function again if there are rooms left
execute if score %unfinished_rooms pd_level_parameters matches 1.. if score %current_moves pd_labyrinth < %moves_per_tick pd_labyrinth run function pd_generation:alg_labyrinth/cursor/make_moves
