# find random orientation to be compatible with underlying room
scoreboard players set %tmp_1 pd_level_parameters 0
scoreboard players set %tmp_2 pd_level_parameters 0
execute if predicate pd_generation:rand_50_50 run scoreboard players set %tmp_1 pd_level_parameters 1
execute if predicate pd_generation:rand_50_50 run scoreboard players set %tmp_2 pd_level_parameters 1
execute at @s if score %tmp_1 pd_level_parameters matches 0 if score %tmp_2 pd_level_parameters matches 0 run execute as @e[tag=pd_room,distance=..1, tag=!lab_checked_north] run tag @e[tag=lab_cursor] add lab_checking_north
execute at @s if score %tmp_1 pd_level_parameters matches 0 if score %tmp_2 pd_level_parameters matches 1 run execute as @e[tag=pd_room,distance=..1, tag=!lab_checked_south] run tag @e[tag=lab_cursor] add lab_checking_south
execute at @s if score %tmp_1 pd_level_parameters matches 1 if score %tmp_2 pd_level_parameters matches 0 run execute as @e[tag=pd_room,distance=..1, tag=!lab_checked_east] run tag @e[tag=lab_cursor] add lab_checking_east
execute at @s if score %tmp_1 pd_level_parameters matches 1 if score %tmp_2 pd_level_parameters matches 1 run execute as @e[tag=pd_room,distance=..1, tag=!lab_checked_west] run tag @e[tag=lab_cursor] add lab_checking_west
# queue again if the direction is not found
execute as @s[tag=!lab_checking_north, tag=!lab_checking_south, tag=!lab_checking_east, tag=!lab_checking_west] at @s run function pd_generation:alg_labyrinth/cursor/find_random_direction
