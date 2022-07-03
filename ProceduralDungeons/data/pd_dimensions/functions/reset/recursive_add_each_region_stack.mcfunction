# put element 0 of the list where it goes

# if the dimension is the chosen dimension for resetting, put it into the resetting list
data modify storage procedural_dungeons:reset_regions resetting append from storage procedural_dungeons:reset_regions to_be_reset[0]
scoreboard players add %number_of_regions_to_reset pd_dimensions 1

# remove the 0th element of the list
data remove storage procedural_dungeons:reset_regions to_be_reset[0]


# execute again if there is another element
execute if data storage procedural_dungeons:reset_regions to_be_reset[0] run function pd_dimensions:reset/recursive_add_each_region_stack
