# function to reset the ENTIRE canyon world (according to data stored)
# works by this function scheduling itself again until all data is empty

# reset the first region in the region list
execute if score %has_been_modified pd_dimension_canyon matches 1 in pd_dimensions:canyon_world run function pd_dimensions:canyon_world/reset/reset_single_region

# check if has to be executed again
execute unless data storage pd_dimensions:canyon_world reset_regions[0] run scoreboard players set %has_been_modified pd_dimension_canyon 0

# call again if there are still regions to reset
execute if score %has_been_modified pd_dimension_canyon matches 1 run schedule function pd_dimensions:canyon_world/reset 1t
