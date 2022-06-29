# add a single border variation
function pd_generation:leveldata/generate_single_border_variation

# remove first element in list (this is done)
data remove storage procedural_dungeons:current_level all_variations_tmp[0]

# recursively add more single connectivity variations
execute if data storage procedural_dungeons:current_level all_variations_tmp[0] run function pd_generation:leveldata/generate_single_border_variation_recursive
