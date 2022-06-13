# clear data storage
data modify storage pd_dimensions:regions resetting set value []
data modify storage pd_dimensions:regions to_be_reset_backup set value []

# add all regions of the chosen dimension to the "resetting" data storage list, every other entry to the "to_be_reset_backup" list
execute if data storage pd_dimensions:regions to_be_reset[0] run function pd_dimensions:reset/recursive_add_single_region_stack

# copy the backup list back to the to be reset list
data modify storage pd_dimensions:regions to_be_reset set from storage pd_dimensions:regions to_be_reset_backup
# empty the backup list again
data modify storage pd_dimensions:regions to_be_reset_backup set value []
