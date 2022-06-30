# resolve a single connection to north
execute as @e[tag=pd_room, tag=wfc_need_north, limit=1] at @s run function pd_generation:alg_wave_collapse/variation_markers/border/add_north

# schedule again if remaining connections
execute as @e[tag=pd_room, tag=wfc_need_north, limit=1] at @s run function pd_generation:alg_wave_collapse/variation_markers/border/resolve_north
