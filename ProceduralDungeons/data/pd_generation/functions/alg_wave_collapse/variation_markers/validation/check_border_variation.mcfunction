# check in any direction and let the room variations add the respective tag
tag @s add wfc_me
execute as @s[tag=wfc_has_north] at @s run execute positioned ~ ~ ~-1 run execute at @e[tag=pd_room, limit=1, sort=nearest] run execute as @e[tag=pd_room_variation, distance=..0.1] run execute if score @s pd_room_border_s = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_north_fine
execute as @s[tag=wfc_has_south] at @s run execute positioned ~ ~ ~1 run execute at @e[tag=pd_room, limit=1, sort=nearest] run execute as @e[tag=pd_room_variation, distance=..0.1] run execute if score @s pd_room_border_n = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_south_fine
execute as @s[tag=wfc_has_east] at @s run execute positioned ~1 ~ ~ run execute at @e[tag=pd_room, limit=1, sort=nearest] run execute as @e[tag=pd_room_variation, distance=..0.1] run execute if score @s pd_room_border_w = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_east_fine
execute as @s[tag=wfc_has_west] at @s run execute positioned ~-1 ~ ~ run execute at @e[tag=pd_room, limit=1, sort=nearest] run execute as @e[tag=pd_room_variation, distance=..0.1] run execute if score @s pd_room_border_e = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_west_fine
tag @s remove wfc_me

# check if everything still in order
tag @s remove wfc_unsupported
tag @s[tag=wfc_has_north, tag=!wfc_north_fine] add wfc_unsupported
tag @s[tag=wfc_has_south, tag=!wfc_south_fine] add wfc_unsupported
tag @s[tag=wfc_has_east, tag=!wfc_east_fine] add wfc_unsupported
tag @s[tag=wfc_has_west, tag=!wfc_west_fine] add wfc_unsupported

# remove the tags
tag @s remove wfc_north_fine
tag @s remove wfc_south_fine
tag @s remove wfc_west_fine
tag @s remove wfc_east_fine
