# called as a room marker to check the variations
# kills unsupported variations

# reset number of unsupported variations
scoreboard players set @s wfc_connections 0

# check variations
execute as @e[tag=pd_room_variation, distance=..0.1] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/check_room_variation

# count how many are unsupported
execute at @e[tag=pd_room_variation,tag=wfc_unsupported, distance=..0.1] at @s run scoreboard players add @s wfc_connections 1

# kill the unsupported variations
execute as @e[tag=pd_room_variation,tag=wfc_unsupported, distance=..0.1] at @s run kill @s

# set itself based on changes
tag @s remove wfc_variations_changed
execute if score @s wfc_connections matches 1.. run tag @s add wfc_variations_changed
scoreboard players reset @s wfc_connections
