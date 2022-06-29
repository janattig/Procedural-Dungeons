# copy all connectivity variations to temporary list
data modify storage procedural_dungeons:current_level all_variations_tmp set from storage procedural_dungeons:current_level connectivity_variations
# make new list with border variations
data modify storage procedural_dungeons:current_level border_variations set value []

# recursively create single border variation
execute if data storage procedural_dungeons:current_level all_variations_tmp[0] run function pd_generation:leveldata/generate_single_border_variation_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level all_variations_tmp
# kill all variations
kill @e[tag=pd_connectivity_variation_tmp]
