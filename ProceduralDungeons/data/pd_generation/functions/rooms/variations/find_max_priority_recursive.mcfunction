# compare to maximum priority
execute if score @s pd_room_priority >= %current_max pd_room_priority run scoreboard players operation %current_max pd_room_priority = @s pd_room_priority

# indicate that itself is done
tag @s add pd_checked_priority

# call again
execute as @e[tag=pd_room_variation, tag=!pd_checked_priority, limit=1, distance=..1] run function pd_generation:rooms/variations/find_max_priority_recursive
