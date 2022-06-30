# all rooms need borders in all cardinal directions
tag @e[tag=pd_room] add wfc_need_north
tag @e[tag=pd_room] add wfc_need_south
tag @e[tag=pd_room] add wfc_need_east
tag @e[tag=pd_room] add wfc_need_west

# generate scoreboard values
scoreboard players set %d_north wfc_distances -50
scoreboard players set %d_south wfc_distances 50
scoreboard players set %d_east wfc_distances 50
scoreboard players set %d_west wfc_distances -50
scoreboard players operation %d_north wfc_distances *= %room_size pd_level_parameters
scoreboard players operation %d_south wfc_distances *= %room_size pd_level_parameters
scoreboard players operation %d_east wfc_distances *= %room_size pd_level_parameters
scoreboard players operation %d_west wfc_distances *= %room_size pd_level_parameters

# generate a cursor
kill @e[tag=wfc_cursor]
execute at @e[tag=pd_room, limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["wfc_cursor"]}

# let the cursor resolve all boundaries
execute as @e[tag=wfc_cursor, limit=1] at @s run function pd_generation:alg_wave_collapse/variation_markers/border/resolve_borders

# kill  the cursor
kill @e[tag=wfc_cursor]


# count neighbors and designate as boundary borders or inner borders
tag @e[tag=pd_room] add wfc_marker
tag @e[tag=pd_border] add wfc_marker
execute as @e[tag=pd_border] at @s run scoreboard players set @s wfc_connections 0
execute as @e[tag=pd_border] at @s run execute at @e[tag=wfc_marker, distance=0.1.., sort=nearest, limit=2] run execute at @e[tag=pd_room, distance=..0.1] run scoreboard players add @s wfc_connections 1
tag @e[tag=pd_border, scores={wfc_connections=1}] add wfc_boundary
execute as @e[tag=pd_border] at @s run scoreboard players reset @s wfc_connections
