# delete all room variations
kill @e[tag=pd_room_variation]

# copy all room (connectivity) variations to temporary list
data modify storage procedural_dungeons:current_level connectivity_variations_tmp set from storage procedural_dungeons:current_level connectivity_variations

# recursively create single room (connectivity) variation at all rooms
execute if data storage procedural_dungeons:current_level connectivity_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_room_variations_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level connectivity_variations_tmp


# make all room variations store their data also as a scoreboard
execute as @e[tag=pd_room_variation] at @s run execute store result score @s pd_room_border_n run data get entity @s data.north
execute as @e[tag=pd_room_variation] at @s run execute store result score @s pd_room_border_s run data get entity @s data.south
execute as @e[tag=pd_room_variation] at @s run execute store result score @s pd_room_border_e run data get entity @s data.east
execute as @e[tag=pd_room_variation] at @s run execute store result score @s pd_room_border_w run data get entity @s data.west
execute as @e[tag=pd_room_variation] at @s run execute store result score @s pd_room_priority run data get entity @s data.priority
execute as @e[tag=pd_room_variation] at @s run execute if data entity @s data.ttt_only run tag @s add ttt_only
execute as @e[tag=pd_room_variation] at @s run execute if data entity @s data.start run tag @s add start
