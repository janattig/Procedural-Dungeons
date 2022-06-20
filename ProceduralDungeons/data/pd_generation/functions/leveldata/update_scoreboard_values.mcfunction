# update the scoreboard values describing the level data

# check if the start has been set
execute unless score %start_y pd_level_parameters matches ..1 unless score %start_y pd_level_parameters matches 1.. run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(start y)","color":"red"}]

# check if the grid has been set
execute unless score %min_grid_x pd_level_parameters matches -1000..1000 run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(min x grid size)","color":"red"}]
execute unless score %max_grid_x pd_level_parameters matches -1000..1000 run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(max x grid size)","color":"red"}]
execute unless score %min_grid_z pd_level_parameters matches -1000..1000 run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(min z grid size)","color":"red"}]
execute unless score %max_grid_z pd_level_parameters matches -1000..1000 run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(max z grid size)","color":"red"}]

# update the size
scoreboard players reset %room_size pd_level_parameters
execute if data storage procedural_dungeons:current_level size store result score %room_size pd_level_parameters run data get storage procedural_dungeons:current_level size 1

# update the dimension
scoreboard players reset %dimension pd_level_parameters
execute if data storage procedural_dungeons:current_level dimension store result score %dimension pd_level_parameters run data get storage procedural_dungeons:current_level dimension 1

# update the min and max of coordinates
execute if score %min_grid_x pd_level_parameters matches -1000..1000 run scoreboard players operation %min_x pd_level_parameters = %min_grid_x pd_level_parameters
execute if score %min_grid_x pd_level_parameters matches -1000..1000 run scoreboard players operation %min_x pd_level_parameters *= %room_size pd_level_parameters
execute if score %max_grid_x pd_level_parameters matches -1000..1000 run scoreboard players operation %max_x pd_level_parameters = %max_grid_x pd_level_parameters
execute if score %max_grid_x pd_level_parameters matches -1000..1000 run scoreboard players operation %max_x pd_level_parameters *= %room_size pd_level_parameters
execute if score %min_grid_z pd_level_parameters matches -1000..1000 run scoreboard players operation %min_z pd_level_parameters = %min_grid_z pd_level_parameters
execute if score %min_grid_z pd_level_parameters matches -1000..1000 run scoreboard players operation %min_z pd_level_parameters *= %room_size pd_level_parameters
execute if score %max_grid_z pd_level_parameters matches -1000..1000 run scoreboard players operation %max_z pd_level_parameters = %max_grid_z pd_level_parameters
execute if score %max_grid_z pd_level_parameters matches -1000..1000 run scoreboard players operation %max_z pd_level_parameters *= %room_size pd_level_parameters

# check if the algorithm is set correctly
execute unless score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters unless score %algorithm pd_level_parameters = %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters run tellraw @a ["",{"text":"> "},{"text":"PD GEN ERROR:","color":"red"},{"text":" missing scoreboard value "},{"text":"(algorithm)","color":"red"}]
