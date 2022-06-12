# setup file for the world

# add forceloading to the origin
execute in pd_dimensions:bunny_jump_world run forceload add ~ ~

# set the dimension number
scoreboard players set %bunny_jump_world pd_dimensions 5

# make a scoreboard only for dimension variables
scoreboard objectives add pd_dimension_bunny_jump dummy
# register certain variables
scoreboard players set %has_been_modified pd_dimension_bunny_jump 0


# designate memory for where rooms are (for later reset, only if not designated already)
execute unless data storage pd_dimensions:bunny_jump_world reset_regions run data modify storage pd_dimensions:bunny_jump_world reset_regions set value []
