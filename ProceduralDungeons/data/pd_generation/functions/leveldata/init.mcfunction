# function to init the list of all rooms across all levels
# called once upon installation / reload

# clear the current data
data modify storage procedural_dungeons:level_data all_rooms set value []


# call init for the different levels
function pd_generation:leveldata/bunny_jump/init
function pd_generation:leveldata/canyon/init
function pd_generation:leveldata/cave/init
function pd_generation:leveldata/desert/init
function pd_generation:leveldata/sewer/init
function pd_generation:leveldata/skyblock/init



# three fails (to test checks)
#data modify storage procedural_dungeons:level_data all_rooms append value {file:"procedural_dungeons:rooms/fail/fail1", map:"canyon", north:1, south:1, east:1, west:1}
#data modify storage procedural_dungeons:level_data all_rooms append value {file:"procedural_dungeons:rooms/fail/fail2", size:11, north:1, south:1, east:1, west:1}
#data modify storage procedural_dungeons:level_data all_rooms append value {map:"cave", size:11, north:1, south:1, east:1, west:1}
