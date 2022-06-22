# reset the data
function pd_maps:maps/storage_access/reset_current_map

# set id (to later identify it in the generation process)
data modify storage procedural_dungeons:current_map id set value 5
# set the displayed name (only for the text on the map item)
data modify storage procedural_dungeons:current_map display_name set value "Bunny Jump"
# set the size
data modify storage procedural_dungeons:current_map min_x set value -1
data modify storage procedural_dungeons:current_map min_z set value -2
data modify storage procedural_dungeons:current_map max_x set value 1
data modify storage procedural_dungeons:current_map max_z set value 2


# give the actual map to self
loot give @s loot pd_maps:current_map
