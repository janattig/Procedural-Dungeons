# add a single room variation
function pd_generation:leveldata/generate_single_room_variation

# remove first element in list (this is done)
data remove storage procedural_dungeons:current_level all_rooms_tmp[0]

# recursively add more single room variations
execute if data storage procedural_dungeons:current_level all_rooms_tmp[0] run function pd_generation:leveldata/generate_single_room_variation_recursive
