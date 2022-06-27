execute store result score %tmp_extent pd_maps run data get storage procedural_dungeons:current_map extent_z

scoreboard players operation %tmp_min pd_maps = %tmp_extent pd_maps
scoreboard players operation %tmp_max pd_maps = %tmp_extent pd_maps
scoreboard players operation %tmp_min pd_maps /= -2 pd_math
scoreboard players add %tmp_min pd_maps 1
scoreboard players operation %tmp_max pd_maps /= 2 pd_math

execute store result storage procedural_dungeons:current_map min_z int 1 run scoreboard players get %tmp_min pd_maps
execute store result storage procedural_dungeons:current_map max_z int 1 run scoreboard players get %tmp_max pd_maps

scoreboard players reset %tmp_extent pd_maps
scoreboard players reset %tmp_min pd_maps
scoreboard players reset %tmp_max pd_maps
