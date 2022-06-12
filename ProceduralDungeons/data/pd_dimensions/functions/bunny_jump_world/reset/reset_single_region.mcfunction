# resets the first recorded region of the bunny_jump world
# needs to be executed in bunny_jump world

# summon a temporary marker at the current position
summon marker ~ ~ ~ {Tags:["pd_dim_reset_marker_tmp"]}

# load the current region
execute store result entity @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1, sort=nearest] Pos[0] double 1 run data get storage pd_dimensions:bunny_jump_world reset_regions[0][0] 1
execute store result entity @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1, sort=nearest] Pos[2] double 1 run data get storage pd_dimensions:bunny_jump_world reset_regions[0][2] 1
# load the region size to a temporary scoreboard value
scoreboard players set %reset_region_size pd_dimension_bunny_jump -1
execute store result score %reset_region_size pd_dimension_bunny_jump run data get storage pd_dimensions:bunny_jump_world reset_regions[0][1] 1


# choose how to reset depending on region size
execute if score %reset_region_size pd_dimension_bunny_jump matches 14..15 as @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1, sort=nearest] at @s run function pd_dimensions:bunny_jump_world/reset/reset_15x15_here
# probably missed the size while storing, execute 11x11 as a fallback
execute unless score %reset_region_size pd_dimension_bunny_jump matches 14..15 as @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1, sort=nearest] at @s run tellraw @a ["",{"text":"> "},{"text":"PD DIM (bunny_jump) ERROR:","color":"red"},{"text":" unable to reset "},{"score":{"name":"%reset_region_size","objective":"pd_dimension_bunny_jump"},"color":"red"},{"text":"x"},{"score":{"name":"%reset_region_size","objective":"pd_dimension_bunny_jump"},"color":"red"},{"text":" region"}]
#execute unless score %reset_region_size pd_dimension_bunny_jump matches 11 as @e[type=marker, tag=pd_dim_reset_marker_bunny_jump_tmp, limit=1, sort=nearest] at @s run function pd_dimensions:bunny_jump_world/reset/reset_11x11_here

# reset temporary score
scoreboard players reset %reset_region_size pd_dimension_bunny_jump
# kill the marker
kill @e[type=marker, tag=pd_dim_reset_marker_tmp]
# remove the data from the list
data remove storage pd_dimensions:bunny_jump_world reset_regions[0]
