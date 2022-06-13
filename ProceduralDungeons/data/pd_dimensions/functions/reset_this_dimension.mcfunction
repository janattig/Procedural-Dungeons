# set the current dimension scoreboard
function pd_dimensions:set_current_dimension_scoreboard

# copy the current dimension to the reset dimension
scoreboard players operation %reset_dimension pd_dimensions = %current_dimension pd_dimensions

# call to reset the chosen dimension
function pd_dimensions:reset_chosen_dimension
