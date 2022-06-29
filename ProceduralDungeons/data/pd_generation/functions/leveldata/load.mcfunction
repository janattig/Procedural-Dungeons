# load all data of the current level (data + scoreboards)
# is called whenever a new level is generated


# load level data
function pd_generation:leveldata/load_level_data

# finalize scoreboards based on level data
function pd_generation:leveldata/update_scoreboard_values

# generate variations of current rooms
function pd_generation:leveldata/generate_room_variations
function pd_generation:leveldata/generate_connectivity_variations
function pd_generation:leveldata/generate_border_variations
