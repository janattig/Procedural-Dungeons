# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(2)", "color":"white"}, {"text":": initial conditions", "color":"gray"}]

# set boundaries correctly
execute at @e[tag=pd_border, tag=wfc_boundary] run execute as @e[tag=pd_border_variation, distance=..0.1] run execute unless score @s pd_room_border matches 0 run kill @s

# mark all rooms for update
tag @e[tag=pd_room] add wfc_update_needed

# schedule next phase
schedule function pd_generation:alg_wave_collapse/phases/3_initial_resolve 1t