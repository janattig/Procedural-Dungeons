# resets the first recorded region of the resetting data list

# summon a temporary marker at the current position
kill @e[type=marker, tag=pd_dim_reset_marker_tmp]
execute in overworld run summon marker 0 1 0 {Tags:["pd_dim_reset_marker_tmp"]}

# set the correct target dimension
execute store result score %target_tp_dimension pd_dimensions run data get storage procedural_dungeons:reset_regions resetting[0][4] 1
# teleport the reset marker to the fitting dimension
execute as @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1, sort=nearest] at @s run function pd_dimensions:tp_self_to_target_dimension

# set the correct coordinates within the target dimension
data modify entity @e[type=marker, tag=pd_dim_reset_marker_tmp, limit=1] Pos set from storage procedural_dungeons:reset_regions resetting[0]

# load the region size to a temporary scoreboard value
scoreboard players reset %current_reset_region_size pd_dimensions
execute store result score %current_reset_region_size pd_dimensions run data get storage procedural_dungeons:reset_regions resetting[0][3] 1

# execute as the marker: copy the volume
execute as @e[type=marker, tag=pd_dim_reset_marker_tmp] at @s run function pd_dimensions:reset/copy_volume

# if there was no successful reset, queue region again
execute if score %successful_reset pd_dimensions matches 0 run data modify storage procedural_dungeons:reset_regions to_be_reset append from storage procedural_dungeons:reset_regions resetting[0]

# reset temporary score
scoreboard players reset %current_reset_region_size pd_dimensions
# kill the marker
kill @e[type=marker, tag=pd_dim_reset_marker_tmp]
