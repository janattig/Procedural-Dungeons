# choose one existing room variation at random
tag @e[tag=pd_room_variation, limit=1] add pd_this_colum

# summon four variations of the current border scheme
kill @e[tag=pd_connectivity_variation]
summon minecraft:marker ~ ~ ~ {Tags:["pd_connectivity_variation", "orientation_0"]}
summon minecraft:marker ~ ~ ~ {Tags:["pd_connectivity_variation", "orientation_90"]}
summon minecraft:marker ~ ~ ~ {Tags:["pd_connectivity_variation", "orientation_180"]}
summon minecraft:marker ~ ~ ~ {Tags:["pd_connectivity_variation", "orientation_270"]}
# copy data from chosen variation
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_0, limit=1, sort=nearest] data merge from entity @e[tag=pd_this_colum,limit=1] data
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_90, limit=1, sort=nearest] data merge from entity @e[tag=pd_this_colum,limit=1] data
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_180, limit=1, sort=nearest] data merge from entity @e[tag=pd_this_colum,limit=1] data
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_270, limit=1, sort=nearest] data merge from entity @e[tag=pd_this_colum,limit=1] data
# modify data of orientation 90
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_90, limit=1, sort=nearest] data.north set from entity @e[tag=pd_this_colum,limit=1] data.east
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_90, limit=1, sort=nearest] data.east set from entity @e[tag=pd_this_colum,limit=1] data.south
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_90, limit=1, sort=nearest] data.south set from entity @e[tag=pd_this_colum,limit=1] data.west
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_90, limit=1, sort=nearest] data.west set from entity @e[tag=pd_this_colum,limit=1] data.north
# modify data of orientation 180
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_180, limit=1, sort=nearest] data.north set from entity @e[tag=pd_this_colum,limit=1] data.south
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_180, limit=1, sort=nearest] data.east set from entity @e[tag=pd_this_colum,limit=1] data.west
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_180, limit=1, sort=nearest] data.south set from entity @e[tag=pd_this_colum,limit=1] data.north
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_180, limit=1, sort=nearest] data.west set from entity @e[tag=pd_this_colum,limit=1] data.east
# modify data of orientation 270
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_270, limit=1, sort=nearest] data.north set from entity @e[tag=pd_this_colum,limit=1] data.west
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_270, limit=1, sort=nearest] data.east set from entity @e[tag=pd_this_colum,limit=1] data.north
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_270, limit=1, sort=nearest] data.south set from entity @e[tag=pd_this_colum,limit=1] data.east
data modify entity @e[tag=pd_connectivity_variation, tag=orientation_270, limit=1, sort=nearest] data.west set from entity @e[tag=pd_this_colum,limit=1] data.south

# set scoreboard values of connectivity variations
execute as @e[tag=pd_connectivity_variation, distance=..1] run execute store result score @s pd_display_border_N run data get entity @s data.north
execute as @e[tag=pd_connectivity_variation, distance=..1] run execute store result score @s pd_display_border_S run data get entity @s data.south
execute as @e[tag=pd_connectivity_variation, distance=..1] run execute store result score @s pd_display_border_E run data get entity @s data.east
execute as @e[tag=pd_connectivity_variation, distance=..1] run execute store result score @s pd_display_border_W run data get entity @s data.west



# let all room markers check their connectivity
execute as @e[tag=pd_room_variation] at @s run function pd_room_display:markers/check_self_for_matching_connectivity


# setup a marker for the current colum
kill @e[tag=pd_current_colum]
summon minecraft:marker ~ ~ ~ {Tags:["pd_current_colum"]}