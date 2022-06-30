# output
tellraw @a [{"text":"  > restarting due to ", "color":"gray"}, {"text":"error", "color":"white"}]

# indicate that the wfc is not finished
scoreboard players set %wfc_finished pd_level_parameters 0

# delete all variations (not needed any more)
kill @e[tag=pd_room_variation]
kill @e[tag=pd_border_variation]

# remove tags from rooms
tag @e[tag=wfc_marker] remove wfc_collapsed
tag @e[tag=wfc_marker] remove wfc_update_needed
tag @e[tag=wfc_marker] remove wfc_variations_changed
tag @e[tag=wfc_marker] remove wfc_has_north
tag @e[tag=wfc_marker] remove wfc_has_south
tag @e[tag=wfc_marker] remove wfc_has_east
tag @e[tag=wfc_marker] remove wfc_has_west

# run first phase
schedule function pd_generation:alg_wave_collapse/phases/1_preparations 1t
