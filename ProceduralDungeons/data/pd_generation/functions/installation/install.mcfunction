# scoreboards and variables


# set basic booleans

# add scoreboard for basic content
scoreboard objectives add pd_generation dummy

# which level to generate (needs to be set in order to call "generate" function)
scoreboard players reset %level_to_generate pd_generation
# indicator if currently generating or idle
scoreboard players set %generation_in_progress pd_generation 0



# common generation parameters
scoreboard objectives add pd_level_parameters dummy
# size of rooms (x and z dimensions)
scoreboard players reset %room_size pd_level_parameters
# coordinate boundaries
scoreboard players reset %min_x pd_level_parameters
scoreboard players reset %min_z pd_level_parameters
scoreboard players reset %max_x pd_level_parameters
scoreboard players reset %max_z pd_level_parameters
# number of room boundaries
scoreboard players reset %min_grid_x pd_level_parameters
scoreboard players reset %min_grid_z pd_level_parameters
scoreboard players reset %max_grid_x pd_level_parameters
scoreboard players reset %max_grid_z pd_level_parameters
# dimension
scoreboard players reset %dimension pd_level_parameters
# algorithm for generation
scoreboard players reset %algorithm pd_level_parameters
scoreboard players set %ALG_1_LABYRINTH pd_level_parameters 1
scoreboard players set %ALG_2_WAVEFUNCTION_COLLAPSE pd_level_parameters 2
# algorithm start position
scoreboard players reset %start_y pd_level_parameters



# information of final rooms
# each room marker save its border types in these scoreboards
scoreboard objectives add pd_room_border_n dummy
scoreboard objectives add pd_room_border_s dummy
scoreboard objectives add pd_room_border_e dummy
scoreboard objectives add pd_room_border_w dummy






# data access

# clear data
function pd_generation:leveldata/clear_current_level_data

# init the level data (add all bare room information)
function pd_generation:leveldata/init

# finalize level data (add missing information and throw out rooms that have not enough information)
function pd_generation:leveldata/finalize
