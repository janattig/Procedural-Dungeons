# remove all new tags (that might be left over)
tag @e[tag=pd_display_new, distance=..1] remove pd_display_new

# summon a new variation marker
summon minecraft:marker ~ ~ ~ {Tags:["pd_room_variation", "pd_display_new", "pd_display"]}

# copy the nbt data to the variation marker
data modify entity @e[tag=pd_display_new, tag=pd_room_variation, limit=1, sort=nearest] data merge from storage procedural_dungeons:current_level all_variations_tmp[0]

# remove the new tag
tag @e[tag=pd_display_new, distance=..1] remove pd_display_new

# remove variation
data remove storage procedural_dungeons:current_level all_variations_tmp[0]

# maybe queue again
execute if data storage procedural_dungeons:current_level all_variations_tmp[0] run function pd_room_display:markers/summon_room_markers_recursive
