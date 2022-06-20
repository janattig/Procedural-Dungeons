# make a new entry
data modify storage procedural_dungeons:current_level all_variations insert 0 from storage procedural_dungeons:current_level all_rooms_tmp[0]

# set scoreboard connectivity
execute store result score %connection_n pd_room_parameters run data get storage procedural_dungeons:current_level all_variations[0].north
execute store result score %connection_s pd_room_parameters run data get storage procedural_dungeons:current_level all_variations[0].south
execute store result score %connection_e pd_room_parameters run data get storage procedural_dungeons:current_level all_variations[0].east
execute store result score %connection_w pd_room_parameters run data get storage procedural_dungeons:current_level all_variations[0].west

# turn block accordingly
execute store result storage procedural_dungeons:current_level all_variations[0].north int 1 run scoreboard players get %connection_e pd_room_parameters
execute store result storage procedural_dungeons:current_level all_variations[0].south int 1 run scoreboard players get %connection_w pd_room_parameters
execute store result storage procedural_dungeons:current_level all_variations[0].east int 1 run scoreboard players get %connection_s pd_room_parameters
execute store result storage procedural_dungeons:current_level all_variations[0].west int 1 run scoreboard players get %connection_n pd_room_parameters

# find out the offsets in structure block
scoreboard players operation %room_size_mod_2 pd_level_parameters = %room_size pd_level_parameters
scoreboard players operation %room_size_mod_2 pd_level_parameters %= 2 pd_math
scoreboard players operation %posX pd_room_parameters = %room_size pd_level_parameters
scoreboard players operation %posZ pd_room_parameters = %room_size pd_level_parameters
execute if score %room_size_mod_2 pd_level_parameters matches 1 run scoreboard players remove %posX pd_room_parameters 1
execute if score %room_size_mod_2 pd_level_parameters matches 1 run scoreboard players remove %posZ pd_room_parameters 1
scoreboard players operation %posX pd_room_parameters /= -2 pd_math
scoreboard players operation %posZ pd_room_parameters /= 2 pd_math
execute if score %room_size_mod_2 pd_level_parameters matches 0 if score %posX pd_room_parameters matches ..0 run scoreboard players add %posX pd_room_parameters 1
execute if score %room_size_mod_2 pd_level_parameters matches 0 if score %posZ pd_room_parameters matches ..0 run scoreboard players add %posZ pd_room_parameters 1

# add structure block data to the variation
data modify storage procedural_dungeons:current_level all_variations[0].rotation set value "COUNTERCLOCKWISE_90"
data modify storage procedural_dungeons:current_level all_variations[0].posY set value 0
execute store result storage procedural_dungeons:current_level all_variations[0].posX int 1 run scoreboard players get %posX pd_room_parameters
execute store result storage procedural_dungeons:current_level all_variations[0].posZ int 1 run scoreboard players get %posZ pd_room_parameters
data remove storage procedural_dungeons:current_level all_variations[0].map
