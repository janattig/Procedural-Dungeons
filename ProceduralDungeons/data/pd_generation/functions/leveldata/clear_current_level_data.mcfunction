# clear all data associated with the current level
data remove storage procedural_dungeons:current_level all_rooms
data remove storage procedural_dungeons:current_level all_variations
data remove storage procedural_dungeons:current_level dimension
data remove storage procedural_dungeons:current_level size
data remove storage procedural_dungeons:current_level can_generate

# clear scoreboard values
scoreboard players reset %post_processing_size_y pd_level_parameters
