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

# set the dimension number of overworld
scoreboard players set %overworld pd_dimensions 0

#scoreboard players set #overworld pdp_target_dim 0
#scoreboard players set #cave_world pdp_target_dim -2
#scoreboard players set #sewer_world pdp_target_dim -3
#scoreboard players set #skyblock_world pdp_target_dim 2
#scoreboard players set #desert_world pdp_target_dim 3
#scoreboard players set #canyon_world pdp_target_dim 4
#scoreboard players set #bunny_jump_world pdp_target_dim 5


# add a scoreboard for general dimension parameters
scoreboard objectives add pd_dimension_parameters dummy

# set the current region size of resets here
scoreboard players set %reset_region_size pd_dimension_parameters -1




# let individual worlds setup
function pd_dimensions:bunny_jump_world/setup
function pd_dimensions:canyon_world/setup
function pd_dimensions:cave_world/setup
