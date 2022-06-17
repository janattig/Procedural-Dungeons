# print dimension
tellraw @a [{"text":"  > generating a ", "color":"gray"},{"storage":"procedural_dungeons:current_level", "nbt":"all_rooms[0].map", "color":"white"},{"text":" level (dim=", "color":"gray"}, {"storage":"procedural_dungeons:current_level", "nbt":"dimension", "color":"white"},{"text":")", "color":"gray"}]

# print room size
tellraw @a [{"text":"  > rooms have size ", "color":"gray"},{"storage":"procedural_dungeons:current_level", "nbt":"size", "color":"white"},{"text":"x", "color":"gray"}, {"storage":"procedural_dungeons:current_level", "nbt":"size", "color":"white"}]

# print grid size
scoreboard players operation %tmp_1 pd_level_parameters = %max_grid_x pd_level_parameters
scoreboard players operation %tmp_1 pd_level_parameters -= %min_grid_x pd_level_parameters
scoreboard players operation %tmp_2 pd_level_parameters = %max_grid_z pd_level_parameters
scoreboard players operation %tmp_2 pd_level_parameters -= %min_grid_z pd_level_parameters
tellraw @a [{"text":"  > grid contains ", "color":"gray"},{"score":{"name":"%tmp_1","objective":"pd_level_parameters"}, "color":"white"},{"text":"x", "color":"gray"}, {"score":{"name":"%tmp_2","objective":"pd_level_parameters"}, "color":"white"},{"text":" rooms", "color":"gray"}]
scoreboard players reset %tmp_1 pd_level_parameters
scoreboard players reset %tmp_2 pd_level_parameters
