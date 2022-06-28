# choose the room variation marker with the highest priority

# find out what the highest priority is
scoreboard players set %current_max pd_room_priority -1000000
tag @e[tag=pd_room_variation, distance=..1] remove pd_checked_priority
execute as @e[tag=pd_room_variation, tag=!pd_checked_priority, limit=1, distance=..1] run function pd_generation:rooms/variations/find_max_priority_recursive

# add tags to all rooms which are high priority
tag @e[tag=pd_room_variation, distance=..1] remove pd_high_priority
execute as @e[tag=pd_room_variation, distance=..1, sort=random] run execute if score @s pd_room_priority = %current_max pd_room_priority run tag @s add pd_high_priority

# kill all non-high priority rooms
kill @e[tag=pd_room_variation, distance=..1, tag=!pd_high_priority]
# choose randomly between the remaining ones
function pd_generation:rooms/variations/choose_random
