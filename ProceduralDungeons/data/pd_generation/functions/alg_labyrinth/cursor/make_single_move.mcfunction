# relocate to a room that is unfinished
function pd_generation:alg_labyrinth/cursor/relocate

# check a random direction in that room
function pd_generation:alg_labyrinth/cursor/check_random_direction

# make sure all rooms with all directions check are indicated as finished
tag @e[tag=lab_checked_north, tag=lab_checked_south, tag=lab_checked_east, tag=lab_checked_west] add lab_finished
