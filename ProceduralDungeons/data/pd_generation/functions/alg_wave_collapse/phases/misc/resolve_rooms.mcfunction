# resolve all rooms
function pd_generation:alg_wave_collapse/variation_markers/validation/resolve_rooms

# check how many borders are left for update
scoreboard players set %borders_to_update pd_level_parameters 0
execute as @e[tag=pd_border, tag=wfc_update_needed] run scoreboard players add %borders_to_update pd_level_parameters 1

# if there are borders to update, schedule border resolve, otherwise, schedule next phase entirely
execute if score %borders_to_update pd_level_parameters matches 1.. run function pd_generation:alg_wave_collapse/phases/misc/resolve_borders
scoreboard players reset %borders_to_update pd_level_parameters
