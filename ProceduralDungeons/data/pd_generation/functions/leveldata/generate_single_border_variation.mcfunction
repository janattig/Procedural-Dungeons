# copy all four borders to scoreboard value
execute store result score %current pd_room_border run data get storage procedural_dungeons:current_level all_variations_tmp[0].north
function pd_generation:leveldata/check_current_border

execute store result score %current pd_room_border run data get storage procedural_dungeons:current_level all_variations_tmp[0].south
function pd_generation:leveldata/check_current_border

execute store result score %current pd_room_border run data get storage procedural_dungeons:current_level all_variations_tmp[0].east
function pd_generation:leveldata/check_current_border

execute store result score %current pd_room_border run data get storage procedural_dungeons:current_level all_variations_tmp[0].west
function pd_generation:leveldata/check_current_border
