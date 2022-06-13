# add forceloading to all 0 0 chunks in all worlds
execute in minecraft:overworld run forceload add ~ ~
execute in pd_dimensions:bunny_jump_world run forceload add ~ ~
execute in pd_dimensions:canyon_world run forceload add ~ ~
execute in pd_dimensions:cave_world run forceload add ~ ~
execute in pd_dimensions:desert_world run forceload add ~ ~
execute in pd_dimensions:sewer_world run forceload add ~ ~
execute in pd_dimensions:skyblock_world run forceload add ~ ~


# make a general scoreboard for dimension numbering
scoreboard objectives add pd_dimensions dummy


# designate memory for where regions are that have to be reset (only if not designated already)
execute unless data storage pd_dimensions:regions to_be_reset run data modify storage pd_dimensions:regions to_be_reset set value []
data modify storage pd_dimensions:regions resetting set value []
data modify storage pd_dimensions:regions to_be_reset_backup set value []






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




### overworld ###
# set the dimension number
scoreboard players set %overworld pd_dimensions 0
# forceload origin
execute in minecraft:overworld run forceload add ~ ~


### bunny_jump ###
# set the dimension number
scoreboard players set %bunny_jump_world pd_dimensions 5
# forceload origin
execute in pd_dimensions:bunny_jump_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:bunny_jump_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19


### canyon ###
# set the dimension number
scoreboard players set %canyon_world pd_dimensions 4
# forceload origin
execute in pd_dimensions:canyon_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:canyon_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19


### cave ###
# set the dimension number
scoreboard players set %cave_world pd_dimensions -2
# forceload origin
execute in pd_dimensions:cave_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:cave_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19


### desert ###
# set the dimension number
scoreboard players set %desert_world pd_dimensions 3
# forceload origin
execute in pd_dimensions:desert_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:desert_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19


### sewer ###
# set the dimension number
scoreboard players set %sewer_world pd_dimensions -3
# forceload origin
execute in pd_dimensions:sewer_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:sewer_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19


### skyblock ###
# set the dimension number
scoreboard players set %skyblock_world pd_dimensions 2
# forceload origin
execute in pd_dimensions:skyblock_world run forceload add ~ ~
# forceload the reset region (far outside origin)
execute in pd_dimensions:skyblock_world positioned 12300000 40 12300000 run forceload add ~ ~ ~19 ~19
