# set how much the marker should be moved to the center of the room
scoreboard players set %2 pd_display 2
scoreboard players operation %moveX pd_display = %sizeX pd_display
scoreboard players operation %moveZ pd_display = %sizeZ pd_display
scoreboard players operation %moveX pd_display /= %2 pd_display
scoreboard players operation %moveZ pd_display /= %2 pd_display

# move the marker to the middle of the room
execute store result score %markerX pd_display run data get entity @s Pos[0]
execute store result score %markerZ pd_display run data get entity @s Pos[2]
scoreboard players operation %markerX pd_display += %moveX pd_display
scoreboard players operation %markerZ pd_display += %moveZ pd_display
execute store result entity @s Pos[0] double 1.0 run scoreboard players get %markerX pd_display
execute store result entity @s Pos[2] double 1.0 run scoreboard players get %markerZ pd_display

# move the marker down by 1 block
execute at @s run tp @s ~1 ~-1 ~1


# set size of region reset
scoreboard players operation %reset_region_size pd_dimensions = %sizeX pd_display
# queu here for reset
scoreboard players add %reset_region_size pd_dimensions 2
execute at @s run function pd_dimensions:register_region_for_reset_here

# delete marker coordinates
scoreboard players reset %2 pd_display
scoreboard players reset %markerX pd_display
scoreboard players reset %markerZ pd_display