# copy the list
data modify storage procedural_dungeons:level_data all_rooms_backup set from storage procedural_dungeons:level_data all_rooms
# clear original list
data modify storage procedural_dungeons:level_data all_rooms set value []


# call the finalize function on individual elements recursively
execute if data storage procedural_dungeons:level_data all_rooms_backup[0] run function pd_generation:leveldata/finalize_single_entry


# delete the backup list
data remove storage procedural_dungeons:level_data all_rooms_backup
