# choose a random uncollapsed room for collapse
execute as @e[tag=pd_room, tag=!wfc_collapsed, limit=1, sort=random] at @s run function pd_generation:alg_wave_collapse/variation_markers/collapse_room


# trigger the resolve
function pd_generation:alg_wave_collapse/phases/misc/resolve_borders


# check all rooms which are uncollapsed but have only 1 variation
execute as @e[tag=pd_room] run scoreboard players reset @s wfc_connections
execute as @e[tag=pd_room, tag=!wfc_collapsed] at @s run scoreboard players set @s wfc_connections 0
execute as @e[tag=pd_room, tag=!wfc_collapsed] at @s run execute at @e[tag=pd_room_variation, distance=..0.1] run scoreboard players add @s wfc_connections 1
execute as @e[tag=pd_room, tag=!wfc_collapsed, scores={wfc_connections=0}] at @s run tellraw @a ["",{"text":"    > "},{"text":"PD WFC ERROR:","color":"red"},{"text":" found room with no options"}]
execute as @e[tag=pd_room, tag=!wfc_collapsed, scores={wfc_connections=0}] at @s run scoreboard players set %wfc_finished pd_level_parameters -1
execute as @e[tag=pd_room, tag=!wfc_collapsed, scores={wfc_connections=1}] at @s run function pd_generation:alg_wave_collapse/variation_markers/collapse_room

# trigger the resolve
function pd_generation:alg_wave_collapse/phases/misc/resolve_borders






# schedule next phase if applicable
scoreboard players set %rooms_to_collapse pd_level_parameters 0
execute as @e[tag=pd_room, tag=!wfc_collapsed] run scoreboard players add %rooms_to_collapse pd_level_parameters 1

# schedule either random collapse or final phase
execute if score %wfc_finished pd_level_parameters matches 0.. run execute if score %rooms_to_collapse pd_level_parameters matches 1.. run schedule function pd_generation:alg_wave_collapse/phases/misc/collapse_random_room 1t
execute if score %wfc_finished pd_level_parameters matches 0.. run execute if score %rooms_to_collapse pd_level_parameters matches 0 run schedule function pd_generation:alg_wave_collapse/phases/5_cleanup 1t
scoreboard players reset %rooms_to_collapse pd_level_parameters

# maybe restart
execute if score %wfc_finished pd_level_parameters matches -1 run function pd_generation:alg_wave_collapse/restart_generation
