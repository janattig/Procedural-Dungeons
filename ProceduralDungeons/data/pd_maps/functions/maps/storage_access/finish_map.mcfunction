# calculate the size dx
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map min_x
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map max_x
scoreboard players set %tmp_dx pd_maps 1
scoreboard players operation %tmp_dx pd_maps += %tmp2 pd_maps
scoreboard players operation %tmp_dx pd_maps -= %tmp1 pd_maps
execute store result storage procedural_dungeons:current_map dx int 1 run scoreboard players get %tmp_dx pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp_dx pd_maps
# calculate the size dz
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map min_z
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map max_z
scoreboard players set %tmp_dz pd_maps 1
scoreboard players operation %tmp_dz pd_maps += %tmp2 pd_maps
scoreboard players operation %tmp_dz pd_maps -= %tmp1 pd_maps
execute store result storage procedural_dungeons:current_map dz int 1 run scoreboard players get %tmp_dz pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp_dz pd_maps


# generate scoreboard value if the map is a ttt map
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map is_ttt
execute if score %tmp1 pd_maps matches 1 run scoreboard players set %is_ttt_map pd_maps 1
execute if score %tmp1 pd_maps matches 0 run scoreboard players set %is_ttt_map pd_maps 0
execute if score %tmp1 pd_maps matches 0 run data modify storage procedural_dungeons:current_map is_ttt set value 0
scoreboard players reset %tmp1 pd_maps

# generate scoreboard value if the map is assembled by which algorithm
scoreboard players set %is_labyrinth pd_maps 0
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map algorithm
execute if score %tmp1 pd_maps = %ALG_1_LABYRINTH pd_level_parameters run scoreboard players set %is_labyrinth pd_maps 1
scoreboard players reset %tmp1 pd_maps


# calculate the number of rooms
execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map dx
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map dz
execute store result score %tmp pd_maps run data get storage procedural_dungeons:current_map room_filling_percentage
scoreboard players operation %tmp pd_maps *= %tmp2 pd_maps
scoreboard players operation %tmp pd_maps *= %tmp1 pd_maps
scoreboard players operation %tmp pd_maps /= 100 pd_math
execute store result storage procedural_dungeons:current_map num_rooms int 1 run scoreboard players get %tmp pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp pd_maps
