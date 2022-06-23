# reset the data
function pd_maps:maps/storage_access/reset_current_map

# seed the LCG random number generation
#function pd_math:rand/seed


# set id (to later identify it in the generation process)
data modify storage procedural_dungeons:current_map id set value 5
# set the displayed name to modify the title of the map item
# items title will read "DISPLAY_NAME Map"
data modify storage procedural_dungeons:current_map display_name set value "Bunny Jump"

# set the map size
scoreboard players set %extent_min pd_maps 4
scoreboard players set %extent_max pd_maps 7
function pd_maps:maps/storage_access/store_random_map_size

# map is a ttt map
data modify storage procedural_dungeons:current_map is_ttt set value 1



# finish the map, i.e. complete optional information and generate data for text
function pd_maps:maps/storage_access/finish_map

# give the actual map to self
loot give @s loot pd_maps:current_map
