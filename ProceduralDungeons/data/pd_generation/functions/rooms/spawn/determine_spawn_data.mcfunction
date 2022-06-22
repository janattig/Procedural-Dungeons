# executed as the room marker to find filename etc.

# copy all rooms to temporary list
data modify storage procedural_dungeons:current_level all_variations_tmp set from storage procedural_dungeons:current_level all_variations

# save data of current room (ttt and start)
scoreboard players set %currently_ttt pd_room_parameters 1
scoreboard players set %currently_start pd_room_parameters 0
execute as @s[tag=pd_start] run scoreboard players set %currently_start pd_room_parameters 1

# recursively check single variation if it fits
# summon new room_variation marker for each variation, fill highest priority
function pd_generation:rooms/spawn/check_variations_recursive

# remove temporary list
data remove storage procedural_dungeons:current_level all_variations_tmp


# choose one of the room variations (random)
function pd_generation:rooms/spawn/choose_variation


# copy data from the chosen marker to self
data modify entity @s data merge from entity @e[tag=pd_chosen, tag=pd_room_variation, limit=1, sort=nearest] data

# kill the last variation
kill @e[tag=pd_room_variation, distance=..1]
