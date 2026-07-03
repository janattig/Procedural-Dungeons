# delete all room variations
kill @e[tag=pd_room_variation]

# copy all room (connectivity) variations to temporary list
data modify storage procedural_dungeons:current_level connectivity_variations_tmp set from storage procedural_dungeons:current_level connectivity_variations

# recursively create single room (connectivity) variation at all rooms
execute if data storage procedural_dungeons:current_level connectivity_variations_tmp[0] run function pd_generation:alg_wave_collapse/variation_markers/add_room_variations_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level connectivity_variations_tmp
