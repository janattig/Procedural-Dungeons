# clear the memory and write standard values
data modify storage procedural_dungeons:current_map id set value 0
data modify storage procedural_dungeons:current_map display_name set value ""
data remove storage procedural_dungeons:current_map dx
data remove storage procedural_dungeons:current_map dz
data modify storage procedural_dungeons:current_map min_x set value -1
data modify storage procedural_dungeons:current_map min_z set value -1
data modify storage procedural_dungeons:current_map max_x set value 1
data modify storage procedural_dungeons:current_map max_z set value 1
data modify storage procedural_dungeons:current_map start_y set value 0.0d
