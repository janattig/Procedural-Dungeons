# prepare stack of only the chosen dimension
function pd_dimensions:reset/prepare_stack_chosen_dimension

# indicate that reset is in progress
scoreboard players set %is_reset_in_progress pd_dimensions 1

# reset all regions in the stack
schedule function pd_dimensions:reset/reset_regions_in_stack_recursively 1t
