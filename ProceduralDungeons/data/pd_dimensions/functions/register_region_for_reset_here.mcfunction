# summon a temporary marker at the current position
summon marker ~ ~ ~ {Tags:["pd_dim_marker_tmp"]}

# write the current dimension into the scoreboard
execute as @e[type=marker, tag=pd_dim_marker_tmp, limit=1, sort=nearest] at @s run function pd_dimensions:set_current_dimension_scoreboard

# make a new entry in the reset region list
data modify storage procedural_dungeons:reset_regions to_be_reset insert 0 value [0d,0d,0d,0d,0d]

# save the marker coordinates to the new entry
data modify storage procedural_dungeons:reset_regions to_be_reset[0][0] set from entity @e[tag=pd_dim_marker_tmp,limit=1] Pos[0]
data modify storage procedural_dungeons:reset_regions to_be_reset[0][1] set from entity @e[tag=pd_dim_marker_tmp,limit=1] Pos[1]
data modify storage procedural_dungeons:reset_regions to_be_reset[0][2] set from entity @e[tag=pd_dim_marker_tmp,limit=1] Pos[2]
# write the current region size into the new entry (it will not be used anyway)
execute store result storage procedural_dungeons:reset_regions to_be_reset[0][3] double 1 run scoreboard players get %reset_region_size pd_dimensions
# write the current dimension into the new entry (it will not be used anyway)
execute store result storage procedural_dungeons:reset_regions to_be_reset[0][4] double 1 run scoreboard players get %current_dimension pd_dimensions

# kill the marker
kill @e[type=marker, tag=pd_dim_marker_tmp]
