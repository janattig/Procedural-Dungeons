execute store result score %tmp1 pd_maps run data get storage procedural_dungeons:current_map dx
execute store result score %tmp2 pd_maps run data get storage procedural_dungeons:current_map dz
execute store result score %tmp pd_maps run data get storage procedural_dungeons:current_map num_rooms
scoreboard players operation %tmp pd_maps *= 100 pd_math
scoreboard players operation %tmp1 pd_maps *= %tmp2 pd_maps
scoreboard players operation %tmp pd_maps /= %tmp1 pd_maps
execute store result storage procedural_dungeons:current_map room_filling_percentage int 1 run scoreboard players get %tmp pd_maps
scoreboard players reset %tmp1 pd_maps
scoreboard players reset %tmp2 pd_maps
scoreboard players reset %tmp pd_maps
