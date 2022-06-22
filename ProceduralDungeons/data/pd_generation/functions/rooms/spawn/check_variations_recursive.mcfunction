# check the first variation in the list

# load borders to scoreboard
execute store result score %border_n pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].north
execute store result score %border_s pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].south
execute store result score %border_e pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].east
execute store result score %border_w pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].west
execute store result score %is_start pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].start
execute store result score %is_ttt_only pd_room_parameters run data get storage procedural_dungeons:current_level all_variations_tmp[0].ttt_only

# compare to self
scoreboard players set %variation_fits pd_room_parameters 0
execute if score %is_start pd_room_parameters = %currently_start pd_room_parameters if score %border_n pd_room_parameters = @s pd_room_border_n if score %border_s pd_room_parameters = @s pd_room_border_s if score %border_e pd_room_parameters = @s pd_room_border_e if score %border_w pd_room_parameters = @s pd_room_border_w run scoreboard players set %variation_fits pd_room_parameters 1
execute if score %currently_start pd_room_parameters matches 1 run execute unless score %is_ttt_only pd_room_parameters = %currently_ttt pd_room_parameters run scoreboard players set %variation_fits pd_room_parameters 0

# add new variation marker if it fits
execute if score %variation_fits pd_room_parameters matches 1 run function pd_generation:rooms/spawn/add_new_variation_marker

# remove variation
data remove storage procedural_dungeons:current_level all_variations_tmp[0]

# maybe queue again
execute if data storage procedural_dungeons:current_level all_variations_tmp[0] run function pd_generation:rooms/spawn/check_variations_recursive
