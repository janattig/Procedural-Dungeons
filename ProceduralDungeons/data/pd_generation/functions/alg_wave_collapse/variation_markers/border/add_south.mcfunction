# south = positive Z
# callled as the marker

# teleport the cursor to here
tp @e[tag=wfc_cursor] ~ ~ ~

# move cursor north by half the required distance
execute store result score %current_z wfc_coordinates run data get entity @e[tag=wfc_cursor, limit=1, sort=nearest] Pos[2] 100
scoreboard players operation %current_z wfc_coordinates += %d_south wfc_distances
execute store result entity @e[tag=wfc_cursor,limit=1] Pos[2] double 0.01 run scoreboard players get %current_z wfc_coordinates
scoreboard players reset %current_z wfc_coordinates

# summon a border marker at the cursor
execute at @e[tag=wfc_cursor] run function pd_generation:alg_wave_collapse/variation_markers/border/generate_marker_here
# tag the resulting border with the direction
execute at @e[tag=wfc_cursor] run tag @e[tag=pd_border, distance=..0.1] add wfc_has_north


# remove the need for a south connection
tag @s remove wfc_need_south
