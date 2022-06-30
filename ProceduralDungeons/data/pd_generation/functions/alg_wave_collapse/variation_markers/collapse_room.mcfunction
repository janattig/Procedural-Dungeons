# called as a room to collapse

# choose a random variation (based on priority)
execute at @s run function pd_generation:rooms/variations/choose_priority

# copy data from the remaining variation
execute at @s run data modify entity @s data merge from entity @e[tag=pd_room_variation, distance=..0.1, limit=1] data
tag @e[tag=pd_room_variation,distance=..0.1] list
execute store result score @s pd_room_border_n run data get entity @s data.north
execute store result score @s pd_room_border_s run data get entity @s data.south
execute store result score @s pd_room_border_e run data get entity @s data.east
execute store result score @s pd_room_border_w run data get entity @s data.west

# mark borders for update
execute at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/mark_adjacent_borders_for_update

# add a tag that it is collapsed
tag @s add wfc_collapsed
