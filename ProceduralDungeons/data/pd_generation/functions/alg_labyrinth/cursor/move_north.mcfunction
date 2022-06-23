# write current z coordinate to a scoreboard
execute store result score %cursor_z pd_level_parameters run data get entity @s Pos[2] 100
scoreboard players set %cursor_dz pd_level_parameters -100
scoreboard players operation %cursor_dz pd_level_parameters *= %room_size pd_level_parameters
scoreboard players operation %cursor_z pd_level_parameters += %cursor_dz pd_level_parameters
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %cursor_z pd_level_parameters
scoreboard players reset %cursor_z pd_level_parameters
scoreboard players reset %cursor_dz pd_level_parameters
