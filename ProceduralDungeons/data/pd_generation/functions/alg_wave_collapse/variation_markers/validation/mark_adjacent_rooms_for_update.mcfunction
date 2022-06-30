execute as @s[tag=wfc_has_north] at @s run execute positioned ~ ~ ~-1 run tag @e[tag=pd_room, limit=1, sort=nearest] add wfc_update_needed
execute as @s[tag=wfc_has_south] at @s run execute positioned ~ ~ ~1 run tag @e[tag=pd_room, limit=1, sort=nearest] add wfc_update_needed
execute as @s[tag=wfc_has_east] at @s run execute positioned ~1 ~ ~ run tag @e[tag=pd_room, limit=1, sort=nearest] add wfc_update_needed
execute as @s[tag=wfc_has_west] at @s run execute positioned ~-1 ~ ~ run tag @e[tag=pd_room, limit=1, sort=nearest] add wfc_update_needed
