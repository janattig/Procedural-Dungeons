# output
tellraw @a ["",{"text":"Generating a new "},{"text":"Procedural Dungeon","color":"blue"},{"text":" level"}]


# ONLY FOR DEBUGGING: SPECIFY STUFF
scoreboard players set %level_to_generate pd_generation 5

scoreboard players set %start_x pd_level_parameters 0
scoreboard players set %start_y pd_level_parameters 100
scoreboard players set %start_z pd_level_parameters 0

scoreboard players set %min_grid_x pd_level_parameters -1
scoreboard players set %max_grid_x pd_level_parameters 1
scoreboard players set %min_grid_z pd_level_parameters -2
scoreboard players set %max_grid_z pd_level_parameters 2

scoreboard players operation %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters


# trigger the first phase
schedule function pd_generation:phases/1_load_specifications 1t
