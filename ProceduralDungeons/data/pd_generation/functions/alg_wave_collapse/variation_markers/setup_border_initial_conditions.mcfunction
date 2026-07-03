# apply initial conditions for borders

# set boundaries correctly (all borders that border to nothing)
execute at @e[tag=pd_border, tag=wfc_boundary] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute unless score @s pd_room_border matches 0 run kill @s

# set inner borders correctly (that have to be passable or not necessarily passable)
execute at @e[tag=pd_border, tag=wfc_force_passable] run function pd_generation:alg_wave_collapse/phases/misc/ensure_passable_border
execute at @e[tag=pd_border, tag=!wfc_boundary, tag=!wfc_force_passable] run function pd_generation:alg_wave_collapse/phases/misc/ensure_unpassable_border
