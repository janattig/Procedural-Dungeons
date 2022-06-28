# recursively post process all blocks in row

# process the current row
execute positioned ~ ~ ~ run execute unless block ~ ~ ~ minecraft:air run function pd_generation:rooms/post_processing/single_block

# raise the x coordinate
scoreboard players add %current_x pd_room_parameters 1

# call function again if the current x is still smaller than the size x
execute if score %current_x pd_room_parameters < %size pd_room_parameters positioned ~1 ~ ~ run function pd_generation:rooms/post_processing/all_blocks
