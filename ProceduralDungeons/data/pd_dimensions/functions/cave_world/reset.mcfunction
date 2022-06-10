# function to reset the ENTIRE cave world (according to data stored)
# works by this function scheduling itself again until all data is empty

# reset the first region
execute if score %has_been_modified pd_dimension_cave matches 1 in pd_dimensions:cave_world run function pd_dimensions:cave_world/reset/reset_single_region

# check if has to be executed again
execute unless data storage pd_dimensions:cave_world reset_regions[0] run scoreboard players set %has_been_modified pd_dimension_cave 0

# call again if there are still regions to reset
execute if score %has_been_modified pd_dimension_cave matches 1 run schedule function pd_dimensions:cave_world/reset 1t
# purge all entities if no recall is needed
execute if score %has_been_modified pd_dimension_cave matches 0 run execute in pd_dimensions:cave_world run function pd_dimensions:purge_entities_in_current_dimension
