# output
tellraw @a ["",{"text":"> "},{"text":"(1)","color":"blue"},{"text":": loading level specifications"}]


# remove every level marker of previous level
kill @e[tag=pd_room]
kill @e[tag=pd_border]
kill @e[tag=pd_room_variation]
kill @e[tag=pd_border_variation]
kill @e[tag=pd_decoration]



# load the level data
function pd_generation:leveldata/load






# check if everything has been set correctly
scoreboard players set %can_be_generated pd_generation 1

# check if data is okay
execute unless data storage procedural_dungeons:current_level all_rooms[0] run scoreboard players set %can_be_generated pd_generation 0
execute unless data storage procedural_dungeons:current_level dimension run scoreboard players set %can_be_generated pd_generation 0
execute unless data storage procedural_dungeons:current_level size run scoreboard players set %can_be_generated pd_generation 0

# check if the boundaries are set correctly
execute unless score %min_grid_x pd_level_parameters matches -1000..1000 run scoreboard players set %can_be_generated pd_generation 0
execute unless score %max_grid_x pd_level_parameters matches -1000..1000 run scoreboard players set %can_be_generated pd_generation 0
execute unless score %min_grid_z pd_level_parameters matches -1000..1000 run scoreboard players set %can_be_generated pd_generation 0
execute unless score %max_grid_z pd_level_parameters matches -1000..1000 run scoreboard players set %can_be_generated pd_generation 0
execute unless score %max_num_rooms pd_level_parameters matches 1.. run scoreboard players set %can_be_generated pd_generation 0

# check if the start is set correctly
execute unless score %start_y pd_level_parameters matches ..1 unless score %start_y pd_level_parameters matches 1.. run scoreboard players set %can_be_generated pd_generation 0

# check if the algorithm is set correctly
execute unless score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters unless score %algorithm pd_level_parameters = %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters run scoreboard players set %can_be_generated pd_generation 0



# either give error or continue with next phase
execute unless score %can_be_generated pd_generation matches 1 run tellraw @a ["",{"text":"> "},{"text":"PD PHASE (1) ERROR:","color":"red"},{"text":" unable to generate level "},{"text":"(missing information)","color":"red"}]
execute unless score %can_be_generated pd_generation matches 1 run scoreboard players set %level_fully_generated pd_generation -1
# print information of level and continue to next phase
execute if score %can_be_generated pd_generation matches 1 run function pd_generation:leveldata/print_level_info
execute if score %can_be_generated pd_generation matches 1 run schedule function pd_generation:phases/2_clear_old_level 1t
