# reset the first element
execute if data storage procedural_dungeons:reset_regions resetting[0] run function pd_dimensions:reset/reset_single_stack_region
# remove the first element of the resetting list
execute if data storage procedural_dungeons:reset_regions resetting[0] run data remove storage procedural_dungeons:reset_regions resetting[0]

# queue again if necessary
execute if data storage procedural_dungeons:reset_regions resetting[0] run schedule function pd_dimensions:reset/reset_regions_in_stack_recursively 1t
# if not necessary, set the boolean to indicate clearing is done
execute unless data storage procedural_dungeons:reset_regions resetting[0] run scoreboard players set %is_reset_in_progress pd_dimensions 0
execute unless data storage procedural_dungeons:reset_regions resetting[0] run scoreboard players reset %number_of_regions_to_reset pd_dimensions
