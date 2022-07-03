# clear data storage
data modify storage procedural_dungeons:reset_regions resetting set value []
data modify storage procedural_dungeons:reset_regions to_be_reset_backup set value []

# clear number of regions to reset (for information only)
scoreboard players reset %number_of_regions_to_reset pd_dimensions

# add all regions of the chosen dimension to the "resetting" data storage list, every other entry to the "to_be_reset_backup" list
execute if data storage procedural_dungeons:reset_regions to_be_reset[0] run function pd_dimensions:reset/recursive_add_each_region_stack

# copy the backup list back to the to be reset list
data modify storage procedural_dungeons:reset_regions to_be_reset set from storage procedural_dungeons:reset_regions to_be_reset_backup
# empty the backup list again
data modify storage procedural_dungeons:reset_regions to_be_reset_backup set value []
