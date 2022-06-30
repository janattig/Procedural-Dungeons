# check all borders which need updates
execute as @e[tag=pd_border, tag=wfc_update_needed] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/check_border
tag @e[tag=pd_border, tag=wfc_update_needed] remove wfc_update_needed

# those who changed trigger updates on the related rooms
execute as @e[tag=pd_border, tag=wfc_variations_changed] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/mark_adjacent_rooms_for_update
tag @e[tag=pd_border, tag=wfc_variations_changed] remove wfc_variations_changed
