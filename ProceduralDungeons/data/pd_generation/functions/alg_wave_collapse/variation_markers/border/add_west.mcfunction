# west = negative X
# callled as the marker

# teleport the cursor to here
tp @e[tag=wfc_cursor] ~ ~ ~

# move cursor north by half the required distance
execute store result score %current_x wfc_coordinates run data get entity @e[tag=wfc_cursor, limit=1, sort=nearest] Pos[0] 100
scoreboard players operation %current_x wfc_coordinates += %d_west wfc_distances
execute store result entity @e[tag=wfc_cursor,limit=1] Pos[0] double 0.01 run scoreboard players get %current_x wfc_coordinates
scoreboard players reset %current_x wfc_coordinates

# summon a border marker at the cursor
execute at @e[tag=wfc_cursor] run function pd_generation:alg_wave_collapse/variation_markers/border/generate_marker_here
# tag the resulting border with the direction
execute at @e[tag=wfc_cursor] run tag @e[tag=pd_border, distance=..0.1] add wfc_has_east


# remove the need for a west connection
tag @s remove wfc_need_west
