# decide for element 0 of the list where it goes

# temporary scoreboard to handle dimension
scoreboard players reset %tmp_var pd_dimensions

# read dimension of element 0
execute store result score %tmp_var pd_dimensions run data get storage procedural_dungeons:reset_regions to_be_reset[0][4] 1

# if the dimension is the chosen dimension for resetting, put it into the resetting list
execute if score %tmp_var pd_dimensions = %reset_dimension pd_dimensions run data modify storage procedural_dungeons:reset_regions resetting append from storage procedural_dungeons:reset_regions to_be_reset[0]
execute if score %tmp_var pd_dimensions = %reset_dimension pd_dimensions run scoreboard players add %number_of_regions_to_reset pd_dimensions 1
# if the dimension is the chosen dimension for resetting, put it into the backup list
execute unless score %tmp_var pd_dimensions = %reset_dimension pd_dimensions run data modify storage procedural_dungeons:reset_regions to_be_reset_backup append from storage procedural_dungeons:reset_regions to_be_reset[0]

# remove the 0th element of the list
data remove storage procedural_dungeons:reset_regions to_be_reset[0]

# reset tmp variable
scoreboard players reset %tmp_var pd_dimensions



# execute again if there is another element
execute if data storage procedural_dungeons:reset_regions to_be_reset[0] run function pd_dimensions:reset/recursive_add_single_region_stack
