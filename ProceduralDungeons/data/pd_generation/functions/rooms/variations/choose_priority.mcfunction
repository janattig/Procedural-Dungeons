# find out what the highest priority is
scoreboard players set %current_max pd_room_priority -1000000
execute as @e[tag=pd_room_variation, distance=..1, sort=random] run execute if score @s pd_room_priority >= %current_max pd_room_priority run scoreboard players operation %current_max pd_room_priority = @s pd_room_priority

# remove tags
tag @e[tag=pd_room_variation, distance=..1] remove pd_high_priority

# add tags to all rooms which are high priority
execute as @e[tag=pd_room_variation, distance=..1, sort=random] run execute if score @s pd_room_priority = %current_max pd_room_priority run tag @s add pd_high_priority

# kill all non-high priority rooms
kill @e[tag=pd_room_variation, distance=..1, tag=!pd_high_priority]

# choose randomly between the remaining ones
function pd_generation:rooms/variations/choose_random
