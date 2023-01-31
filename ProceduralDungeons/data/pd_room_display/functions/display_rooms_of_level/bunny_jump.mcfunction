# remporary level selection
scoreboard players set %level_to_generate pd_generation 5
scoreboard players set %min_grid_x pd_level_parameters -1
scoreboard players set %max_grid_x pd_level_parameters 1
scoreboard players set %min_grid_z pd_level_parameters -1
scoreboard players set %max_grid_z pd_level_parameters 1
scoreboard players set %max_num_rooms pd_level_parameters 5
scoreboard players set %lab_loop_percentage pd_level_parameters 10
scoreboard players operation %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters
function pd_generation:leveldata/load

# call master function
function pd_room_display:display_rooms_of_current_level_here