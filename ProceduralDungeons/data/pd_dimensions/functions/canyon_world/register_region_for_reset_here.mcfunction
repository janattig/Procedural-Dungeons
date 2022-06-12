# summon a temporary marker at the current position
summon marker ~ ~ ~ {Tags:["pd_dim_marker_tmp"]}
# write the current region size into the y coordinate (it will not be used anyway)
execute store result entity @e[type=marker, tag=pd_dim_marker_tmp, limit=1, sort=nearest] Pos[1] double 1 run scoreboard players get %reset_region_size pd_dimension_parameters

# save the marker coordinates to the list of regions that need resetting
data modify storage pd_dimensions:canyon_world reset_regions append from entity @e[tag=pd_dim_marker_tmp,limit=1] Pos

# kill the marker
kill @e[type=marker, tag=pd_dim_marker_tmp]

# show that there has been modifications
scoreboard players set %has_been_modified pd_dimension_canyon 1
