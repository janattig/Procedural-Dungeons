# check if this is found on markers already
scoreboard players set %is_duplicate pd_room_border 0
execute as @e[tag=pd_connectivity_variation_tmp] at @s run execute if score @s pd_room_border = %current pd_room_border run scoreboard players set %is_duplicate pd_room_border 1

# if the border is not a duplicate, add it to the list and summon a marker in place
execute if score %is_duplicate pd_room_border matches 0 run execute in overworld run summon minecraft:marker 0 0 0 {Tags:["pd_connectivity_variation_tmp", "pd_current"]}
scoreboard players operation @e[tag=pd_current,limit=1] pd_room_border = %current pd_room_border
execute store result entity @e[tag=pd_current,limit=1] data.border int 1 run scoreboard players get %current pd_room_border
execute if score %is_duplicate pd_room_border matches 0 run data modify storage procedural_dungeons:current_level border_variations append from entity @e[tag=pd_current,limit=1] data.border
tag @e[tag=pd_current] remove pd_current
