# function to be called as a room marker to setup

# copy data from the current level
data modify entity @s data.size set from storage procedural_dungeons:current_level size

# mark the position for reset later on
execute store result score %reset_region_size pd_dimensions run data get entity @s data.size 1
execute positioned ~ ~-1 ~ run function pd_dimensions:register_region_for_reset_here
