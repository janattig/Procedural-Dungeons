# resolve all borders
function pd_generation:alg_wave_collapse/variation_markers/validation/resolve_borders

# check how many rooms are left for update
scoreboard players set %rooms_to_update pd_level_parameters 0
execute as @e[tag=pd_room, tag=wfc_update_needed] run scoreboard players add %rooms_to_update pd_level_parameters 1

# if there are rooms to update, schedule room resolve, otherwise, schedule next phase entirely
execute if score %rooms_to_update pd_level_parameters matches 1.. run schedule function pd_generation:alg_wave_collapse/phases/misc/initial_resolve_rooms 1t
execute if score %rooms_to_update pd_level_parameters matches 0 run schedule function pd_generation:alg_wave_collapse/phases/4_collapse 1t
scoreboard players reset %borders_to_update pd_level_parameters
