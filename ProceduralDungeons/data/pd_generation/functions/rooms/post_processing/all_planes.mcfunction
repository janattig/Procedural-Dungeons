# recursively post process all planes

# process the current plane
execute positioned ~ ~ ~ run function pd_generation:rooms/post_processing/single_plane

# raise the y level
scoreboard players add %current_y pd_room_parameters 1

# call function again if the current y is still smaller than the size y
execute if score %current_y pd_room_parameters < %size_y pd_room_parameters positioned ~ ~1 ~ run function pd_generation:rooms/post_processing/all_planes
