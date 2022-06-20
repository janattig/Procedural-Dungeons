# copy all rooms to temporary list
data modify storage procedural_dungeons:current_level all_rooms_tmp set from storage procedural_dungeons:current_level all_rooms
# make new list with variations
data modify storage procedural_dungeons:current_level all_variations set value []

# recursively add single room variations
execute if data storage procedural_dungeons:current_level all_rooms_tmp[0] run function pd_generation:leveldata/generate_single_room_variation_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level all_rooms_tmp
