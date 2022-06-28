# recursively post process all rows

# process the current row
execute positioned ~ ~ ~ run function pd_generation:rooms/post_processing/single_row

# raise the z coordinate
scoreboard players add %current_z pd_room_parameters 1

# call function again if the current z is still smaller than the size z
execute if score %current_z pd_room_parameters < %size pd_room_parameters positioned ~ ~ ~1 run function pd_generation:rooms/post_processing/all_rows
