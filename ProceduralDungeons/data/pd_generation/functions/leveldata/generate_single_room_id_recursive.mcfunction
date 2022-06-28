# use the 0ths element and assign new id

# increment id
scoreboard players add %current_id pd_room_id 1
# give the new unique id to the first element of the list
data modify storage procedural_dungeons:level_data all_rooms_tmp[0] merge value {id:0}
execute store result storage procedural_dungeons:level_data all_rooms_tmp[0].id int 1 run scoreboard players get %current_id pd_room_id

# copy first element back to original list
data modify storage procedural_dungeons:level_data all_rooms append from storage procedural_dungeons:level_data all_rooms_tmp[0]
# remove first element in list (this is done)
data remove storage procedural_dungeons:level_data all_rooms_tmp[0]

# call again
execute if data storage procedural_dungeons:level_data all_rooms_tmp[0] run function pd_generation:leveldata/generate_single_room_id_recursive
