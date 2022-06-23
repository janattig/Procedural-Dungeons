# make a single move
execute as @e[tag=lab_cursor] at @s run function pd_generation:alg_labyrinth/cursor/make_single_move

# see if there are unfinished rooms
scoreboard players set %unfinished_rooms pd_level_parameters 0
execute as @e[tag=pd_room, tag=!lab_finished, tag=lab_connected] run scoreboard players add %unfinished_rooms pd_level_parameters 1

# run function again if there are rooms left
execute if score %unfinished_rooms pd_level_parameters matches 1.. run function pd_generation:alg_labyrinth/cursor/make_moves
