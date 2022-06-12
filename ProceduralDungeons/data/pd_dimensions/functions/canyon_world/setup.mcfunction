# setup file for the world

# add forceloading to the origin
execute in pd_dimensions:canyon_world run forceload add ~ ~

# set the dimension number
scoreboard players set %canyon_world pd_dimensions 4

# make a scoreboard only for dimension variables
scoreboard objectives add pd_dimension_canyon dummy
# register certain variables
scoreboard players set %has_been_modified pd_dimension_canyon 0


# designate memory for where rooms are (for later reset, only if not designated already)
execute unless data storage pd_dimensions:canyon_world reset_regions run data modify storage pd_dimensions:canyon_world reset_regions set value []
