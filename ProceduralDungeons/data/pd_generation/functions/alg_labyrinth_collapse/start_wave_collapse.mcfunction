# prepare the grid so that the wavefunction collapse can work on it

# build borders for rooms
function pd_generation:alg_wave_collapse/variation_markers/add_border_to_rooms

# now, mark all borders which have to be open
execute as @e[tag=pd_room, tag=lab_connects_north] at @s run execute positioned ~ ~ ~-1 run tag @e[tag=pd_border, limit=1, sort=nearest] add wfc_force_passable
execute as @e[tag=pd_room, tag=lab_connects_south] at @s run execute positioned ~ ~ ~1 run tag @e[tag=pd_border, limit=1, sort=nearest] add wfc_force_passable
execute as @e[tag=pd_room, tag=lab_connects_east] at @s run execute positioned ~1 ~ ~ run tag @e[tag=pd_border, limit=1, sort=nearest] add wfc_force_passable
execute as @e[tag=pd_room, tag=lab_connects_west] at @s run execute positioned ~-1 ~ ~ run tag @e[tag=pd_border, limit=1, sort=nearest] add wfc_force_passable

# reset the scoreboards of rooms
execute as @e[tag=pd_room] at @s run scoreboard players reset @s pd_room_border_n
execute as @e[tag=pd_room] at @s run scoreboard players reset @s pd_room_border_s
execute as @e[tag=pd_room] at @s run scoreboard players reset @s pd_room_border_e
execute as @e[tag=pd_room] at @s run scoreboard players reset @s pd_room_border_w

# trigger the wave collapse
function pd_generation:alg_wave_collapse/generate
