# write current x coordinate to a scoreboard
execute store result score %cursor_x pd_level_parameters run data get entity @s Pos[0] 100
scoreboard players set %cursor_dx pd_level_parameters -100
scoreboard players operation %cursor_dx pd_level_parameters *= %room_size pd_level_parameters
scoreboard players operation %cursor_x pd_level_parameters += %cursor_dx pd_level_parameters
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %cursor_x pd_level_parameters
scoreboard players reset %cursor_x pd_level_parameters
scoreboard players reset %cursor_dx pd_level_parameters
