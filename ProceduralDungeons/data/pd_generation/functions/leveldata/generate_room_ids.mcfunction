# copy all rooms to temporary list
data modify storage procedural_dungeons:level_data all_rooms_tmp set from storage procedural_dungeons:level_data all_rooms
# make new list with rooms
data modify storage procedural_dungeons:level_data all_rooms set value []



# reset the id
scoreboard players set %current_id pd_room_id 10000


# set elements recursively
function pd_generation:leveldata/generate_single_room_id_recursive


# remove the temporary list
data remove storage procedural_dungeons:level_data all_rooms_tmp
# reset scoreboard
scoreboard players reset %current_id pd_room_id
