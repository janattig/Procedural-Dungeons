# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(2)", "color":"white"}, {"text":": initial conditions", "color":"gray"}]

# set boundaries correctly
execute at @e[tag=pd_border, tag=wfc_boundary] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute unless score @s pd_room_border matches 0 run kill @s

# set inner borders correctly (that have to be passable)
execute at @e[tag=pd_border, tag=wfc_force_passable] run function pd_generation:alg_wave_collapse/phases/misc/ensure_passable_border
execute at @e[tag=pd_border, tag=!wfc_boundary, tag=!wfc_force_passable] run function pd_generation:alg_wave_collapse/phases/misc/ensure_unpassable_border

# mark all rooms and borders for update
tag @e[tag=pd_room] add wfc_update_needed
tag @e[tag=pd_border] add wfc_update_needed

# temporarily boost the maximum number of commands which can be run per tick (up from 65536)
gamerule maxCommandChainLength 1000000
scoreboard players set %max_variation_checks pd_level_parameters 1000
scoreboard players set %current_variation_checks pd_level_parameters 0

# schedule next phase
schedule function pd_generation:alg_wave_collapse/phases/3_initial_resolve 1t
