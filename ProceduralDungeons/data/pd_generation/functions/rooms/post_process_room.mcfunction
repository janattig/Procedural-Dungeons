# this is called as a room to self post-process

# generate a cursor
kill @e[tag=pd_pp_cursor]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["pd_pp_cursor"]}

# set parameter boundaries
execute store result score %size pd_room_parameters run data get entity @s data.size 1
execute store result score %min_x pd_room_parameters run data get entity @s Pos[0]
execute store result score %min_y pd_room_parameters run data get entity @s Pos[1]
execute store result score %min_z pd_room_parameters run data get entity @s Pos[2]
scoreboard players operation %size pd_room_parameters /= -2 pd_math
scoreboard players operation %min_x pd_room_parameters += %size pd_room_parameters
scoreboard players operation %min_z pd_room_parameters += %size pd_room_parameters
execute store result score %size pd_room_parameters run data get entity @s data.size 1
scoreboard players operation %max_x pd_room_parameters = %min_x pd_room_parameters
scoreboard players operation %max_z pd_room_parameters = %min_z pd_room_parameters
scoreboard players operation %max_x pd_room_parameters += %size pd_room_parameters
scoreboard players operation %max_z pd_room_parameters += %size pd_room_parameters
scoreboard players operation %size_y pd_room_parameters = %post_processing_size_y pd_level_parameters
scoreboard players operation %max_y pd_room_parameters = %size_y pd_room_parameters
scoreboard players operation %max_y pd_room_parameters += %min_y pd_room_parameters
scoreboard players add %min_x pd_room_parameters 1
scoreboard players add %min_z pd_room_parameters 1
# set the minimal values in the cursor
execute store result entity @e[tag=pd_pp_cursor,limit=1] Pos[0] double 1.0 run scoreboard players get %min_x pd_room_parameters
execute store result entity @e[tag=pd_pp_cursor,limit=1] Pos[2] double 1.0 run scoreboard players get %min_z pd_room_parameters


# place all rows from the cursor on
execute as @e[tag=pd_pp_cursor, limit=1] at @s run function pd_generation:rooms/post_processing/single_volume


# kill the cursor
kill @e[tag=pd_pp_cursor]

# reset scoreboards
scoreboard players reset %min_x pd_level_parameters
scoreboard players reset %min_y pd_level_parameters
scoreboard players reset %min_z pd_level_parameters
