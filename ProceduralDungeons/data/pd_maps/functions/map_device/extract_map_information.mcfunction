# ONLY FOR DEBUGGING: SPECIFY STUFF EXPLICITLY

# save the data from the map into the scoreboards of the level generation
execute store result score %level_to_generate pd_generation run data get entity @e[type=minecraft:item_frame, distance=..3, limit=1] Item.tag.id
execute store result score %min_grid_x pd_level_parameters run data get entity @e[type=minecraft:item_frame, distance=..3, limit=1] Item.tag.min_x
execute store result score %max_grid_x pd_level_parameters run data get entity @e[type=minecraft:item_frame, distance=..3, limit=1] Item.tag.max_x
execute store result score %min_grid_z pd_level_parameters run data get entity @e[type=minecraft:item_frame, distance=..3, limit=1] Item.tag.min_z
execute store result score %max_grid_z pd_level_parameters run data get entity @e[type=minecraft:item_frame, distance=..3, limit=1] Item.tag.max_z


scoreboard players set %max_num_rooms pd_level_parameters 17
scoreboard players set %lab_loop_percentage pd_level_parameters 20

scoreboard players operation %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters
