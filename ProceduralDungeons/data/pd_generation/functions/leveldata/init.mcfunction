# function to init the list of all rooms across all levels
# called once upon installation / reload

# clear the current data
data modify storage procedural_dungeons:level_data all_rooms set value []


# call init for the different levels
function pd_generation:leveldata/tilesets/bunny_jump/init
function pd_generation:leveldata/tilesets/canyon/init
function pd_generation:leveldata/tilesets/cave/init
function pd_generation:leveldata/tilesets/desert/init
function pd_generation:leveldata/tilesets/sewer/init
function pd_generation:leveldata/tilesets/skyblock/init

function pd_generation:leveldata/tilesets/demo_test/init


# three fails (to test checks)
#data modify storage procedural_dungeons:level_data all_rooms append value {file:"procedural_dungeons:rooms/fail/fail1", map:"canyon", north:1, south:1, east:1, west:1}
#data modify storage procedural_dungeons:level_data all_rooms append value {file:"procedural_dungeons:rooms/fail/fail2", size:11, north:1, south:1, east:1, west:1}
#data modify storage procedural_dungeons:level_data all_rooms append value {map:"cave", size:11, north:1, south:1, east:1, west:1}


# give unique ids to all rooms
function pd_generation:leveldata/generate_room_ids
