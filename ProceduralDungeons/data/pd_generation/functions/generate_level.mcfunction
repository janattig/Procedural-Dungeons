# output
tellraw @a ["",{"text":"Generating a new "},{"text":"Procedural Dungeon","color":"blue"},{"text":" level"}]


# ONLY FOR DEBUGGING: SPECIFY STUFF
scoreboard players set %level_to_generate pd_generation -3

scoreboard players set %min_grid_x pd_level_parameters -2
scoreboard players set %max_grid_x pd_level_parameters 3
scoreboard players set %min_grid_z pd_level_parameters -2
scoreboard players set %max_grid_z pd_level_parameters 2

scoreboard players set %max_num_rooms pd_level_parameters 17
#scoreboard players set %lab_loop_percentage pd_level_parameters 20

scoreboard players operation %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters


# trigger the first phase
schedule function pd_generation:phases/1_load_specifications 1t
