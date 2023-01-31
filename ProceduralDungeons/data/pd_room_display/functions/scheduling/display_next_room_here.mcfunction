# select one random room of the matching ones
tag @e[tag=pd_room_variation, tag=matching,limit=1, distance=..1] add pd_current

# teleport the nearest player here (for loading)
tp @p ~ ~50 ~

# display this one
execute as @e[tag=pd_room_variation, tag=matching, limit=1, tag=pd_current, distance=..1] at @s run function pd_room_display:rooms/display_room_here

# schedule again
execute if entity @e[tag=matching, distance=..1] run schedule function pd_room_display:scheduling/display_next_room 5t
execute unless entity @e[tag=matching, distance=..1] if entity @e[tag=pd_room_variation, tag=pd_display] as @e[tag=pd_current_colum, limit=1] at @s run function pd_room_display:scheduling/setup_new_colum

# move other rooms over
execute as @e[tag=matching, distance=..1] at @s run function pd_room_display:markers/move_self_along_z
