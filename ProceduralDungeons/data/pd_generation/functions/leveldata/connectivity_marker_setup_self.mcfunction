# copy the current variation onto the marker
data modify entity @s data merge from storage procedural_dungeons:current_level all_variations_tmp[0]

# set scoreboard values with connectivities
execute store result score @s pd_room_border_n run data get entity @s data.north
execute store result score @s pd_room_border_s run data get entity @s data.south
execute store result score @s pd_room_border_e run data get entity @s data.east
execute store result score @s pd_room_border_w run data get entity @s data.west
execute store result score @s pd_room_priority run data get entity @s data.priority

# set extra information
execute if data entity @s data.ttt_only run tag @s add ttt_only
execute if data entity @s data.start run tag @s add start
