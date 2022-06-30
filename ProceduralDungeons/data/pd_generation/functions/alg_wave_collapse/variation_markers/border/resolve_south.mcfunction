# resolve a single connection to south
execute as @e[tag=pd_room, tag=wfc_need_south, limit=1] at @s run function pd_generation:alg_wave_collapse/variation_markers/border/add_south

# schedule again if remaining connections
execute as @e[tag=pd_room, tag=wfc_need_south, limit=1] at @s run function pd_generation:alg_wave_collapse/variation_markers/border/resolve_south
