# summon a temporary marker at the current position
summon marker ~ ~ ~ {Tags:["pd_dim_reset_marker_cave_tmp"]}

# load the current region
execute store result entity @e[type=marker, tag=pd_dim_reset_marker_cave_tmp, limit=1, sort=nearest] Pos[0] double 1 run data get storage pd_dimensions:cave_world reset_regions[0][0] 1
execute store result entity @e[type=marker, tag=pd_dim_reset_marker_cave_tmp, limit=1, sort=nearest] Pos[2] double 1 run data get storage pd_dimensions:cave_world reset_regions[0][2] 1
# load the region size to a temporary scoreboard value
execute store result score %reset_region_size pd_dimension_cave run data get storage pd_dimensions:cave_world reset_regions[0][1] 1


# choose how to reset depending on region size
execute if score %reset_region_size pd_dimension_cave matches 11 as @e[type=marker, tag=pd_dim_reset_marker_cave_tmp, limit=1, sort=nearest] at @s run function pd_dimensions:cave_world/reset/reset_11x11_here
# probably missed the size while storing
execute if score %reset_region_size pd_dimension_cave matches -1 as @e[type=marker, tag=pd_dim_reset_marker_cave_tmp, limit=1, sort=nearest] at @s run say missing size?

# reset temporary score
scoreboard players reset %reset_region_size pd_dimension_cave
# kill the marker
kill @e[type=marker, tag=pd_dim_reset_marker_cave_tmp]
# remove the data from the list
data remove storage pd_dimensions:cave_world reset_regions[0]
