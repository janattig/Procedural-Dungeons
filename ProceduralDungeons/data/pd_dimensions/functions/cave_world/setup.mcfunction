# setup file for the world

# add forceloading to the origin
execute in pd_dimensions:cave_world run forceload add ~ ~

# set the dimension number
scoreboard players set %cave_world pd_dimensions -2

# make a scoreboard only for dimension variables
scoreboard objectives add pd_dimension_cave dummy
# register certain variables
scoreboard players set %has_been_modified pd_dimension_cave 0


# designate memory for where rooms are (for later reset)
data modify storage pd_dimensions:cave_world/reset regions_11x11 set value []
