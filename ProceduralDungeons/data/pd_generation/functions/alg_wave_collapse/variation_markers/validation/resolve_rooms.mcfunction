# check all rooms which need updates
execute as @e[tag=pd_room, tag=wfc_update_needed] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/check_room
tag @e[tag=pd_room, tag=wfc_update_needed] remove wfc_update_needed

# those who changed trigger updates on the related borders
execute as @e[tag=pd_room, tag=wfc_variations_changed] at @s run function pd_generation:alg_wave_collapse/variation_markers/validation/mark_adjacent_borders_for_update
tag @e[tag=pd_room, tag=wfc_variations_changed] remove wfc_variations_changed
