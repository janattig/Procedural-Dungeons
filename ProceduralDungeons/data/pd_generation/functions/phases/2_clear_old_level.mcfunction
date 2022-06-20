# output
tellraw @a ["",{"text":"> "},{"text":"(2)","color":"blue"},{"text":": clearing old terrain"}]



# set the variable in the dimensions package
scoreboard players operation %reset_dimension pd_dimensions = %dimension pd_level_parameters
# let the chosen dimension reset
function pd_dimensions:reset_chosen_dimension

# print how many regions need to be reset
tellraw @a [{"text":"  > resetting ", "color":"gray"}, {"score":{"name":"%number_of_regions_to_reset","objective":"pd_dimensions"}, "color":"white"}, {"text":" regions ... ", "color":"gray"}]

# call a function to wait until the reset is done
function pd_generation:phases/misc/wait_for_level_reset
