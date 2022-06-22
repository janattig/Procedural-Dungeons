# reset the data
function pd_maps:maps/storage_access/reset_current_map



# set id (to later identify it in the generation process)
data modify storage procedural_dungeons:current_map id set value 5
# set the displayed name to modify the title of the map item
# items title will read "DISPLAY_NAME Map"
data modify storage procedural_dungeons:current_map display_name set value "Bunny Jump"
# set the map size
data modify storage procedural_dungeons:current_map min_x set value -1
data modify storage procedural_dungeons:current_map min_z set value -2
data modify storage procedural_dungeons:current_map max_x set value 1
data modify storage procedural_dungeons:current_map max_z set value 2

# map is a ttt map
data modify storage procedural_dungeons:current_map is_ttt set value 1



# finish the map, i.e. complete optional information and generate data for text
function pd_maps:maps/storage_access/finish_map

# give the actual map to self
loot give @s loot pd_maps:current_map
