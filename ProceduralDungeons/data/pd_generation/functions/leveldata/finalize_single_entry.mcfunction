# check element 0 of the list procedural_dungeons:level_data all_rooms_backup

# load the current room
data modify storage procedural_dungeons:level_data current_room set from storage procedural_dungeons:level_data all_rooms_backup[0]
# remove the first entry from the list
data remove storage procedural_dungeons:level_data all_rooms_backup[0]

# check if there are all connection types given
execute unless data storage procedural_dungeons:level_data current_room.north run data modify storage procedural_dungeons:level_data current_room merge value {north:0}
execute unless data storage procedural_dungeons:level_data current_room.south run data modify storage procedural_dungeons:level_data current_room merge value {south:0}
execute unless data storage procedural_dungeons:level_data current_room.east run data modify storage procedural_dungeons:level_data current_room merge value {east:0}
execute unless data storage procedural_dungeons:level_data current_room.west run data modify storage procedural_dungeons:level_data current_room merge value {west:0}

# check if a priority is given
execute unless data storage procedural_dungeons:level_data current_room.priority run data modify storage procedural_dungeons:level_data current_room merge value {priority:-1}

# append the room to the all_rooms list
data modify storage procedural_dungeons:level_data all_rooms append from storage procedural_dungeons:level_data current_room
# remove the current room
data remove storage procedural_dungeons:level_data current_room

# call the finalize function recursively again
execute if data storage procedural_dungeons:level_data all_rooms_backup[0] run function pd_generation:leveldata/finalize_single_entry
