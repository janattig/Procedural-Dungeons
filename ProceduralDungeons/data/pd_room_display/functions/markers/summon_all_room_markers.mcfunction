# remove temporary list
data remove storage procedural_dungeons:current_level all_variations_tmp

# copy all rooms to temporary list
data modify storage procedural_dungeons:current_level all_variations_tmp set from storage procedural_dungeons:current_level all_rooms



# recursively add new markers
function pd_room_display:markers/summon_room_markers_recursive




# remove temporary list
data remove storage procedural_dungeons:current_level all_variations_tmp




# set scoreboard values of the markers correctly
execute as @e[tag=pd_room_variation, distance=..1] run execute store result score @s pd_display_border_N run data get entity @s data.north
execute as @e[tag=pd_room_variation, distance=..1] run execute store result score @s pd_display_border_S run data get entity @s data.south
execute as @e[tag=pd_room_variation, distance=..1] run execute store result score @s pd_display_border_E run data get entity @s data.east
execute as @e[tag=pd_room_variation, distance=..1] run execute store result score @s pd_display_border_W run data get entity @s data.west