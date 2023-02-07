# make a general scoreboard for dimension numbering
scoreboard objectives add pd_dimensions dummy


# set the current region size of resets here (used for resetting the selected dimension)
scoreboard players set %reset_region_size pd_dimensions -1
# set the current dimension to be reset here (used for resetting the selected dimension)
scoreboard players reset %reset_dimension pd_dimensions
# set the target dimension for teleporting (used for teleporting self to target dimension)
scoreboard players reset %target_tp_dimension pd_dimensions
# set the current dimension (used for getting a number of this current dimension an entity is in)
scoreboard players reset %current_dimension pd_dimensions
# set the reset dimension (used for resetting a certain dimension)
scoreboard players reset %reset_dimension pd_dimensions

# boolean to indicate if reset is in progress
scoreboard players set %is_reset_in_progress pd_dimensions 0



# designate memory for where regions are that have to be reset (only if not designated already)
execute unless data storage procedural_dungeons:reset_regions to_be_reset run data modify storage procedural_dungeons:reset_regions to_be_reset set value []
data modify storage procedural_dungeons:reset_regions resetting set value []
data modify storage procedural_dungeons:reset_regions to_be_reset_backup set value []









### overworld ###
# set the dimension number
scoreboard players set %overworld pd_dimensions 0
# setup forceload for the dimension
execute in minecraft:overworld run function pd_dimensions:installation/setup_forceload_here


### bunny_jump ###
# set the dimension number
scoreboard players set %bunny_jump_world pd_dimensions 5
# setup forceload for the dimension
execute in pd_dimensions:bunny_jump_world run function pd_dimensions:installation/setup_forceload_here


### canyon ###
# set the dimension number
scoreboard players set %canyon_world pd_dimensions 4
# setup forceload for the dimension
execute in pd_dimensions:canyon_world run function pd_dimensions:installation/setup_forceload_here


### cave ###
# set the dimension number
scoreboard players set %cave_world pd_dimensions -2
# setup forceload for the dimension
execute in pd_dimensions:cave_world run function pd_dimensions:installation/setup_forceload_here


### desert ###
# set the dimension number
scoreboard players set %desert_world pd_dimensions 3
# setup forceload for the dimension
execute in pd_dimensions:desert_world run function pd_dimensions:installation/setup_forceload_here


### sewer ###
# set the dimension number
scoreboard players set %sewer_world pd_dimensions -3
# setup forceload for the dimension
execute in pd_dimensions:sewer_world run function pd_dimensions:installation/setup_forceload_here


### skyblock ###
# set the dimension number
scoreboard players set %skyblock_world pd_dimensions 2
# setup forceload for the dimension
execute in pd_dimensions:skyblock_world run function pd_dimensions:installation/setup_forceload_here


### mine ###
# set the dimension number
scoreboard players set %mine_world pd_dimensions -4
# setup forceload for the dimension
execute in pd_dimensions:mine_world run function pd_dimensions:installation/setup_forceload_here
