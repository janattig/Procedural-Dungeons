# check in any direction and let the border variations add the respective tag
tag @s add wfc_me
execute positioned ~ ~ ~-1 run execute at @e[tag=pd_border, limit=1, sort=nearest] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute if score @s pd_room_border = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border_n run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_north_fine
execute positioned ~ ~ ~1 run execute at @e[tag=pd_border, limit=1, sort=nearest] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute if score @s pd_room_border = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border_s run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_south_fine
execute positioned ~1 ~ ~ run execute at @e[tag=pd_border, limit=1, sort=nearest] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute if score @s pd_room_border = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border_e run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_east_fine
execute positioned ~-1 ~ ~ run execute at @e[tag=pd_border, limit=1, sort=nearest] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute if score @s pd_room_border = @e[tag=wfc_me, limit=1, sort=nearest] pd_room_border_w run tag @e[tag=wfc_me, limit=1, sort=nearest] add wfc_west_fine
tag @s remove wfc_me

# check if everything still in order
tag @s remove wfc_unsupported
tag @s[tag=!wfc_north_fine] add wfc_unsupported
tag @s[tag=!wfc_south_fine] add wfc_unsupported
tag @s[tag=!wfc_east_fine] add wfc_unsupported
tag @s[tag=!wfc_west_fine] add wfc_unsupported
execute at @e[tag=pd_room, tag=pd_start, distance=..0.1, limit=1] run tag @s[tag=!ttt_only] add wfc_unsupported
execute at @e[tag=pd_room, tag=pd_start, distance=..0.1, limit=1] run tag @s[tag=!start] add wfc_unsupported
execute at @e[tag=pd_room, tag=!pd_start, distance=..0.1, limit=1] run tag @s[tag=start] add wfc_unsupported

# remove the tags
tag @s remove wfc_north_fine
tag @s remove wfc_south_fine
tag @s remove wfc_west_fine
tag @s remove wfc_east_fine
